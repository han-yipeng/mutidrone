#include <iostream>
#include <fstream>
#include <algorithm>
#include <array>
#include <limits>
#include <math.h>
#include <pcl_conversions/pcl_conversions.h>
#include <pcl/point_cloud.h>
#include <pcl/point_types.h>
#include <ros/ros.h>
#include <ros/console.h>
#include <sensor_msgs/PointCloud2.h>
#include <ctime>
#include <Eigen/Geometry>

#include <nav_msgs/Odometry.h>
#include <nav_msgs/Path.h>
#include <geometry_msgs/PoseStamped.h>
#include <visualization_msgs/MarkerArray.h>
#include <visualization_msgs/Marker.h>
#include "quadrotor_msgs/PolyTraj.h"
#include "quadrotor_msgs/AstarPath.h"
#include "quadrotor_msgs/LoadCorridor.h"

#include "Astar.h"

using namespace std;
using namespace Eigen;

//分辨率、分辨率倒数、未知？？？
double _resolution, _inv_resolution, _cloud_margin;

//世界坐标系(单位m)下，整个点云地图的长、宽、高
double _x_size, _y_size, _z_size;

//世界坐标系(单位m)下，搜索范围内的最大与最小的x、y、z
double _search_x_max, _search_x_min, _search_y_max, _search_y_min, _search_z_max, _search_z_min;

//栅格坐标系(与世界坐标系相差分辨率)下，整个点云地图的长、宽、高
int _max_x_id, _max_y_id, _max_z_id;

//起点坐标 世界坐标系(单位m)
Vector3d _start_pt, _target_pt, target_pt_Exp_Tmp;
bool _has_start_pt  = false;
bool _is_replan     = false;
int replan_num = 1;

//地图三轴最小和最大尺寸 世界坐标系(单位m)
Vector3d _map_lower, _map_upper;

//搜索三轴最小和最大尺寸 世界坐标系(单位m)
Vector3d _search_lower, _search_upper;

std::string _distance;
std::string _envelope_log_path;
int _wayPointSplitNum;
double _tar_ang;
double _weight_a,_weight_b,_weight_angle,_weight_clearance,_weight_smooth;
double _safety_clearance,_length,_max_angle,_min_angle;
int _angle_resolution,_max_angle_step;
bool _enforce_boundary_angle;
double _boundary_angle_pi;
bool _check_transition;
double _transition_position_step, _transition_angle_step_deg;
bool _enable_envelope_log;
bool _enable_load_corridor;
bool _enforce_system_clearance;
double _load_corridor_clearance;
double _load_corridor_segment_length;
double _load_corridor_min_segment_length;
double _load_corridor_longitudinal_overlap;
double _load_corridor_complexity_radius;
double _load_corridor_clearance_weight;
double _load_corridor_density_weight;
double _load_corridor_min_extent;
double _load_corridor_max_extent;
double _load_corridor_extent_gain;
double _load_corridor_payload_radius;
double _load_corridor_cable_radius;
double _load_corridor_drone_radius;
double _load_corridor_bridge_safety_factor;
double _load_corridor_min_overlap_radius;
double _load_corridor_ellipsoid_transverse_scale;
double _load_corridor_ellipsoid_max_longitudinal_radius;
bool _enable_corridor_path_smoothing;
int _corridor_smoothing_iterations;
double _corridor_smoothing_position_gain;
double _corridor_smoothing_angle_gain;
double _corridor_smoothing_max_deviation;
double _corridor_smoothing_min_clearance;

std::vector<Eigen::Vector3d> _map_obstacle_points;
std::vector<Eigen::Vector3d> _load_corridor_uncovered_points;
size_t _load_corridor_continuity_bridge_count = 0;
size_t _load_corridor_unresolved_gap_count = 0;
double _load_corridor_min_observed_overlap_radius = 0.0;


ros::Subscriber _map_sub;               //点云地图的接收者
ros::Subscriber _pts_sub;               //终点坐标的接收者
ros::Subscriber _trans_goal_sub;
ros::Subscriber _polyTrajSub;

ros::Publisher  _grid_path_vis_pub;     //发布Astar找到的路径
ros::Publisher  _visited_nodes_vis_pub; //发布OpenList/CloseList的方格
ros::Publisher  _grid_map_vis_pub;      //发布点云地图
ros::Publisher  _start_point_vis_pub;
ros::Publisher  _target_point_vis_pub;
ros::Publisher  _transport_vis_pub;
ros::Publisher  _configuration_path_pub;
ros::Publisher  _load_corridor_vis_pub;
ros::Publisher  _load_corridor_data_pub;
ros::Publisher  _line_strip_pub;
ros::Publisher  _replay_pt_pub;

double rvizPointID = 0;

//Astar算法的对象指针
AstarPathFinder * _astar_path_finder     = NULL;

//标志位，确保先有地图再有终点坐标
bool _has_map   = false;

// 是否采用实验模式
bool _isExp;
bool _isReplanMode;
bool _isReplanDemo1;
bool _isReplanDemo2;
bool _isNarrowSlitMode;
double _time_ahead;

ros::Time time_replan;
double time_all;

bool getTmpGoal = false;

int piece_nums;
quadrotor_msgs::PolyTraj trajmsg;

void pathFinding(const Vector3d start_pt, const Vector3d target_pt);

void clearMarkers()
{
    visualization_msgs::MarkerArray marker_array;
    visualization_msgs::Marker marker;
    marker.action = visualization_msgs::Marker::DELETEALL;
    marker_array.markers.push_back(marker);
    _transport_vis_pub.publish(marker_array);
}

void clearLoadCorridor()
{
    visualization_msgs::MarkerArray marker_array;
    visualization_msgs::Marker marker;
    marker.action = visualization_msgs::Marker::DELETEALL;
    marker_array.markers.push_back(marker);
    _load_corridor_vis_pub.publish(marker_array);
}

struct CorridorPlane
{
    Eigen::Vector3d normal;
    double offset;
};

struct LoadCorridorPolytope
{
    std::vector<CorridorPlane> planes;
    std::vector<Eigen::Vector3d> vertices;
    double complexity;
    double path_length;
    double local_extent;
    double minimum_system_margin;
    double maximum_system_margin;
    bool clearance_fallback;
    bool clearance_bridge;
    size_t path_begin;
    size_t path_end;
};

struct CorridorPathState
{
    Eigen::Vector3d position;
    double angle_rad;
};

std::vector<CorridorPathState> _load_corridor_guide_path;
size_t _corridor_smoothing_attempts = 0;
size_t _corridor_smoothing_accepted = 0;
double _corridor_original_path_length = 0.0;
double _corridor_smoothed_path_length = 0.0;
double _corridor_original_max_turn_deg = 0.0;
double _corridor_smoothed_max_turn_deg = 0.0;

double corridorPathLength(const std::vector<CorridorPathState> &path)
{
    double length = 0.0;
    for (size_t i = 1; i < path.size(); ++i)
    {
        length += (path[i].position - path[i - 1].position).norm();
    }
    return length;
}

double corridorMaxTurnDeg(const std::vector<CorridorPathState> &path)
{
    double maximum_turn = 0.0;
    for (size_t i = 1; i + 1 < path.size(); ++i)
    {
        const Eigen::Vector3d incoming = path[i].position - path[i - 1].position;
        const Eigen::Vector3d outgoing = path[i + 1].position - path[i].position;
        if (incoming.norm() < 1.0e-8 || outgoing.norm() < 1.0e-8)
        {
            continue;
        }
        const double cosine = std::max(
            -1.0, std::min(1.0,
                           incoming.dot(outgoing) /
                               (incoming.norm() * outgoing.norm())));
        maximum_turn = std::max(maximum_turn,
                                std::acos(cosine) * 180.0 / M_PI);
    }
    return maximum_turn;
}

std::vector<CorridorPathState> smoothCorridorGuidePath(
    const std::vector<CorridorPathState> &input)
{
    _corridor_smoothing_attempts = 0;
    _corridor_smoothing_accepted = 0;
    _corridor_original_path_length = corridorPathLength(input);
    _corridor_original_max_turn_deg = corridorMaxTurnDeg(input);

    std::vector<CorridorPathState> path = input;
    if (!_enable_corridor_path_smoothing || path.size() < 3)
    {
        _corridor_smoothed_path_length = _corridor_original_path_length;
        _corridor_smoothed_max_turn_deg = _corridor_original_max_turn_deg;
        return path;
    }

    const int iterations = std::max(0, _corridor_smoothing_iterations);
    for (int iteration = 0; iteration < iterations; ++iteration)
    {
        const std::vector<CorridorPathState> previous = path;
        size_t accepted_this_iteration = 0;
        for (size_t i = 1; i + 1 < path.size(); ++i)
        {
            const Eigen::Vector3d position_average =
                0.5 * (previous[i - 1].position + previous[i + 1].position);
            const double angle_average =
                0.5 * (previous[i - 1].angle_rad + previous[i + 1].angle_rad);
            const Eigen::Vector3d position_delta =
                _corridor_smoothing_position_gain *
                (position_average - previous[i].position);
            const double angle_delta =
                _corridor_smoothing_angle_gain *
                (angle_average - previous[i].angle_rad);
            if (position_delta.norm() < 1.0e-9 &&
                std::abs(angle_delta) < 1.0e-9)
            {
                continue;
            }
            ++_corridor_smoothing_attempts;

            bool accepted = false;
            for (int backtrack = 0; backtrack < 5; ++backtrack)
            {
                const double step = std::pow(0.5, backtrack);
                CorridorPathState candidate;
                candidate.position = previous[i].position + step * position_delta;
                candidate.angle_rad = std::max(
                    _min_angle * M_PI,
                    std::min(_max_angle * M_PI,
                             previous[i].angle_rad + step * angle_delta));
                if ((candidate.position - input[i].position).norm() >
                    _corridor_smoothing_max_deviation)
                {
                    continue;
                }

                const double candidate_angle_deg =
                    candidate.angle_rad * 180.0 / M_PI;
                double state_clearance = 0.0;
                if (!_astar_path_finder->checkConfigurationAtPosition(
                        candidate.position, candidate_angle_deg,
                        state_clearance) ||
                    state_clearance + 1.0e-9 <
                        _corridor_smoothing_min_clearance)
                {
                    continue;
                }

                double incoming_clearance = 0.0;
                double outgoing_clearance = 0.0;
                const CorridorPathState &accepted_previous = path[i - 1];
                const CorridorPathState &unchanged_next = previous[i + 1];
                if (!_astar_path_finder->checkConfigurationTransition(
                        accepted_previous.position,
                        accepted_previous.angle_rad * 180.0 / M_PI,
                        candidate.position, candidate_angle_deg,
                        incoming_clearance) ||
                    !_astar_path_finder->checkConfigurationTransition(
                        candidate.position, candidate_angle_deg,
                        unchanged_next.position,
                        unchanged_next.angle_rad * 180.0 / M_PI,
                        outgoing_clearance) ||
                    std::min(incoming_clearance, outgoing_clearance) + 1.0e-9 <
                        _corridor_smoothing_min_clearance)
                {
                    continue;
                }

                path[i] = candidate;
                accepted = true;
                break;
            }

            if (accepted)
            {
                ++_corridor_smoothing_accepted;
                ++accepted_this_iteration;
            }
        }
        if (accepted_this_iteration == 0)
        {
            break;
        }
    }

    for (size_t i = 1; i < path.size(); ++i)
    {
        double clearance = 0.0;
        if (!_astar_path_finder->checkConfigurationTransition(
                path[i - 1].position,
                path[i - 1].angle_rad * 180.0 / M_PI,
                path[i].position,
                path[i].angle_rad * 180.0 / M_PI,
                clearance) ||
            clearance + 1.0e-9 < _corridor_smoothing_min_clearance)
        {
            ROS_WARN("Corridor guide smoothing rejected: final transition %zu is unsafe. "
                     "Using the original A* guide path.", i - 1);
            path = input;
            _corridor_smoothing_accepted = 0;
            break;
        }
    }

    _corridor_smoothed_path_length = corridorPathLength(path);
    _corridor_smoothed_max_turn_deg = corridorMaxTurnDeg(path);
    return path;
}

geometry_msgs::Point toGeometryPoint(const Eigen::Vector3d &point)
{
    geometry_msgs::Point result;
    result.x = point(0);
    result.y = point(1);
    result.z = point(2);
    return result;
}

void addCorridorPlane(LoadCorridorPolytope &polytope,
                      const Eigen::Vector3d &normal,
                      const double offset)
{
    const double norm = normal.norm();
    if (norm > 1.0e-9)
    {
        polytope.planes.push_back({normal / norm, offset / norm});
    }
}

bool pointInsidePolytope(const LoadCorridorPolytope &polytope,
                         const Eigen::Vector3d &point,
                         const double tolerance = 1.0e-7)
{
    for (const auto &plane : polytope.planes)
    {
        if (plane.normal.dot(point) > plane.offset + tolerance)
        {
            return false;
        }
    }
    return true;
}

double polytopeIntersectionRadius(const LoadCorridorPolytope &first,
                                  const LoadCorridorPolytope &second,
                                  Eigen::Vector3d *maximum_center = nullptr)
{
    std::vector<CorridorPlane> planes = first.planes;
    planes.insert(planes.end(), second.planes.begin(), second.planes.end());
    if (planes.size() < 4)
    {
        return -1.0;
    }

    double maximum_radius = -1.0;
    const double feasibility_tolerance = 1.0e-7;
    for (size_t i = 0; i + 3 < planes.size(); ++i)
    {
        for (size_t j = i + 1; j + 2 < planes.size(); ++j)
        {
            for (size_t k = j + 1; k + 1 < planes.size(); ++k)
            {
                for (size_t l = k + 1; l < planes.size(); ++l)
                {
                    Eigen::Matrix4d matrix;
                    Eigen::Vector4d offsets;
                    const std::array<size_t, 4> indices = {i, j, k, l};
                    for (size_t row = 0; row < indices.size(); ++row)
                    {
                        matrix.block<1, 3>(row, 0) =
                            planes[indices[row]].normal.transpose();
                        matrix(row, 3) = 1.0;
                        offsets(row) = planes[indices[row]].offset;
                    }
                    const Eigen::FullPivLU<Eigen::Matrix4d> decomposition(matrix);
                    if (!decomposition.isInvertible())
                    {
                        continue;
                    }
                    const Eigen::Vector4d solution = decomposition.solve(offsets);
                    const Eigen::Vector3d center = solution.head<3>();
                    const double radius = solution(3);
                    if (!solution.allFinite() || radius < -feasibility_tolerance ||
                        radius <= maximum_radius)
                    {
                        continue;
                    }

                    bool feasible = true;
                    for (const auto &plane : planes)
                    {
                        if (plane.normal.dot(center) + radius >
                            plane.offset + feasibility_tolerance)
                        {
                            feasible = false;
                            break;
                        }
                    }
                    if (feasible)
                    {
                        maximum_radius = std::max(0.0, radius);
                        if (maximum_center != nullptr)
                        {
                            *maximum_center = center;
                        }
                    }
                }
            }
        }
    }
    return maximum_radius;
}

Eigen::Matrix3d transitionEllipsoidShape(
    const LoadCorridorPolytope &first,
    const LoadCorridorPolytope &second,
    const Eigen::Vector3d &center,
    const Eigen::Vector3d &tangent,
    const double inscribed_radius,
    double &longitudinal_radius,
    double &transverse_radius)
{
    Eigen::Vector3d direction = tangent;
    if (direction.norm() < 1.0e-8)
        direction = Eigen::Vector3d::UnitX();
    direction.normalize();

    transverse_radius = std::max(
        1.0e-4, _load_corridor_ellipsoid_transverse_scale * inscribed_radius);
    longitudinal_radius = std::max(
        transverse_radius, _load_corridor_ellipsoid_max_longitudinal_radius);

    std::vector<CorridorPlane> planes = first.planes;
    planes.insert(planes.end(), second.planes.begin(), second.planes.end());
    for (const auto &plane : planes)
    {
        const double slack = plane.offset - plane.normal.dot(center);
        const double tangent_projection = plane.normal.dot(direction);
        const double alpha = tangent_projection * tangent_projection;
        if (slack <= 0.0)
        {
            longitudinal_radius = transverse_radius;
            break;
        }
        if (alpha > 1.0e-10)
        {
            const double transverse_support_squared =
                transverse_radius * transverse_radius * (1.0 - alpha);
            const double available = slack * slack - transverse_support_squared;
            if (available <= 0.0)
            {
                longitudinal_radius = transverse_radius;
                break;
            }
            longitudinal_radius = std::min(
                longitudinal_radius, std::sqrt(available / alpha));
        }
    }
    longitudinal_radius = std::max(transverse_radius, longitudinal_radius);
    return transverse_radius * Eigen::Matrix3d::Identity() +
           (longitudinal_radius - transverse_radius) *
               direction * direction.transpose();
}

std::vector<LoadCorridorPolytope> compressLoadCorridor(
    const std::vector<LoadCorridorPolytope> &input)
{
    std::vector<LoadCorridorPolytope> corridor = input;
    if (corridor.size() < 3)
    {
        return corridor;
    }

    bool removed = true;
    while (removed)
    {
        removed = false;
        for (size_t i = 1; i + 1 < corridor.size(); ++i)
        {
            const double bypass_overlap = polytopeIntersectionRadius(
                corridor[i - 1], corridor[i + 1]);
            if (bypass_overlap + 1.0e-9 >=
                _load_corridor_min_overlap_radius)
            {
                corridor.erase(corridor.begin() + i);
                removed = true;
                break;
            }
        }
    }
    return corridor;
}

Eigen::Vector3d closestPointOnPath(const std::vector<CorridorPathState> &path,
                                   const size_t begin,
                                   const size_t end,
                                   const Eigen::Vector3d &query,
                                   double &distance)
{
    Eigen::Vector3d closest = path[begin].position;
    distance = (query - closest).norm();
    for (size_t i = begin; i < end; ++i)
    {
        const Eigen::Vector3d delta = path[i + 1].position - path[i].position;
        const double denominator = delta.squaredNorm();
        const double alpha = denominator > 1.0e-12
            ? std::max(0.0, std::min(1.0,
                  delta.dot(query - path[i].position) / denominator))
            : 0.0;
        const Eigen::Vector3d candidate = path[i].position + alpha * delta;
        const double candidate_distance = (query - candidate).norm();
        if (candidate_distance < distance)
        {
            distance = candidate_distance;
            closest = candidate;
        }
    }
    return closest;
}

void corridorRangeMetrics(const std::vector<CorridorPathState> &path,
                          const size_t begin,
                          const size_t end,
                          double &minimum_clearance,
                          double &occupancy_ratio,
                          double &complexity)
{
    minimum_clearance = std::numeric_limits<double>::infinity();
    occupancy_ratio = 0.0;
    for (size_t i = begin; i <= end; ++i)
    {
        double configuration_clearance = 0.0;
        const bool configuration_safe =
            _astar_path_finder->checkConfigurationAtPosition(
                path[i].position,
                path[i].angle_rad * 180.0 / M_PI,
                configuration_clearance);
        minimum_clearance = std::min(
            minimum_clearance,
            configuration_safe ? configuration_clearance : 0.0);
        occupancy_ratio += _astar_path_finder->getLocalOccupancyRatio(
            path[i].position, _load_corridor_complexity_radius);
    }
    occupancy_ratio /= double(end - begin + 1);
    const double bounded_clearance = std::isfinite(minimum_clearance)
        ? minimum_clearance
        : _load_corridor_max_extent;
    complexity = _load_corridor_clearance_weight /
                     std::max(bounded_clearance + _resolution, 1.0e-3)
               + _load_corridor_density_weight * occupancy_ratio;
}

double systemEnvelopeSupport(const Eigen::Vector3d &normal,
                             const double angle_rad)
{
    const int height = std::max(
        1, static_cast<int>(std::ceil(_length * std::cos(angle_rad) /
                                     _resolution)));
    double support = -std::numeric_limits<double>::infinity();
    for (int layer = 0; layer <= height; ++layer)
    {
        const int width = static_cast<int>(std::ceil(
            _length * std::sin(angle_rad) / _resolution *
            double(layer + 1) / double(height)));
        const double minimum_xy = -(width / 2) * _resolution;
        const double maximum_xy = (width - width / 2) * _resolution;
        const double x = normal(0) >= 0.0 ? maximum_xy : minimum_xy;
        const double y = normal(1) >= 0.0 ? maximum_xy : minimum_xy;

        double physical_radius = _load_corridor_cable_radius;
        if (layer == 0)
        {
            physical_radius = std::max(
                physical_radius, _load_corridor_payload_radius);
        }
        if (layer == height)
        {
            physical_radius = std::max(
                physical_radius, _load_corridor_drone_radius);
        }
        support = std::max(
            support,
            normal.dot(Eigen::Vector3d(x, y, layer * _resolution))
                + physical_radius);
    }
    return support;
}

double rangeSystemEnvelopeSupport(const std::vector<CorridorPathState> &path,
                                  const size_t begin,
                                  const size_t end,
                                  const Eigen::Vector3d &normal)
{
    double minimum_angle = std::numeric_limits<double>::infinity();
    double maximum_angle = -std::numeric_limits<double>::infinity();
    for (size_t i = begin; i <= end; ++i)
    {
        minimum_angle = std::min(minimum_angle, path[i].angle_rad);
        maximum_angle = std::max(maximum_angle, path[i].angle_rad);
    }

    double support = 0.0;
    const double angle_step = 0.5 * M_PI / 180.0;
    for (double angle = minimum_angle; angle < maximum_angle; angle += angle_step)
    {
        support = std::max(support, systemEnvelopeSupport(normal, angle));
    }
    return std::max(support,
                    systemEnvelopeSupport(normal, maximum_angle));
}

bool computePolytopeVertices(LoadCorridorPolytope &polytope)
{
    polytope.vertices.clear();
    const size_t plane_count = polytope.planes.size();
    for (size_t i = 0; i < plane_count; ++i)
    {
        for (size_t j = i + 1; j < plane_count; ++j)
        {
            for (size_t k = j + 1; k < plane_count; ++k)
            {
                Eigen::Matrix3d matrix;
                matrix.row(0) = polytope.planes[i].normal.transpose();
                matrix.row(1) = polytope.planes[j].normal.transpose();
                matrix.row(2) = polytope.planes[k].normal.transpose();
                if (std::abs(matrix.determinant()) < 1.0e-8)
                {
                    continue;
                }
                const Eigen::Vector3d offsets(
                    polytope.planes[i].offset,
                    polytope.planes[j].offset,
                    polytope.planes[k].offset);
                const Eigen::Vector3d vertex = matrix.fullPivLu().solve(offsets);
                if (!pointInsidePolytope(polytope, vertex, 1.0e-5))
                {
                    continue;
                }
                bool duplicate = false;
                for (const auto &existing : polytope.vertices)
                {
                    if ((existing - vertex).norm() < 1.0e-4)
                    {
                        duplicate = true;
                        break;
                    }
                }
                if (!duplicate)
                {
                    polytope.vertices.push_back(vertex);
                }
            }
        }
    }
    return polytope.vertices.size() >= 4;
}

bool generateLoadPolytope(const std::vector<CorridorPathState> &path,
                          const size_t begin,
                          const size_t end,
                          LoadCorridorPolytope &polytope)
{
    polytope.planes.clear();
    polytope.vertices.clear();
    polytope.clearance_fallback = false;
    polytope.clearance_bridge = false;
    polytope.minimum_system_margin = std::numeric_limits<double>::infinity();
    polytope.maximum_system_margin = 0.0;
    double minimum_clearance = 0.0;
    double occupancy_ratio = 0.0;
    corridorRangeMetrics(path, begin, end,
                         minimum_clearance, occupancy_ratio, polytope.complexity);
    if (minimum_clearance <= 1.0e-4)
    {
        return false;
    }

    polytope.path_length = 0.0;
    for (size_t i = begin; i < end; ++i)
    {
        polytope.path_length +=
            (path[i + 1].position - path[i].position).norm();
    }
    polytope.local_extent = std::max(
        _load_corridor_min_extent,
        std::min(_load_corridor_max_extent,
                 _load_corridor_extent_gain * minimum_clearance /
                     (1.0 + _load_corridor_density_weight * occupancy_ratio)));

    Eigen::Vector3d tangent = path[end].position - path[begin].position;
    if (tangent.norm() < 1.0e-6)
    {
        if (end + 1 < path.size())
        {
            tangent = path[end + 1].position - path[begin].position;
        }
        else if (begin > 0)
        {
            tangent = path[begin].position - path[begin - 1].position;
        }
        else
        {
            tangent = Eigen::Vector3d::UnitX();
        }
    }
    tangent.normalize();
    const Eigen::Vector3d reference =
        std::abs(tangent.dot(Eigen::Vector3d::UnitZ())) < 0.9
            ? Eigen::Vector3d::UnitZ()
            : Eigen::Vector3d::UnitY();
    const Eigen::Vector3d lateral = reference.cross(tangent).normalized();
    const Eigen::Vector3d normal = tangent.cross(lateral).normalized();

    double tangent_min = std::numeric_limits<double>::infinity();
    double tangent_max = -std::numeric_limits<double>::infinity();
    double lateral_min = std::numeric_limits<double>::infinity();
    double lateral_max = -std::numeric_limits<double>::infinity();
    double normal_min = std::numeric_limits<double>::infinity();
    double normal_max = -std::numeric_limits<double>::infinity();
    for (size_t i = begin; i <= end; ++i)
    {
        tangent_min = std::min(tangent_min, tangent.dot(path[i].position));
        tangent_max = std::max(tangent_max, tangent.dot(path[i].position));
        lateral_min = std::min(lateral_min, lateral.dot(path[i].position));
        lateral_max = std::max(lateral_max, lateral.dot(path[i].position));
        normal_min = std::min(normal_min, normal.dot(path[i].position));
        normal_max = std::max(normal_max, normal.dot(path[i].position));
    }

    addCorridorPlane(polytope, Eigen::Vector3d::UnitX(), _search_x_max);
    addCorridorPlane(polytope, -Eigen::Vector3d::UnitX(), -_search_x_min);
    addCorridorPlane(polytope, Eigen::Vector3d::UnitY(), _search_y_max);
    addCorridorPlane(polytope, -Eigen::Vector3d::UnitY(), -_search_y_min);
    addCorridorPlane(polytope, Eigen::Vector3d::UnitZ(), _search_z_max);
    addCorridorPlane(polytope, -Eigen::Vector3d::UnitZ(), -_search_z_min);
    addCorridorPlane(polytope, tangent,
                     tangent_max + _load_corridor_longitudinal_overlap);
    addCorridorPlane(polytope, -tangent,
                     -tangent_min + _load_corridor_longitudinal_overlap);
    addCorridorPlane(polytope, lateral,
                     lateral_max + polytope.local_extent);
    addCorridorPlane(polytope, -lateral,
                     -lateral_min + polytope.local_extent);
    addCorridorPlane(polytope, normal,
                     normal_max + polytope.local_extent);
    addCorridorPlane(polytope, -normal,
                     -normal_min + polytope.local_extent);
    const size_t initial_plane_count = polytope.planes.size();

    struct ObstacleCandidate
    {
        double distance;
        Eigen::Vector3d point;
        Eigen::Vector3d closest;
    };
    std::vector<ObstacleCandidate> candidates;
    candidates.reserve(_map_obstacle_points.size());
    const double obstacle_query_margin = _length
        + _load_corridor_drone_radius + _load_corridor_clearance;
    for (const auto &obstacle : _map_obstacle_points)
    {
        bool near_initial_region = true;
        for (size_t i = 0; i < initial_plane_count; ++i)
        {
            if (polytope.planes[i].normal.dot(obstacle) >
                polytope.planes[i].offset + obstacle_query_margin)
            {
                near_initial_region = false;
                break;
            }
        }
        if (!near_initial_region)
        {
            continue;
        }

        double distance = 0.0;
        const Eigen::Vector3d closest = closestPointOnPath(
            path, begin, end, obstacle, distance);
        candidates.push_back({distance, obstacle, closest});
    }
    std::sort(candidates.begin(), candidates.end(),
              [](const ObstacleCandidate &lhs, const ObstacleCandidate &rhs)
              {
                  return lhs.distance < rhs.distance;
              });

    for (const auto &candidate : candidates)
    {
        bool already_excluded = false;
        for (size_t i = 0; i < polytope.planes.size(); ++i)
        {
            const double occupied_margin = rangeSystemEnvelopeSupport(
                path, begin, end, polytope.planes[i].normal)
                + _load_corridor_clearance;
            if (polytope.planes[i].normal.dot(candidate.point) >=
                polytope.planes[i].offset + occupied_margin - 1.0e-7)
            {
                already_excluded = true;
                break;
            }
        }
        if (already_excluded || candidate.distance < 1.0e-8)
        {
            continue;
        }

        std::array<Eigen::Vector3d, 7> candidate_normals = {
            (candidate.point - candidate.closest).normalized(),
            Eigen::Vector3d::UnitX(), -Eigen::Vector3d::UnitX(),
            Eigen::Vector3d::UnitY(), -Eigen::Vector3d::UnitY(),
            Eigen::Vector3d::UnitZ(), -Eigen::Vector3d::UnitZ()};
        Eigen::Vector3d separating_normal = candidate_normals[0];
        double system_margin = 0.0;
        double maximum_path_projection = 0.0;
        double best_separation = -std::numeric_limits<double>::infinity();
        for (const auto &normal_candidate : candidate_normals)
        {
            double path_projection = -std::numeric_limits<double>::infinity();
            for (size_t i = begin; i <= end; ++i)
            {
                path_projection = std::max(
                    path_projection, normal_candidate.dot(path[i].position));
            }
            const double margin_candidate = rangeSystemEnvelopeSupport(
                path, begin, end, normal_candidate) + _load_corridor_clearance;
            const double separation = normal_candidate.dot(candidate.point)
                                    - path_projection - margin_candidate;
            if (separation > best_separation)
            {
                best_separation = separation;
                separating_normal = normal_candidate;
                maximum_path_projection = path_projection;
                system_margin = margin_candidate;
            }
        }
        const double obstacle_projection = separating_normal.dot(candidate.point);
        if (best_separation < -1.0e-7)
        {
            return false;
        }
        addCorridorPlane(polytope, separating_normal,
                         obstacle_projection - system_margin);
        polytope.minimum_system_margin = std::min(
            polytope.minimum_system_margin, system_margin);
        polytope.maximum_system_margin = std::max(
            polytope.maximum_system_margin, system_margin);
    }

    if (!std::isfinite(polytope.minimum_system_margin))
    {
        polytope.minimum_system_margin = _load_corridor_clearance;
        polytope.maximum_system_margin = _load_corridor_clearance;
    }

    return computePolytopeVertices(polytope);
}

bool generateClearanceFallbackPolytope(
    const CorridorPathState &state,
    LoadCorridorPolytope &polytope)
{
    const double angle_deg = state.angle_rad * 180.0 / M_PI;
    double residual_clearance = 0.0;
    if (!_astar_path_finder->checkConfigurationAtPosition(
            state.position, angle_deg, residual_clearance) ||
        !std::isfinite(residual_clearance) || residual_clearance <= 1.0e-4)
    {
        return false;
    }

    // A cube with this half extent lies strictly inside the residual-clearance
    // ball, so translating the complete discrete envelope within it stays safe.
    const double half_extent = 0.8 * residual_clearance / std::sqrt(3.0);
    polytope.planes.clear();
    polytope.vertices.clear();
    polytope.complexity = 1.0 / std::max(residual_clearance, 1.0e-3);
    polytope.path_length = 0.0;
    polytope.local_extent = half_extent;
    polytope.minimum_system_margin = residual_clearance;
    polytope.maximum_system_margin = residual_clearance;
    polytope.clearance_fallback = true;
    polytope.clearance_bridge = false;
    addCorridorPlane(polytope, Eigen::Vector3d::UnitX(),
                     state.position(0) + half_extent);
    addCorridorPlane(polytope, -Eigen::Vector3d::UnitX(),
                     -state.position(0) + half_extent);
    addCorridorPlane(polytope, Eigen::Vector3d::UnitY(),
                     state.position(1) + half_extent);
    addCorridorPlane(polytope, -Eigen::Vector3d::UnitY(),
                     -state.position(1) + half_extent);
    addCorridorPlane(polytope, Eigen::Vector3d::UnitZ(),
                     state.position(2) + half_extent);
    addCorridorPlane(polytope, -Eigen::Vector3d::UnitZ(),
                     -state.position(2) + half_extent);
    return computePolytopeVertices(polytope);
}

bool generateClearanceBridgePolytope(
    const CorridorPathState &start,
    const CorridorPathState &end,
    LoadCorridorPolytope &polytope)
{
    const Eigen::Vector3d delta = end.position - start.position;
    if (delta.norm() < 1.0e-6)
    {
        return false;
    }

    double residual_clearance = 0.0;
    if (!_astar_path_finder->checkConfigurationTransition(
            start.position, start.angle_rad * 180.0 / M_PI,
            end.position, end.angle_rad * 180.0 / M_PI,
            residual_clearance) ||
        !std::isfinite(residual_clearance) || residual_clearance <= 1.0e-4)
    {
        return false;
    }

    const double displacement_budget =
        _load_corridor_bridge_safety_factor * residual_clearance;
    const double half_width = displacement_budget / std::sqrt(3.0);
    const double end_overlap = std::min(
        _load_corridor_longitudinal_overlap, half_width);
    if (half_width <= 1.0e-4)
    {
        return false;
    }

    const Eigen::Vector3d tangent = delta.normalized();
    const Eigen::Vector3d reference =
        std::abs(tangent.dot(Eigen::Vector3d::UnitZ())) < 0.9
            ? Eigen::Vector3d::UnitZ()
            : Eigen::Vector3d::UnitY();
    const Eigen::Vector3d lateral = reference.cross(tangent).normalized();
    const Eigen::Vector3d normal = tangent.cross(lateral).normalized();
    const double tangent_start = tangent.dot(start.position);
    const double tangent_end = tangent.dot(end.position);
    const double tangent_min = std::min(tangent_start, tangent_end);
    const double tangent_max = std::max(tangent_start, tangent_end);
    const double lateral_center =
        0.5 * lateral.dot(start.position + end.position);
    const double normal_center =
        0.5 * normal.dot(start.position + end.position);

    polytope.planes.clear();
    polytope.vertices.clear();
    polytope.complexity = 1.0 / std::max(residual_clearance, 1.0e-3);
    polytope.path_length = delta.norm();
    polytope.local_extent = half_width;
    polytope.minimum_system_margin = residual_clearance;
    polytope.maximum_system_margin = residual_clearance;
    polytope.clearance_fallback = true;
    polytope.clearance_bridge = true;

    addCorridorPlane(polytope, Eigen::Vector3d::UnitX(), _search_x_max);
    addCorridorPlane(polytope, -Eigen::Vector3d::UnitX(), -_search_x_min);
    addCorridorPlane(polytope, Eigen::Vector3d::UnitY(), _search_y_max);
    addCorridorPlane(polytope, -Eigen::Vector3d::UnitY(), -_search_y_min);
    addCorridorPlane(polytope, Eigen::Vector3d::UnitZ(), _search_z_max);
    addCorridorPlane(polytope, -Eigen::Vector3d::UnitZ(), -_search_z_min);
    addCorridorPlane(polytope, tangent, tangent_max + end_overlap);
    addCorridorPlane(polytope, -tangent, -tangent_min + end_overlap);
    addCorridorPlane(polytope, lateral, lateral_center + half_width);
    addCorridorPlane(polytope, -lateral, -lateral_center + half_width);
    addCorridorPlane(polytope, normal, normal_center + half_width);
    addCorridorPlane(polytope, -normal, -normal_center + half_width);
    return computePolytopeVertices(polytope);
}

std::vector<LoadCorridorPolytope> buildLoadCorridor(const std::vector<Vector4d> &nodes)
{
    _load_corridor_uncovered_points.clear();
    _load_corridor_continuity_bridge_count = 0;
    _load_corridor_unresolved_gap_count = 0;
    _load_corridor_min_observed_overlap_radius =
        std::numeric_limits<double>::infinity();
    std::vector<CorridorPathState> path;
    path.reserve(nodes.size() + 2);
    const double fallback_angle = _boundary_angle_pi * M_PI;
    const double astar_start_angle_deg = _astar_path_finder->getStartAngleDeg();
    const double start_angle = std::isfinite(astar_start_angle_deg)
        ? astar_start_angle_deg * M_PI / 180.0
        : fallback_angle;
    path.push_back({_start_pt, start_angle});
    for (const auto &node : nodes)
    {
        const double node_angle = node(3) * M_PI / 180.0;
        if ((node.head<3>() - path.back().position).norm() > 1.0e-6)
        {
            path.push_back({node.head<3>(), node_angle});
        }
        else
        {
            path.back().angle_rad = node_angle;
        }
    }
    if ((_target_pt - path.back().position).norm() > 1.0e-6)
    {
        const double goal_angle = nodes.empty()
            ? fallback_angle
            : nodes.back()(3) * M_PI / 180.0;
        path.push_back({_target_pt, goal_angle});
    }

    path = smoothCorridorGuidePath(path);
    _load_corridor_guide_path = path;
    if (_enable_corridor_path_smoothing)
    {
        ROS_WARN("Safe corridor guide smoothing: accepted %zu / %zu updates, "
                 "path length %.3f -> %.3f m, max turn %.3f -> %.3f deg.",
                 _corridor_smoothing_accepted, _corridor_smoothing_attempts,
                 _corridor_original_path_length,
                 _corridor_smoothed_path_length,
                 _corridor_original_max_turn_deg,
                 _corridor_smoothed_max_turn_deg);
    }

    std::vector<LoadCorridorPolytope> corridor;
    if (path.empty())
    {
        return corridor;
    }

    size_t begin = 0;
    while (begin < path.size())
    {
        size_t end = begin;
        double path_length = 0.0;

        for (size_t candidate = begin + 1; candidate < path.size(); ++candidate)
        {
            const double candidate_length =
                path_length +
                (path[candidate].position - path[candidate - 1].position).norm();
            double minimum_clearance = 0.0;
            double occupancy_ratio = 0.0;
            double complexity = 0.0;
            corridorRangeMetrics(path, begin, candidate,
                                 minimum_clearance, occupancy_ratio, complexity);
            const double allowed_length = std::max(
                _load_corridor_min_segment_length,
                std::min(_load_corridor_segment_length,
                         _load_corridor_segment_length / (1.0 + complexity)));
            if (candidate_length > allowed_length && end > begin)
            {
                break;
            }
            path_length = candidate_length;
            end = candidate;
        }

        LoadCorridorPolytope polytope;
        bool generated = generateLoadPolytope(path, begin, end, polytope);
        while (!generated && end > begin)
        {
            --end;
            generated = generateLoadPolytope(path, begin, end, polytope);
        }
        if (!generated && end == begin && begin + 1 < path.size())
        {
            generated = generateClearanceBridgePolytope(
                path[begin], path[begin + 1], polytope);
            if (generated)
            {
                end = begin + 1;
                ROS_WARN("Load corridor bridge at guide edge %zu -> %zu: "
                         "start (%.3f, %.3f, %.3f), length %.3f m, "
                         "half width %.3f m, residual clearance %.3f m.",
                         begin, end,
                         path[begin].position(0),
                         path[begin].position(1),
                         path[begin].position(2),
                         polytope.path_length,
                         polytope.local_extent,
                         polytope.minimum_system_margin);
            }
        }
        if (!generated && end == begin)
        {
            generated = generateClearanceFallbackPolytope(
                path[begin], polytope);
            if (generated)
            {
                ROS_WARN("Load corridor fallback at guide point %zu: "
                         "position (%.3f, %.3f, %.3f), angle %.3f deg, "
                         "half extent %.3f m, residual clearance %.3f m.",
                         begin,
                         path[begin].position(0),
                         path[begin].position(1),
                         path[begin].position(2),
                         path[begin].angle_rad * 180.0 / M_PI,
                         polytope.local_extent,
                         polytope.minimum_system_margin);
            }
        }
        if (!generated)
        {
            ROS_WARN("Load corridor skipped path point %zu: no polytope contains the full "
                     "system envelope with %.3f m extra clearance.",
                     begin, _load_corridor_clearance);
            _load_corridor_uncovered_points.push_back(path[begin].position);
            ++begin;
            continue;
        }

        polytope.path_begin = begin;
        polytope.path_end = end;
        if (!corridor.empty())
        {
            const double direct_overlap =
                polytopeIntersectionRadius(corridor.back(), polytope);
            if (direct_overlap + 1.0e-9 < _load_corridor_min_overlap_radius)
            {
                const size_t bridge_begin = corridor.back().path_end;
                const size_t bridge_end = polytope.path_begin;
                LoadCorridorPolytope continuity_bridge;
                bool bridge_generated = bridge_end > bridge_begin &&
                    bridge_end < path.size() &&
                    generateClearanceBridgePolytope(
                        path[bridge_begin], path[bridge_end], continuity_bridge);
                if (bridge_generated)
                {
                    continuity_bridge.path_begin = bridge_begin;
                    continuity_bridge.path_end = bridge_end;
                    const double previous_overlap = polytopeIntersectionRadius(
                        corridor.back(), continuity_bridge);
                    const double following_overlap = polytopeIntersectionRadius(
                        continuity_bridge, polytope);
                    if (previous_overlap + 1.0e-9 >=
                            _load_corridor_min_overlap_radius &&
                        following_overlap + 1.0e-9 >=
                            _load_corridor_min_overlap_radius)
                    {
                        ROS_WARN("Load corridor continuity bridge inserted between "
                                 "polyhedra %zu and %zu: guide edge %zu -> %zu, "
                                 "overlap radii %.3f / %.3f m.",
                                 corridor.size() - 1, corridor.size(),
                                 bridge_begin, bridge_end,
                                 previous_overlap, following_overlap);
                        corridor.push_back(continuity_bridge);
                        ++_load_corridor_continuity_bridge_count;
                    }
                    else
                    {
                        ROS_WARN("Load corridor gap remains at guide edge %zu -> %zu: "
                                 "bridge overlap radii %.3f / %.3f m, required %.3f m.",
                                 bridge_begin, bridge_end,
                                 previous_overlap, following_overlap,
                                 _load_corridor_min_overlap_radius);
                    }
                }
                else
                {
                    ROS_WARN("Load corridor gap remains between guide ranges %zu-%zu "
                             "and %zu-%zu: direct overlap radius %.3f m.",
                             corridor.back().path_begin,
                             corridor.back().path_end,
                             polytope.path_begin,
                             polytope.path_end,
                             direct_overlap);
                }
            }
        }
        corridor.push_back(polytope);

        if (end + 1 >= path.size())
        {
            break;
        }
        begin = end > begin ? end : begin + 1;
    }

    _load_corridor_unresolved_gap_count = 0;
    for (size_t i = 1; i < corridor.size(); ++i)
    {
        const double overlap =
            polytopeIntersectionRadius(corridor[i - 1], corridor[i]);
        _load_corridor_min_observed_overlap_radius = std::min(
            _load_corridor_min_observed_overlap_radius, overlap);
        if (overlap + 1.0e-9 < _load_corridor_min_overlap_radius)
        {
            ++_load_corridor_unresolved_gap_count;
        }
    }
    if (corridor.size() < 2)
    {
        _load_corridor_min_observed_overlap_radius = 0.0;
    }
    return corridor;
}

void appendPolytopeGeometry(const LoadCorridorPolytope &polytope,
                            visualization_msgs::Marker &surface,
                            visualization_msgs::Marker &edges)
{
    for (const auto &plane : polytope.planes)
    {
        std::vector<Eigen::Vector3d> face;
        for (const auto &vertex : polytope.vertices)
        {
            if (std::abs(plane.normal.dot(vertex) - plane.offset) < 1.0e-4)
            {
                face.push_back(vertex);
            }
        }
        if (face.size() < 3)
        {
            continue;
        }

        Eigen::Vector3d center = Eigen::Vector3d::Zero();
        for (const auto &vertex : face)
        {
            center += vertex;
        }
        center /= double(face.size());
        const Eigen::Vector3d reference =
            std::abs(plane.normal.dot(Eigen::Vector3d::UnitZ())) < 0.9
                ? Eigen::Vector3d::UnitZ()
                : Eigen::Vector3d::UnitY();
        const Eigen::Vector3d axis_u = plane.normal.cross(reference).normalized();
        const Eigen::Vector3d axis_v = plane.normal.cross(axis_u).normalized();
        std::sort(face.begin(), face.end(),
                  [&](const Eigen::Vector3d &lhs, const Eigen::Vector3d &rhs)
                  {
                      const Eigen::Vector3d lhs_delta = lhs - center;
                      const Eigen::Vector3d rhs_delta = rhs - center;
                      return std::atan2(lhs_delta.dot(axis_v), lhs_delta.dot(axis_u)) <
                             std::atan2(rhs_delta.dot(axis_v), rhs_delta.dot(axis_u));
                  });

        for (size_t i = 1; i + 1 < face.size(); ++i)
        {
            surface.points.push_back(toGeometryPoint(face[0]));
            surface.points.push_back(toGeometryPoint(face[i]));
            surface.points.push_back(toGeometryPoint(face[i + 1]));
        }
        for (size_t i = 0; i < face.size(); ++i)
        {
            edges.points.push_back(toGeometryPoint(face[i]));
            edges.points.push_back(toGeometryPoint(face[(i + 1) % face.size()]));
        }
    }
}

void publishLoadCorridor(const std::vector<Vector4d> &nodes,
                         const ros::Time &plan_stamp)
{
    clearLoadCorridor();
    quadrotor_msgs::LoadCorridor corridor_message;
    corridor_message.header.frame_id = "odom";
    corridor_message.header.stamp = plan_stamp;
    if (!_enable_load_corridor)
    {
        _load_corridor_data_pub.publish(corridor_message);
        return;
    }

    const std::vector<LoadCorridorPolytope> raw_corridor =
        buildLoadCorridor(nodes);
    if (raw_corridor.empty())
    {
        ROS_WARN("Adaptive load corridor generation failed: no safe polyhedra.");
        _load_corridor_data_pub.publish(corridor_message);
        return;
    }
    const std::vector<LoadCorridorPolytope> corridor =
        compressLoadCorridor(raw_corridor);
    corridor_message.polytopes.reserve(corridor.size());
    for (const auto &polytope : corridor)
    {
        quadrotor_msgs::CorridorPolytope corridor_polytope;
        corridor_polytope.path_begin = polytope.path_begin;
        corridor_polytope.path_end = polytope.path_end;
        corridor_polytope.clearance_bridge = polytope.clearance_bridge;
        corridor_polytope.complexity = polytope.complexity;
        corridor_polytope.local_extent = polytope.local_extent;
        corridor_polytope.minimum_system_margin =
            polytope.minimum_system_margin;
        corridor_polytope.maximum_system_margin =
            polytope.maximum_system_margin;
        corridor_polytope.normals.reserve(polytope.planes.size());
        corridor_polytope.offsets.reserve(polytope.planes.size());
        for (const auto &plane : polytope.planes)
        {
            geometry_msgs::Vector3 normal;
            normal.x = plane.normal(0);
            normal.y = plane.normal(1);
            normal.z = plane.normal(2);
            corridor_polytope.normals.push_back(normal);
            corridor_polytope.offsets.push_back(plane.offset);
        }
        corridor_polytope.vertices.reserve(polytope.vertices.size());
        for (const auto &vertex : polytope.vertices)
        {
            corridor_polytope.vertices.push_back(toGeometryPoint(vertex));
        }
        corridor_message.polytopes.push_back(corridor_polytope);
    }
    corridor_message.transition_centers.reserve(corridor.size() - 1);
    corridor_message.transition_radii.reserve(corridor.size() - 1);
    corridor_message.transition_tangents.reserve(corridor.size() - 1);
    corridor_message.transition_longitudinal_radii.reserve(corridor.size() - 1);
    corridor_message.transition_transverse_radii.reserve(corridor.size() - 1);
    std::vector<Eigen::Vector3d> transition_centers;
    std::vector<double> transition_radii;
    transition_centers.reserve(corridor.size() - 1);
    transition_radii.reserve(corridor.size() - 1);
    double compressed_minimum_overlap = std::numeric_limits<double>::infinity();
    for (size_t i = 1; i < corridor.size(); ++i)
    {
        Eigen::Vector3d center = Eigen::Vector3d::Zero();
        const double radius = polytopeIntersectionRadius(
            corridor[i - 1], corridor[i], &center);
        transition_centers.push_back(center);
        transition_radii.push_back(radius);
        corridor_message.transition_centers.push_back(toGeometryPoint(center));
        corridor_message.transition_radii.push_back(radius);
        compressed_minimum_overlap = std::min(
            compressed_minimum_overlap, radius);
    }
    double minimum_longitudinal_radius = std::numeric_limits<double>::infinity();
    double maximum_longitudinal_radius = 0.0;
    double maximum_axis_ratio = 1.0;
    for (size_t i = 0; i < transition_centers.size(); ++i)
    {
        Eigen::Vector3d tangent;
        if (transition_centers.size() == 1)
            tangent = Eigen::Vector3d::UnitX();
        else if (i == 0)
            tangent = transition_centers[1] - transition_centers[0];
        else if (i + 1 == transition_centers.size())
            tangent = transition_centers[i] - transition_centers[i - 1];
        else
            tangent = transition_centers[i + 1] - transition_centers[i - 1];
        if (tangent.norm() < 1.0e-8)
            tangent = Eigen::Vector3d::UnitX();
        tangent.normalize();

        double longitudinal_radius = transition_radii[i];
        double transverse_radius = transition_radii[i];
        transitionEllipsoidShape(
            corridor[i], corridor[i + 1], transition_centers[i], tangent,
            transition_radii[i], longitudinal_radius, transverse_radius);
        geometry_msgs::Vector3 tangent_message;
        tangent_message.x = tangent.x();
        tangent_message.y = tangent.y();
        tangent_message.z = tangent.z();
        corridor_message.transition_tangents.push_back(tangent_message);
        corridor_message.transition_longitudinal_radii.push_back(
            longitudinal_radius);
        corridor_message.transition_transverse_radii.push_back(
            transverse_radius);
        minimum_longitudinal_radius = std::min(
            minimum_longitudinal_radius, longitudinal_radius);
        maximum_longitudinal_radius = std::max(
            maximum_longitudinal_radius, longitudinal_radius);
        maximum_axis_ratio = std::max(
            maximum_axis_ratio, longitudinal_radius / transverse_radius);
    }
    if (corridor.size() == 1)
    {
        compressed_minimum_overlap = 0.0;
    }
    _load_corridor_data_pub.publish(corridor_message);
    ROS_WARN("Numerical load corridor published: %zu raw -> %zu compressed "
             "polyhedra, %zu transition ellipsoids, inscribed radius min %.3f m, "
             "longitudinal radius [%.3f, %.3f] m, max axis ratio %.2f.",
             raw_corridor.size(), corridor.size(),
             corridor_message.transition_radii.size(),
             compressed_minimum_overlap,
             transition_centers.empty() ? 0.0 : minimum_longitudinal_radius,
             maximum_longitudinal_radius, maximum_axis_ratio);

    visualization_msgs::MarkerArray marker_array;
    visualization_msgs::Marker edges;
    edges.header.frame_id = "odom";
    edges.header.stamp = plan_stamp;
    edges.ns = "load_corridor_edges";
    edges.id = 0;
    edges.type = visualization_msgs::Marker::LINE_LIST;
    edges.action = visualization_msgs::Marker::ADD;
    edges.pose.orientation.w = 1.0;
    edges.scale.x = 0.035;
    edges.color.r = 0.02;
    edges.color.g = 0.40;
    edges.color.b = 0.52;
    edges.color.a = 0.95;

    int marker_id = 0;
    visualization_msgs::Marker guide;
    guide.header = edges.header;
    guide.ns = "load_corridor_smoothed_guide";
    guide.id = 0;
    guide.type = visualization_msgs::Marker::LINE_STRIP;
    guide.action = visualization_msgs::Marker::ADD;
    guide.pose.orientation.w = 1.0;
    guide.scale.x = 0.065;
    guide.color.r = 1.0;
    guide.color.g = 0.72;
    guide.color.b = 0.05;
    guide.color.a = 1.0;
    for (const auto &state : _load_corridor_guide_path)
    {
        guide.points.push_back(toGeometryPoint(state.position));
    }
    marker_array.markers.push_back(guide);

    for (size_t i = 0; i < transition_centers.size(); ++i)
    {
        visualization_msgs::Marker ellipsoid;
        ellipsoid.header = edges.header;
        ellipsoid.ns = "load_corridor_transition_ellipsoids";
        ellipsoid.id = static_cast<int>(i);
        ellipsoid.type = visualization_msgs::Marker::SPHERE;
        ellipsoid.action = visualization_msgs::Marker::ADD;
        ellipsoid.pose.position = toGeometryPoint(transition_centers[i]);
        const Eigen::Vector3d tangent(
            corridor_message.transition_tangents[i].x,
            corridor_message.transition_tangents[i].y,
            corridor_message.transition_tangents[i].z);
        const Eigen::Quaterniond orientation = Eigen::Quaterniond::FromTwoVectors(
            Eigen::Vector3d::UnitX(), tangent);
        ellipsoid.pose.orientation.x = orientation.x();
        ellipsoid.pose.orientation.y = orientation.y();
        ellipsoid.pose.orientation.z = orientation.z();
        ellipsoid.pose.orientation.w = orientation.w();
        ellipsoid.scale.x = 2.0 *
            corridor_message.transition_longitudinal_radii[i];
        ellipsoid.scale.y = 2.0 *
            corridor_message.transition_transverse_radii[i];
        ellipsoid.scale.z = ellipsoid.scale.y;
        ellipsoid.color.r = 0.12;
        ellipsoid.color.g = 0.85;
        ellipsoid.color.b = 0.30;
        ellipsoid.color.a = 0.20;
        marker_array.markers.push_back(ellipsoid);
    }

    size_t total_plane_count = 0;
    size_t total_vertex_count = 0;
    double minimum_complexity = std::numeric_limits<double>::infinity();
    double maximum_complexity = 0.0;
    double minimum_path_length = std::numeric_limits<double>::infinity();
    double maximum_path_length = 0.0;
    double minimum_extent = std::numeric_limits<double>::infinity();
    double maximum_extent = 0.0;
    double minimum_system_margin = std::numeric_limits<double>::infinity();
    double maximum_system_margin = 0.0;
    size_t clearance_fallback_count = 0;
    size_t clearance_bridge_count = 0;
    for (const auto &polytope : corridor)
    {
        visualization_msgs::Marker surface;
        surface.header = edges.header;
        surface.ns = "load_corridor_polyhedra";
        surface.id = marker_id++;
        surface.type = visualization_msgs::Marker::TRIANGLE_LIST;
        surface.action = visualization_msgs::Marker::ADD;
        surface.pose.orientation.w = 1.0;
        surface.scale.x = 1.0;
        surface.scale.y = 1.0;
        surface.scale.z = 1.0;
        const double normalized_complexity =
            polytope.complexity / (1.0 + polytope.complexity);
        surface.color.r = 0.12 + 0.55 * normalized_complexity;
        surface.color.g = 0.72 - 0.18 * normalized_complexity;
        surface.color.b = 0.82 - 0.42 * normalized_complexity;
        surface.color.a = 0.12;
        appendPolytopeGeometry(polytope, surface, edges);
        marker_array.markers.push_back(surface);
        total_plane_count += polytope.planes.size();
        total_vertex_count += polytope.vertices.size();
        minimum_complexity = std::min(minimum_complexity, polytope.complexity);
        maximum_complexity = std::max(maximum_complexity, polytope.complexity);
        minimum_path_length = std::min(minimum_path_length, polytope.path_length);
        maximum_path_length = std::max(maximum_path_length, polytope.path_length);
        minimum_extent = std::min(minimum_extent, polytope.local_extent);
        maximum_extent = std::max(maximum_extent, polytope.local_extent);
        minimum_system_margin = std::min(
            minimum_system_margin, polytope.minimum_system_margin);
        maximum_system_margin = std::max(
            maximum_system_margin, polytope.maximum_system_margin);
        if (polytope.clearance_fallback)
        {
            ++clearance_fallback_count;
            if (polytope.clearance_bridge)
            {
                ++clearance_bridge_count;
            }
        }
    }
    if (!_load_corridor_uncovered_points.empty())
    {
        visualization_msgs::Marker uncovered;
        uncovered.header = edges.header;
        uncovered.ns = "load_corridor_uncovered_path";
        uncovered.id = marker_id++;
        uncovered.type = visualization_msgs::Marker::SPHERE_LIST;
        uncovered.action = visualization_msgs::Marker::ADD;
        uncovered.pose.orientation.w = 1.0;
        uncovered.scale.x = 0.18;
        uncovered.scale.y = 0.18;
        uncovered.scale.z = 0.18;
        uncovered.color.r = 0.95;
        uncovered.color.g = 0.08;
        uncovered.color.b = 0.05;
        uncovered.color.a = 0.95;
        for (const auto &point : _load_corridor_uncovered_points)
        {
            uncovered.points.push_back(toGeometryPoint(point));
        }
        marker_array.markers.push_back(uncovered);
    }
    marker_array.markers.push_back(edges);
    _load_corridor_vis_pub.publish(marker_array);
    ROS_WARN("Adaptive load corridor published: %zu convex polyhedra, clearance %.3f m, "
             "planes/vertices %zu/%zu, complexity [%.3f, %.3f], "
             "segment length [%.3f, %.3f] m, local extent [%.3f, %.3f] m, "
             "configuration-aware obstacle margin [%.3f, %.3f] m, "
             "clearance fallback polytopes %zu (bridges %zu, point cubes %zu), "
             "continuity bridges %zu, minimum adjacent overlap radius %.3f m, "
             "unresolved gaps %zu, uncovered guide path points %zu.",
             corridor.size(), _load_corridor_clearance,
             total_plane_count, total_vertex_count,
             minimum_complexity, maximum_complexity,
             minimum_path_length, maximum_path_length,
             minimum_extent, maximum_extent,
             minimum_system_margin, maximum_system_margin,
             clearance_fallback_count,
             clearance_bridge_count,
             clearance_fallback_count - clearance_bridge_count,
             _load_corridor_continuity_bridge_count,
             _load_corridor_min_observed_overlap_radius,
             _load_corridor_unresolved_gap_count,
             _load_corridor_uncovered_points.size());
}

bool isFixedWaypoint(const size_t index, const size_t node_count)
{
    const size_t split_num = static_cast<size_t>(std::max(_wayPointSplitNum, 1));
    return (index + 1) % split_num == 0
        && std::abs(static_cast<int>(index + 1) - static_cast<int>(node_count))
           > static_cast<int>(split_num) - 1;
}

void visRvizStart(Vector3d Point)
{
    visualization_msgs::Marker point_vis;
    point_vis.header.frame_id = "odom";
    point_vis.header.stamp = ros::Time::now();

    point_vis.ns = "astar_node/start_point";
    point_vis.id = rvizPointID;

    point_vis.type = visualization_msgs::Marker::SPHERE;
    point_vis.action = visualization_msgs::Marker::ADD;

    point_vis.pose.position.x = Point(0);
    point_vis.pose.position.y = Point(1);
    point_vis.pose.position.z = Point(2);

    point_vis.pose.orientation.x = 0.0;
    point_vis.pose.orientation.y = -sqrt(2)/2;
    point_vis.pose.orientation.z = 0.0;
    point_vis.pose.orientation.w = sqrt(2)/2;

    point_vis.color.a = 1.0;
    point_vis.color.r = 1.0;
    point_vis.color.g = 1.0;
    point_vis.color.b = 1.0;

    point_vis.scale.x = 0.2;
    point_vis.scale.y = 0.2;
    point_vis.scale.z = 0.2;

    _start_point_vis_pub.publish(point_vis);
}

void visRvizTarget(Vector3d Point)
{
    visualization_msgs::Marker point_vis;
    point_vis.header.frame_id = "odom";
    point_vis.header.stamp = ros::Time::now();

    point_vis.ns = "astar_node/target_point";
    point_vis.id = rvizPointID;

    point_vis.type = visualization_msgs::Marker::SPHERE;
    point_vis.action = visualization_msgs::Marker::ADD;

    point_vis.pose.position.x = Point(0);
    point_vis.pose.position.y = Point(1);
    point_vis.pose.position.z = Point(2);

    point_vis.pose.orientation.x = 0.0;
    point_vis.pose.orientation.y = -sqrt(2)/2;
    point_vis.pose.orientation.z = 0.0;
    point_vis.pose.orientation.w = sqrt(2)/2;

    point_vis.color.a = 1.0;
    point_vis.color.r = 1.0;
    point_vis.color.g = 0.0;
    point_vis.color.b = 0.0;

    point_vis.scale.x = 0.2;
    point_vis.scale.y = 0.2;
    point_vis.scale.z = 0.2;

    _target_point_vis_pub.publish(point_vis);
}

void transGoalCallback(const nav_msgs::Odometry::ConstPtr &msg)
{
    double goal_x, goal_y, goal_z;
    goal_x = msg->pose.pose.position.x;
    goal_y = msg->pose.pose.position.y;
    goal_z = msg->pose.pose.position.z;

    target_pt_Exp_Tmp << goal_x, goal_y, goal_z;

    visRvizTarget(target_pt_Exp_Tmp);

    getTmpGoal = true;
}
// Eigen::Vector3d
Eigen::Vector3d getReplanStartPt(quadrotor_msgs::PolyTraj trajmsg, double duration)
{
    int i;
    int piece_nums = trajmsg.duration.size();
    std::vector<double> dura(piece_nums);
    std::vector<Eigen::Matrix<double, 3, 8>> cMats(piece_nums);
    for (i = 0; i < piece_nums; ++i)
    {
        int i8 = i * 8;
        cMats[i].row(0) << trajmsg.coef_x[i8 + 0], trajmsg.coef_x[i8 + 1], trajmsg.coef_x[i8 + 2],
            trajmsg.coef_x[i8 + 3], trajmsg.coef_x[i8 + 4], trajmsg.coef_x[i8 + 5], trajmsg.coef_x[i8 + 6], trajmsg.coef_x[i8 + 7];
        cMats[i].row(1) << trajmsg.coef_y[i8 + 0], trajmsg.coef_y[i8 + 1], trajmsg.coef_y[i8 + 2],
            trajmsg.coef_y[i8 + 3], trajmsg.coef_y[i8 + 4], trajmsg.coef_y[i8 + 5], trajmsg.coef_y[i8 + 6], trajmsg.coef_y[i8 + 7];
        cMats[i].row(2) << trajmsg.coef_z[i8 + 0], trajmsg.coef_z[i8 + 1], trajmsg.coef_z[i8 + 2],
            trajmsg.coef_z[i8 + 3], trajmsg.coef_z[i8 + 4], trajmsg.coef_z[i8 + 5], trajmsg.coef_z[i8 + 6], trajmsg.coef_z[i8 + 7];
        dura[i] = trajmsg.duration[i];
        if(duration <= dura[i])
        {
            double t = duration;
            Eigen::VectorXd time;
            time.resize(8);
            time << pow(t,7), pow(t,6), pow(t,5), pow(t,4), pow(t,3), pow(t,2), pow(t,1), pow(t,0);
            Eigen::Vector3d Start_Point = cMats[i] * time;
            std::cout << "!!!!!!!!!!!!!!!!!!" << Start_Point << "!!!!!!!!!!!!!!!!!!" << std::endl;
            return Start_Point;
        }
        else
        {
            duration -= dura[i];
        }
    }
    if(i >= piece_nums)
    {
        double t = dura[piece_nums-1];
        Eigen::VectorXd time;
        time.resize(8);
        time << pow(t,7), pow(t,6), pow(t,5), pow(t,4), pow(t,3), pow(t,2), pow(t,1), pow(t,0);
        Eigen::Vector3d Start_Point = cMats[piece_nums-1] * time;
        std::cout << "!!!!!!!!!!!!!!!!!!" << Start_Point << "!!!!!!!!!!!!!!!!!!" << std::endl;
        return Start_Point;
    }


}

//终点坐标的回调函数
void rcvWaypointsCallback(const nav_msgs::Path & wp)
{   
    //安全性检查 
    if( wp.poses[0].pose.position.z < 0.0 || _has_map == false )
        return;

    if(_isExp == false && !_isReplanMode)
    {
        if(!_has_start_pt)
        {
            // Set by yourself
            _start_pt   <<      wp.poses[0].pose.position.x,
                                wp.poses[0].pose.position.y,
                                wp.poses[0].pose.position.z;

            _has_start_pt = true;
            visRvizStart(_start_pt);
            ROS_INFO("[node] receive the planning start point");
        }
        else
        {
            _target_pt  <<      wp.poses[0].pose.position.x,
                                wp.poses[0].pose.position.y,
                                wp.poses[0].pose.position.z;
            
            visRvizTarget(_target_pt);
            ROS_INFO("[node] receive the planning target point");
            _has_start_pt = false;
            ROS_INFO("[node] Starting Astar Path Finding!");
            pathFinding(_start_pt, _target_pt);
        }    

    }
    else if(_isReplanMode)
    {
        // _has_start_pt = true;
        if(!_has_start_pt)
        {
            // _start_pt   <<      wp.poses[0].pose.position.x,
            //                     wp.poses[0].pose.position.y,
            //                     wp.poses[0].pose.position.z;
            _start_pt   <<      wp.poses[0].pose.position.x,
                                wp.poses[0].pose.position.y,
                                0.5;
            _has_start_pt = true;
            visRvizStart(_start_pt);
            ROS_INFO("[node] receive the planning start point");
        }
        else
        {
            if(!_is_replan)
            {
                // _target_pt  <<      wp.poses[0].pose.position.x,
                //                     wp.poses[0].pose.position.y,
                //                     wp.poses[0].pose.position.z;
                _target_pt  <<      wp.poses[0].pose.position.x,
                                    wp.poses[0].pose.position.y,
                                    0.5;


                visRvizTarget(_target_pt);
                _is_replan = true;
            }
            else
            {
                double start_time = trajmsg.traj_start_time;
                time_replan = ros::Time::now();
                ROS_INFO("111111111111, time_replan, %f", time_replan.toSec());
                double duration = time_replan.toSec() - start_time + _time_ahead;
                ROS_INFO("111111111111, duration, %f", duration);
                
                _start_pt = getReplanStartPt(trajmsg, duration);
                // getReplanStartPt(trajmsg, duration);

                // _start_pt << _target_pt;

                visRvizStart(_start_pt);
                // _target_pt  <<      wp.poses[0].pose.position.x,
                //                     wp.poses[0].pose.position.y,
                //                     wp.poses[0].pose.position.z;
                _target_pt  <<      wp.poses[0].pose.position.x,
                                    wp.poses[0].pose.position.y,
                                    0.8;
                visRvizTarget(_target_pt);
            }
            ROS_INFO("[node] receive the planning target point");
            ROS_INFO("[node] Starting Astar Path Finding!");
            pathFinding(_start_pt, _target_pt);
        }
    }
    else
    {
        if(_has_start_pt == false)
        {
            _start_pt << -7.5, 0.0, 0.8;
            visRvizStart(_start_pt);
            _has_start_pt = true;
            ROS_INFO("[node] receive the planning start point");
        }
        else
        {
            _start_pt << _target_pt;
            visRvizStart(_start_pt);
            ROS_INFO("[node] receive the planning start point");
        }
        if(!getTmpGoal)
        {
            target_pt_Exp_Tmp << _start_pt;
            target_pt_Exp_Tmp[0] += 8.0;
            target_pt_Exp_Tmp[1] += 1.5;
        }
        _target_pt << target_pt_Exp_Tmp;
        ROS_INFO("[node] receive the planning target point");
        visRvizTarget(_target_pt);
        ROS_INFO("[node] Starting Astar Path Finding!");
        pathFinding(_start_pt, _target_pt);
    }

}

//点云地图的回调函数
void rcvPointCloudCallBack(const sensor_msgs::PointCloud2 & pointcloud_map)
{   
    if(!_isExp)
    {
        if(_has_map ) return;
    }
    else
    {
        _astar_path_finder->clearObs();
    }


    //PCL点云格式
    pcl::PointCloud<pcl::PointXYZ> cloud;
    pcl::PointCloud<pcl::PointXYZ> cloud_vis;
    //ROS点云格式
    sensor_msgs::PointCloud2 map_vis;
    //将ROS格式转成PCL格式
    pcl::fromROSMsg(pointcloud_map, cloud);
    
    if( (int)cloud.points.size() == 0 ) return;

    _map_obstacle_points.clear();
    _map_obstacle_points.reserve(cloud.points.size());
    pcl::PointXYZ pt;   //世界坐标系的三维点
    for (int idx = 0; idx < (int)cloud.points.size(); idx++)
    {    
        pt = cloud.points[idx];        
        // 通过世界坐标系的三维点云坐标 设置 一维点云数据格式中的障碍物
        _astar_path_finder->setObs(pt.x, pt.y, pt.z);
        
        // The corridor and A* must use the same voxel-center obstacle geometry.
        Vector3d cor_round = _astar_path_finder->coordRounding(Vector3d(pt.x, pt.y, pt.z));
        _map_obstacle_points.push_back(cor_round);

        // 仅仅为了显示
        pt.x = cor_round(0);
        pt.y = cor_round(1);
        pt.z = cor_round(2);
        cloud_vis.points.push_back(pt);
    }

    cloud_vis.width    = cloud_vis.points.size();
    cloud_vis.height   = 1;
    cloud_vis.is_dense = true;
    
    //PCL格式-->ROS格式
    pcl::toROSMsg(cloud_vis, map_vis);

    map_vis.header.frame_id = "/odom";
    _grid_map_vis_pub.publish(map_vis);

    _has_map = true;
}

void polyTrajCallback(const quadrotor_msgs::PolyTrajPtr &msg)
{
    ROS_INFO("GET!!!!!!!!!!!");
    trajmsg = *msg;
    for(int i = 0;i < trajmsg.duration.size();i++)
    {
        time_all += trajmsg.duration[i];
    }
    cout << time_all << "iiiiiiiiiiii" << endl;
    
}

void visTransport(Vector4d Point)
{
    visualization_msgs::Marker node_vis; 
    node_vis.header.frame_id = "odom";
    node_vis.header.stamp = ros::Time::now();
    node_vis.ns = "astar_node/transport";
    node_vis.type = visualization_msgs::Marker::MESH_RESOURCE;
    node_vis.action = visualization_msgs::Marker::ADD;
    node_vis.mesh_resource = "package://grid_path_searcher/pcd/transport.dae";
    node_vis.id = 0;

    node_vis.pose.position.x = Point(0);
    node_vis.pose.position.y = Point(1);
    node_vis.pose.position.z = Point(2);

    node_vis.pose.orientation.x = 0.0;
    node_vis.pose.orientation.y = 0.0;
    node_vis.pose.orientation.z = 0.0;
    node_vis.pose.orientation.w = 1.0;

    node_vis.color.a = 0.5;
    node_vis.color.r = 0.0;
    node_vis.color.g = 0.0;
    node_vis.color.b = 1.0;

    node_vis.scale.x = 0.105*sin(Point(3)/180*M_PI)/sin(_max_angle*M_PI);
    node_vis.scale.y = 0.105*sin(Point(3)/180*M_PI)/sin(_max_angle*M_PI);
    node_vis.scale.z = 0.105*cos(Point(3)/180*M_PI)/cos(_max_angle*M_PI);

    _transport_vis_pub.publish(node_vis);
}

//发布Astar路径
void visGridPath( vector<Vector4d> nodes)
{   
    clearMarkers();
    const ros::Time plan_stamp = ros::Time::now();
    publishLoadCorridor(nodes, plan_stamp);
    size_t selected_waypoint_num = 0;
    for (size_t i = 0; i < nodes.size(); ++i)
    {
        selected_waypoint_num += isFixedWaypoint(i, nodes.size()) ? 1 : 0;
    }
    cout << "Waypoint sampling: fixed interval " << _wayPointSplitNum
         << ", selected " << selected_waypoint_num << " / " << nodes.size() << endl;
    std::ofstream envelope_log;
    int envelope_collision_num = 0;
    int visualized_envelope_collision_num = 0;
    if (_enable_envelope_log)
    {
        envelope_log.open(_envelope_log_path);
        if (envelope_log.is_open())
        {
            envelope_log << "node_index,visualized,x,y,z,angle_deg,"
                         << "mesh_scale_x,mesh_scale_y,mesh_scale_z,"
                         << "astar_height_cells,astar_top_len_cells,"
                         << "astar_height_m,astar_top_width_m,astar_collision,"
                         << "min_clearance_m,Jc,Js,Jn\n";
        }
        else
        {
            ROS_WARN("Failed to open A* envelope log: %s", _envelope_log_path.c_str());
        }
    }
    visualization_msgs::Marker node_vis; 
    node_vis.header.frame_id = "odom";
    node_vis.header.stamp = plan_stamp;

    node_vis.ns = "astar_node/astar_path";

    node_vis.type = visualization_msgs::Marker::LINE_STRIP;
    // node_vis.type = visualization_msgs::Marker::CUBE_LIST;
    node_vis.action = visualization_msgs::Marker::ADD;
    node_vis.id = 0;

    node_vis.pose.orientation.x = 0.0;
    node_vis.pose.orientation.y = 0.0;
    node_vis.pose.orientation.z = 0.0;
    node_vis.pose.orientation.w = 1.0;

   
    node_vis.color.a = 1.0;
    node_vis.color.r = 97.0 / 255.0;
    node_vis.color.g = 100.0 / 255.0;
    node_vis.color.b = 159.0 / 255.0;
    
    node_vis.scale.x = 0.2;
    node_vis.scale.y = 0.2;
    node_vis.scale.z = 0.2;
    // node_vis.scale.x = _resolution;
    // node_vis.scale.y = _resolution;
    // node_vis.scale.z = _resolution;

    visualization_msgs::MarkerArray transport_vis_array;
    visualization_msgs::Marker transport_vis;
    quadrotor_msgs::AstarPath configuration_path;
    configuration_path.header.frame_id = "odom";
    configuration_path.header.stamp = plan_stamp;
    configuration_path.start.x = _start_pt(0);
    configuration_path.start.y = _start_pt(1);
    configuration_path.start.z = _start_pt(2);
    configuration_path.goal.x = _target_pt(0);
    configuration_path.goal.y = _target_pt(1);
    configuration_path.goal.z = _target_pt(2);
    configuration_path.points.reserve(nodes.size() + 2);
    const double astar_start_angle_deg = _astar_path_finder->getStartAngleDeg();
    const double start_angle_deg = std::isfinite(astar_start_angle_deg)
        ? astar_start_angle_deg
        : _boundary_angle_pi * 180.0;
    const double goal_angle_deg = nodes.back()(3);
    quadrotor_msgs::AstarPathPoint boundary_point;
    boundary_point.position = configuration_path.start;
    boundary_point.angle = start_angle_deg * M_PI / 180.0;
    boundary_point.clearance = _astar_path_finder->getEnvelopeClearanceAt(
        _start_pt, start_angle_deg);
    boundary_point.waypoint = false;
    configuration_path.points.push_back(boundary_point);

    geometry_msgs::Point pt;
    pt.x = _start_pt(0);
    pt.y = _start_pt(1);
    pt.z = _start_pt(2);
    cout<<"Start Position: \n"<<pt<<endl;
    node_vis.points.push_back(pt);

    Eigen::Matrix3Xd wayPoints;
    cout<<"size: "<<nodes.size()<<endl;
    wayPoints.resize(3, selected_waypoint_num + 2);
    cout<<"wayPoint Num: "<<selected_waypoint_num + 2<<endl;
    wayPoints.col(0)(0) = _start_pt(0);
    wayPoints.col(0)(1) = _start_pt(1);
    wayPoints.col(0)(2) = _start_pt(2);

    transport_vis.header.frame_id = "odom";
    transport_vis.header.stamp = time_replan;
    transport_vis.type = visualization_msgs::Marker::MESH_RESOURCE;
    transport_vis.action = visualization_msgs::Marker::ADD;
    transport_vis.mesh_resource = "package://grid_path_searcher/pcd/transport.dae";
    transport_vis.ns = "start_pt";
    transport_vis.id = 0;

    transport_vis.pose.position.x = _start_pt(0);
    transport_vis.pose.position.y = _start_pt(1);
    transport_vis.pose.position.z = _start_pt(2);

    transport_vis.pose.orientation.x = 0.0;
    transport_vis.pose.orientation.y = 0.0;
    transport_vis.pose.orientation.z = - sqrt(2)/2;
    transport_vis.pose.orientation.w = sqrt(2)/2;

    transport_vis.color.a = 0.18;
    transport_vis.color.r = 0.65;
    transport_vis.color.g = 0.65;
    transport_vis.color.b = 0.65;

    transport_vis.scale.x = pow(1.6,1/3) * 2 * 0.105*sin(start_angle_deg/180*M_PI)/sin(_max_angle*M_PI);
    transport_vis.scale.y = pow(1.6,1/3) * 2 * 0.105*sin(start_angle_deg/180*M_PI)/sin(_max_angle*M_PI);
    transport_vis.scale.z = pow(1.6,1/3) * 1.6 * 0.105*cos(start_angle_deg/180*M_PI)/cos(_max_angle*M_PI);

    transport_vis_array.markers.push_back(transport_vis);

    size_t waypoint_col = 2;
    for(int i = 0; i < int(nodes.size()); i++)
    {
        Vector4d point = nodes[i];
        pt.x = point(0);
        pt.y = point(1);
        pt.z = point(2);
        const bool is_visualized = isFixedWaypoint(i, nodes.size());
        quadrotor_msgs::AstarPathPoint reference_point;
        reference_point.position = pt;
        reference_point.angle = point(3) * M_PI / 180.0;
        reference_point.clearance = _astar_path_finder->getEnvelopeClearanceAt(point.head<3>(), point(3));
        reference_point.waypoint = is_visualized;
        configuration_path.points.push_back(reference_point);
        const double mesh_scale_x = pow(1.6,1/3) * 2 * 0.105*sin(point(3)/180*M_PI)/sin(_max_angle*M_PI);
        const double mesh_scale_y = pow(1.6,1/3) * 2 * 0.105*sin(point(3)/180*M_PI)/sin(_max_angle*M_PI);
        const double mesh_scale_z = pow(1.6,1/3) * 1.6 * 0.105*cos(point(3)/180*M_PI)/cos(_max_angle*M_PI);

        if (_enable_envelope_log && envelope_log.is_open())
        {
            int height_cells = 0;
            int top_len_cells = 0;
            double height_m = 0.0;
            double top_width_m = 0.0;
            const bool astar_collision = _astar_path_finder->checkEnvelopeAt(point.head<3>(),
                                                                             point(3),
                                                                             height_cells,
                                                                             top_len_cells,
                                                                             height_m,
                                                                             top_width_m);
            if (astar_collision)
            {
                envelope_collision_num++;
                if (is_visualized)
                {
                    visualized_envelope_collision_num++;
                }
            }
            const double min_clearance = _astar_path_finder->getEnvelopeClearanceAt(point.head<3>(),
                                                                                     point(3));
            const double clearance_ratio = _safety_clearance > 0.0
                ? std::max(0.0, (_safety_clearance - min_clearance) / _safety_clearance)
                : 0.0;
            const double jc = clearance_ratio * clearance_ratio;
            const double angle_range_deg = 180.0 * (_max_angle - _min_angle);
            const double previous_angle_deg = i == 0 ? point(3) : nodes[i - 1](3);
            const double normalized_delta = angle_range_deg > 0.0
                ? (point(3) - previous_angle_deg) / angle_range_deg
                : 0.0;
            const double normalized_nominal = angle_range_deg > 0.0
                ? (180.0 * _max_angle - point(3)) / angle_range_deg
                : 0.0;
            const double js = normalized_delta * normalized_delta;
            const double jn = normalized_nominal * normalized_nominal;
            envelope_log << i << "," << (is_visualized ? 1 : 0) << ","
                         << point(0) << "," << point(1) << "," << point(2) << ","
                         << point(3) << ","
                         << mesh_scale_x << "," << mesh_scale_y << "," << mesh_scale_z << ","
                         << height_cells << "," << top_len_cells << ","
                         << height_m << "," << top_width_m << ","
                         << (astar_collision ? 1 : 0) << ","
                         << min_clearance << "," << jc << "," << js << "," << jn << "\n";
        }

        if(is_visualized)
        {
            wayPoints.col(waypoint_col)(0) = point(0);
            wayPoints.col(waypoint_col)(1) = point(1);
            wayPoints.col(waypoint_col)(2) = point(2);
            waypoint_col++;

            transport_vis.header.frame_id = "odom";
            transport_vis.header.stamp = time_replan;
            transport_vis.type = visualization_msgs::Marker::MESH_RESOURCE;
            transport_vis.action = visualization_msgs::Marker::ADD;
            transport_vis.mesh_resource = "package://grid_path_searcher/pcd/transport.dae";
            transport_vis.ns = "way_pts";
            transport_vis.id = i+1;

            transport_vis.pose.position.x = point(0);
            transport_vis.pose.position.y = point(1);
            transport_vis.pose.position.z = point(2);

            transport_vis.pose.orientation.x = 0.0;
            transport_vis.pose.orientation.y = 0.0;
            transport_vis.pose.orientation.z = - sqrt(2)/2;
            transport_vis.pose.orientation.w = sqrt(2)/2;

            transport_vis.color.a = 0.18;
            transport_vis.color.r = 0.65;
            transport_vis.color.g = 0.65;
            transport_vis.color.b = 0.65;

            transport_vis.scale.x = mesh_scale_x;
            transport_vis.scale.y = mesh_scale_y;
            transport_vis.scale.z = mesh_scale_z;
            ROS_INFO("POINT3: %f", point(3));

            transport_vis_array.markers.push_back(transport_vis);
        }

        
        // cout<<"Position: \n"<<pt<<"Angle:"<<point(3)<<endl;
        node_vis.points.push_back(pt);
    }

    pt.x = _target_pt(0);
    pt.y = _target_pt(1);
    pt.z = _target_pt(2);

    wayPoints.col(1)(0) = _target_pt(0);
    wayPoints.col(1)(1) = _target_pt(1);
    wayPoints.col(1)(2) = _target_pt(2);

    cout<<"Target Position: \n"<<pt<<endl;
    node_vis.points.push_back(pt);

    transport_vis.header.frame_id = "odom";
    transport_vis.header.stamp = time_replan;
    transport_vis.type = visualization_msgs::Marker::MESH_RESOURCE;
    transport_vis.action = visualization_msgs::Marker::ADD;
    transport_vis.mesh_resource = "package://grid_path_searcher/pcd/transport.dae";
    transport_vis.ns = "goal_pt";
    transport_vis.id = int(nodes.size());

    transport_vis.pose.position.x = _target_pt(0);
    transport_vis.pose.position.y = _target_pt(1);
    transport_vis.pose.position.z = _target_pt(2);

    transport_vis.pose.orientation.x = 0.0;
    transport_vis.pose.orientation.y = 0.0;
    transport_vis.pose.orientation.z = - sqrt(2)/2;
    transport_vis.pose.orientation.w = sqrt(2)/2;

    transport_vis.color.a = 0.18;
    transport_vis.color.r = 0.65;
    transport_vis.color.g = 0.65;
    transport_vis.color.b = 0.65;

    transport_vis.scale.x = pow(1.6,1/3) * 2 * 0.105*sin(goal_angle_deg/180*M_PI)/sin(_max_angle*M_PI);
    transport_vis.scale.y = pow(1.6,1/3) * 2 * 0.105*sin(goal_angle_deg/180*M_PI)/sin(_max_angle*M_PI);
    transport_vis.scale.z = pow(1.6,1/3) * 1.6 * 0.105*cos(goal_angle_deg/180*M_PI)/cos(_max_angle*M_PI);

    // transport_vis_array.header.stamp = time_replan;
    transport_vis_array.markers.push_back(transport_vis);

    for(int i = 0; i < wayPoints.cols(); i++)
    {
        cout<<wayPoints.col(i)(0)<<"\t"<<wayPoints.col(i)(1)<<"\t"<<wayPoints.col(i)(2)<<endl;
    }

    _grid_path_vis_pub.publish(node_vis);
    boundary_point.position = configuration_path.goal;
    boundary_point.angle = goal_angle_deg * M_PI / 180.0;
    boundary_point.clearance = _astar_path_finder->getEnvelopeClearanceAt(
        _target_pt, goal_angle_deg);
    configuration_path.points.push_back(boundary_point);
    ROS_WARN("A* boundary configurations: start %.3f deg, optimized goal %.3f deg",
             start_angle_deg, goal_angle_deg);
    _configuration_path_pub.publish(configuration_path);
    _transport_vis_pub.publish(transport_vis_array);
    if (_enable_envelope_log && envelope_log.is_open())
    {
        envelope_log.close();
        ROS_WARN("A* envelope log saved: %s", _envelope_log_path.c_str());
        ROS_WARN("A* envelope collisions: all path nodes %d / %zu, visualized nodes %d",
                 envelope_collision_num, nodes.size(), visualized_envelope_collision_num);
    }

    // _waypoints_pub.publish(wayPoints);
}

//发布OpenList/CloseList的方格
void visVisitedNode( vector<Vector3d> nodes )
{   
    visualization_msgs::Marker node_vis; 
    node_vis.header.frame_id = "odom";
    node_vis.header.stamp = ros::Time::now();
    node_vis.ns = "demo_node/expanded_nodes";
    node_vis.type = visualization_msgs::Marker::CUBE_LIST;
    node_vis.action = visualization_msgs::Marker::ADD;
    node_vis.id = 0;

    node_vis.pose.orientation.x = 0.0;
    node_vis.pose.orientation.y = 0.0;
    node_vis.pose.orientation.z = 0.0;
    node_vis.pose.orientation.w = 1.0;
    node_vis.color.a = 0.5;
    node_vis.color.r = 0.0;
    node_vis.color.g = 0.0;
    node_vis.color.b = 1.0;

    node_vis.scale.x = _resolution;
    node_vis.scale.y = _resolution;
    node_vis.scale.z = _resolution;

    geometry_msgs::Point pt;
    for(int i = 0; i < int(nodes.size()); i++)
    {
        Vector3d coord = nodes[i];
        pt.x = coord(0);
        pt.y = coord(1);
        pt.z = coord(2);

        node_vis.points.push_back(pt);
    }

    _visited_nodes_vis_pub.publish(node_vis);
}

void visSearchSize(Eigen::Vector3d _search_lower, Eigen::Vector3d _search_upper)
{   
    visualization_msgs::Marker line_strip;
    line_strip.header.frame_id = "odom";
    line_strip.header.stamp = ros::Time::now();
    line_strip.ns = "Search_Size";
    line_strip.action = visualization_msgs::Marker::ADD;
    line_strip.pose.orientation.w = 1.0;
    line_strip.type = visualization_msgs::Marker::LINE_STRIP;
    line_strip.id = 0;
    line_strip.scale.x = 0.05;
    line_strip.color.r = 0.0;
    line_strip.color.g = 0.0;
    line_strip.color.b = 0.0;
    line_strip.color.a = 0.7;
    geometry_msgs::Point p;
    p.x = _search_lower(0);
    p.y = _search_lower(1);
    p.z = 0.0;
    p.z = _search_upper(2);
    line_strip.points.push_back(p);
    p.x = _search_lower(0);
    p.y = _search_upper(1);
    p.z = 0.0;
    p.z = _search_upper(2);
    line_strip.points.push_back(p);
    p.x = _search_upper(0);
    p.y = _search_upper(1);
    p.z = 0.0;
    p.z = _search_upper(2);
    line_strip.points.push_back(p);
    p.x = _search_upper(0);
    p.y = _search_lower(1);
    p.z = 0.0;
    p.z = _search_upper(2);
    line_strip.points.push_back(p);
    p.x = _search_lower(0);
    p.y = _search_lower(1);
    p.z = 0.0;
    p.z = _search_upper(2);
    line_strip.points.push_back(p);
    _line_strip_pub.publish(line_strip);
}


//路径查找，主要调用Astar的部分接口函数
void pathFinding(const Vector3d start_pt, const Vector3d target_pt)
{
    //调用A星寻路算法
    ros::Time begin = ros::Time::now();
    _astar_path_finder->AstarGraphSearch(start_pt, target_pt);
    ros::Time end = ros::Time::now();
    double duration = (end.toSec() - begin.toSec()) * 1000;
    ROS_INFO("[Astar Node] Astar Path Finding Finished, Duration: %lf ms",duration);

    //通过A星算法得到路径点集和close集合
    auto grid_path     = _astar_path_finder->getPath();
    auto visited_nodes = _astar_path_finder->getVisitedNodes();

    if (grid_path.empty())
    {
        ROS_WARN("[Astar Node] Astar failed to find a feasible path. Skip path visualization and waypoint publishing.");
        clearLoadCorridor();
        visVisitedNode(visited_nodes);
        _astar_path_finder->resetUsedGrids();
        return;
    }

    visGridPath(grid_path);
    visVisitedNode(visited_nodes);

    //重置Astar算法，方便下次掉用
    _astar_path_finder->resetUsedGrids();

}

//主函数
int main(int argc, char** argv)
{
    ros::init(argc, argv, "astar_demo");
    ros::NodeHandle nh("~");

    _map_sub                      = nh.subscribe("map",         1,  rcvPointCloudCallBack,  ros::TransportHints().tcpNoDelay());
    _pts_sub                      = nh.subscribe("waypoints",   1,  rcvWaypointsCallback,   ros::TransportHints().tcpNoDelay());
    _trans_goal_sub               = nh.subscribe("/vrpn_client_node/Trans_goal/pose",  40, transGoalCallback,    ros::TransportHints().tcpNoDelay());
    _polyTrajSub                  = nh.subscribe("/load_planning/trajLoad", 100, polyTrajCallback, ros::TransportHints().tcpNoDelay());


    _grid_map_vis_pub             = nh.advertise<sensor_msgs::PointCloud2>("point_map", 1);
    _grid_path_vis_pub            = nh.advertise<visualization_msgs::Marker>("astar_path", 1);
    _visited_nodes_vis_pub        = nh.advertise<visualization_msgs::Marker>("visited_nodes",1);
    _start_point_vis_pub          = nh.advertise<visualization_msgs::Marker>("start_point",1);
    _target_point_vis_pub         = nh.advertise<visualization_msgs::Marker>("target_point",1);
    _transport_vis_pub            = nh.advertise<visualization_msgs::MarkerArray>("transport_vis",1000);
    _configuration_path_pub       = nh.advertise<quadrotor_msgs::AstarPath>("configuration_path", 1, true);
    _load_corridor_vis_pub        = nh.advertise<visualization_msgs::MarkerArray>("load_corridor", 1, true);
    _load_corridor_data_pub       = nh.advertise<quadrotor_msgs::LoadCorridor>("load_corridor_data", 1, true);
    _line_strip_pub               = nh.advertise<visualization_msgs::Marker>("search_size", 10);

    _replay_pt_pub                = nh.advertise<geometry_msgs::PoseStamped>("replay_pt", 10);

    // _replan_time_pub              = nh.advertise<visualization_msgs::Marker>("search_size", 10);

    // _waypoints_pub                = nh.advertise<Eigen::Matrix3Xd>("my_waypoints",1000);

    nh.param("map/cloud_margin",  _cloud_margin,        0.0);
    nh.param("map/resolution",    _resolution,          0.2);
    nh.param("map/x_size",        _x_size,              50.0);
    nh.param("map/y_size",        _y_size,              50.0);
    nh.param("map/z_size",        _z_size,              5.0);

    nh.param("map/isExp",         _isExp,                   false);
    nh.param("map/isReplanMode",  _isReplanMode,            false);
    nh.param("map/isReplanDemo1",  _isReplanDemo1,          false);
    nh.param("map/isReplanDemo2",  _isReplanDemo2,          false);
    nh.param("map/isNarrowSlitMode",  _isNarrowSlitMode,    false);

    nh.param("map/time_ahead",    _time_ahead,          0.240);

    nh.param("search/x_max",      _search_x_max,              10.0);
    nh.param("search/x_min",      _search_x_min,              -10.0);
    nh.param("search/y_max",      _search_y_max,              10.0);
    nh.param("search/y_min",      _search_y_min,              -10.0);
    nh.param("search/z_max",      _search_z_max,              5.0);
    nh.param("search/z_min",      _search_z_min,              0.0);
    
    nh.param("heuristic/distance",          _distance,          string("euclidean"));
    nh.param("weight/a",                    _weight_a,          1.0);
    nh.param("weight/b",                    _weight_b,          1.0);
    nh.param("weight/length",               _length,            1.2);
    nh.param("weight/angle",                _weight_angle,      1.0);
    nh.param("weight/clearance",            _weight_clearance,  2.0);
    nh.param("weight/smooth",               _weight_smooth,     15.0);
    nh.param("safety/clearance",            _safety_clearance,  0.6);
    nh.param("weight/max_angle",            _max_angle,         1.0/3.0);
    nh.param("weight/min_angle",            _min_angle,         1.0/6.0);
    if (!nh.getParam("weight/angle_resolution", _angle_resolution))
    {
        nh.param("weight/angle_resulution", _angle_resolution, 10);
    }
    nh.param("configuration/max_angle_step", _max_angle_step,   1);
    nh.param("configuration/enforce_boundary_angle", _enforce_boundary_angle, false);
    nh.param("configuration/boundary_angle_pi", _boundary_angle_pi, 0.2186667);
    nh.param("configuration/check_transition", _check_transition, false);
    nh.param("configuration/transition_position_step", _transition_position_step, 0.1);
    nh.param("configuration/transition_angle_step_deg", _transition_angle_step_deg, 3.0);

    nh.param("wayPts/wayPointSplitNum",     _wayPointSplitNum,  3);

    nh.param("wayPts/targetAngle", _tar_ang, 0.0);
    nh.param("debug/enable_envelope_log", _enable_envelope_log, false);
    nh.param("debug/envelope_log_path", _envelope_log_path, string("/tmp/marts_astar_envelope.csv"));
    nh.param("corridor/enable", _enable_load_corridor, false);
    nh.param("safety/enforce_system_clearance", _enforce_system_clearance, false);
    nh.param("corridor/load_clearance", _load_corridor_clearance, 0.3);
    nh.param("corridor/max_segment_length", _load_corridor_segment_length, 2.4);
    nh.param("corridor/min_segment_length", _load_corridor_min_segment_length, 0.8);
    nh.param("corridor/longitudinal_overlap", _load_corridor_longitudinal_overlap, 0.2);
    nh.param("corridor/complexity_radius", _load_corridor_complexity_radius, 1.2);
    nh.param("corridor/clearance_weight", _load_corridor_clearance_weight, 0.8);
    nh.param("corridor/density_weight", _load_corridor_density_weight, 3.0);
    nh.param("corridor/min_extent", _load_corridor_min_extent, 0.6);
    nh.param("corridor/max_extent", _load_corridor_max_extent, 2.0);
    nh.param("corridor/extent_gain", _load_corridor_extent_gain, 1.5);
    nh.param("corridor/payload_radius", _load_corridor_payload_radius, 0.05);
    nh.param("corridor/cable_radius", _load_corridor_cable_radius, 0.02);
    nh.param("corridor/drone_radius", _load_corridor_drone_radius, 0.125);
    nh.param("corridor/bridge_safety_factor", _load_corridor_bridge_safety_factor, 0.6);
    nh.param("corridor/min_overlap_radius", _load_corridor_min_overlap_radius, 0.01);
    nh.param("corridor/ellipsoid_transverse_scale",
             _load_corridor_ellipsoid_transverse_scale, 0.8);
    nh.param("corridor/ellipsoid_max_longitudinal_radius",
             _load_corridor_ellipsoid_max_longitudinal_radius, 1.0);
    nh.param("corridor/smoothing/enable", _enable_corridor_path_smoothing, false);
    nh.param("corridor/smoothing/iterations", _corridor_smoothing_iterations, 8);
    nh.param("corridor/smoothing/position_gain", _corridor_smoothing_position_gain, 0.45);
    nh.param("corridor/smoothing/angle_gain", _corridor_smoothing_angle_gain, 0.35);
    nh.param("corridor/smoothing/max_deviation", _corridor_smoothing_max_deviation, 0.6);
    nh.param("corridor/smoothing/min_clearance", _corridor_smoothing_min_clearance, 0.0);
    _corridor_smoothing_iterations = std::max(0, _corridor_smoothing_iterations);
    _corridor_smoothing_position_gain = std::max(0.0, _corridor_smoothing_position_gain);
    _corridor_smoothing_angle_gain = std::max(0.0, _corridor_smoothing_angle_gain);
    _corridor_smoothing_max_deviation = std::max(0.0, _corridor_smoothing_max_deviation);
    _corridor_smoothing_min_clearance = std::max(0.0, _corridor_smoothing_min_clearance);
    _load_corridor_bridge_safety_factor = std::max(
        0.05, std::min(0.95, _load_corridor_bridge_safety_factor));
    _load_corridor_min_overlap_radius = std::max(
        0.0, _load_corridor_min_overlap_radius);
    _load_corridor_ellipsoid_transverse_scale = std::max(
        0.1, std::min(1.0, _load_corridor_ellipsoid_transverse_scale));
    _load_corridor_ellipsoid_max_longitudinal_radius = std::max(
        _load_corridor_min_overlap_radius,
        _load_corridor_ellipsoid_max_longitudinal_radius);

    //地图三轴最小和最大尺寸 世界坐标系(单位m)
    _map_lower << - _x_size/2.0, - _y_size/2.0,     0.0;
    _map_upper << + _x_size/2.0, + _y_size/2.0, _z_size;

    //搜索三轴最小和最大尺寸 世界坐标系(单位m)
    _search_lower << _search_x_min, _search_y_min, _search_z_min;
    _search_upper << _search_x_max, _search_y_max, _search_z_max;  
    
    //分辨率倒数
    _inv_resolution = 1.0 / _resolution;
    
    //栅格坐标系(与世界坐标系相差分辨率)下，整个点云地图的宽、长、高
    _max_x_id = (int)(_x_size * _inv_resolution);
    _max_y_id = (int)(_y_size * _inv_resolution);
    _max_z_id = (int)(_z_size * _inv_resolution);
    
    //构建astar指针对象
    _astar_path_finder = new AstarPathFinder(_distance,
                                              _weight_a,
                                              _weight_b,
                                              _weight_angle,
                                              _weight_clearance,
                                              _weight_smooth,
                                              _safety_clearance,
                                              _length,
                                                  _max_angle,
                                                  _min_angle,
                                                  _angle_resolution,
                                                  _max_angle_step,
                                                  _enforce_boundary_angle,
                                                  _boundary_angle_pi,
                                                  _check_transition,
                                                  _transition_position_step,
                                                  _transition_angle_step_deg * M_PI / 180.0,
                                                  _enforce_system_clearance,
                                                  _load_corridor_payload_radius,
                                                  _load_corridor_cable_radius,
                                                  _load_corridor_drone_radius,
                                                  _load_corridor_clearance);
    
    //初始化点云地图
    _astar_path_finder  -> initGridMap(_resolution, _map_lower, _map_upper, _search_lower, _search_upper, _max_x_id, _max_y_id, _max_z_id);

    ros::Rate rate(1000);
    bool status = ros::ok();

    while(status) 
    {
        visSearchSize(_search_lower, _search_upper);

        ros::spinOnce();      
        status = ros::ok();
        rate.sleep();
    }

    //删除astar指针对象
    delete _astar_path_finder;
    return 0;
}
