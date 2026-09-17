#include "Astar.h"
#include <functional>
#include <limits>
#include <math.h>
#include <queue>
using namespace std;
using namespace Eigen;

namespace
{
// Preserve the envelope geometry used by the original node feasibility check.
constexpr double kAstarLateralScale = 1.0;
}

//TODO 1算法初始化
std::function<double(Eigen::Vector3d, Eigen::Vector3d)>Distance;

/***
 *@函数功能   计算两节点间的欧式距离
 ------------------------------------------------
 *@参数       node1_coord    节点1
 *@参数       node2_coord    节点2
 ------------------------------------------------
 *@返回值     欧式距离值：根号√((x2-x1)^2+(y2-y1)^2)
 */
double EuclideanDistance(Eigen::Vector3d node1_coord,Eigen::Vector3d node2_coord)
{
    double h= std::sqrt(std::pow((node1_coord(0) - node2_coord(0)), 2 ) +
              std::pow((node1_coord(1) - node2_coord(1)), 2 ) +
              std::pow((node1_coord(2) - node2_coord(2)), 2 ));
    return h;
}

/***
*@函数功能   计算两点间的曼哈顿距离
------------------------------------------------
*@参数       node1_coord    节点1
*@参数       node2_coord    节点2
------------------------------------------------
*@返回值    曼哈顿距离值：|(x2-x1)+(y2-y1)|
*/
double ManhattanDistance(Eigen::Vector3d node1_coord,Eigen::Vector3d node2_coord)
{
   double h = std::abs(node1_coord(0) - node2_coord(0) ) +
            std::abs(node1_coord(1) - node2_coord(1) ) +
            std::abs(node1_coord(2) - node2_coord(2) );
    return h;
}

/****************构造函数*****************/
/*
参数：
_distance           Astar算法的启发距离函数
_weight_a           Astar算法的权重a
_weight_b           Astar算法的权重a
_weight_angle       Astar算法的权重angle
_length             绳子的长度
_max_angle          绳子的最大角度
_min_angle          绳子的最小角度
_angle_resolution   绳子角度遍历的分辨率
*/
AstarPathFinder::AstarPathFinder(std::string _distance,
                                 double _weight_a,
                                 double _weight_b,
                                 double _weight_angle,
                                 double _weight_clearance,
                                 double _weight_smooth,
                                 double _safety_clearance,
                                 double _length,
                                 double _max_angle,
                                 double _min_angle,
                                 int _angle_resolution,
                                 int _max_angle_step,
                                 bool _enforce_boundary_angle,
                                 double _boundary_angle_pi,
                                 bool _check_transition,
                                 double _transition_position_step,
                                 double _transition_angle_step,
                                 bool _enforce_system_clearance,
                                 double _payload_radius,
                                 double _cable_radius,
                                 double _drone_radius,
                                 double _system_extra_clearance)
    : distance(_distance),
      weight_a(_weight_a),
      weight_b(_weight_b),
      weight_angle(_weight_angle),
      weight_clearance(_weight_clearance),
      weight_smooth(_weight_smooth),
      safety_clearance(_safety_clearance),
      length(_length),
      max_angle(_max_angle),
      min_angle(_min_angle),
      angle_resolution(std::max(1, _angle_resolution)),
      max_angle_step(std::max(1, _max_angle_step)),
	      enforce_boundary_angle(_enforce_boundary_angle),
	      boundary_angle_pi(_boundary_angle_pi),
	      check_transition(_check_transition),
	      transition_position_step(std::max(1.0e-3, _transition_position_step)),
	      transition_angle_step(std::max(1.0e-4, _transition_angle_step)),
	      enforce_system_clearance(_enforce_system_clearance),
	      payload_radius(std::max(0.0, _payload_radius)),
	      cable_radius(std::max(0.0, _cable_radius)),
	      drone_radius(std::max(0.0, _drone_radius)),
	      system_extra_clearance(std::max(0.0, _system_extra_clearance)),
	      transition_check_count(0),
	      transition_reject_count(0),
	      selected_start_angle_deg(std::numeric_limits<double>::quiet_NaN()),
	      distance_field_dirty(true)
{
   terminatePtr = nullptr;
   if (distance=="euclidean")
   {   
       std::cout<<"use euclidean distance"<<std::endl;
       Distance=EuclideanDistance;
   }
   else if (distance=="manhattan")
   {
       std::cout<<"use manhattan distance"<<std::endl;
       Distance=ManhattanDistance;
   }
   std::cout<<"weight a:"<<weight_a
            <<" weight b:"<<weight_b
            <<" weight nominal:"<<weight_angle
            <<" weight clearance:"<<weight_clearance
            <<" weight smooth:"<<weight_smooth
            <<" safety clearance:"<<safety_clearance
            <<" length:"<<length
            <<" max_angle:"<<max_angle<<"PI"
            <<" min_angle:"<<min_angle<<"PI"
            <<" angle_resolution:"<<angle_resolution
            <<" max_angle_step:"<<max_angle_step
            <<" enforce_boundary_angle:"<<(enforce_boundary_angle ? "true" : "false")
            <<" boundary_angle:"<<boundary_angle_pi<<"PI"
            <<" check_transition:"<<(check_transition ? "true" : "false")
            <<" transition_position_step:"<<transition_position_step
            <<" transition_angle_step:"<<transition_angle_step * 180.0 / M_PI<<"deg"
            <<" enforce_system_clearance:"<<(enforce_system_clearance ? "true" : "false")
            <<" payload_radius:"<<payload_radius
            <<" cable_radius:"<<cable_radius
            <<" drone_radius:"<<drone_radius
            <<" extra_clearance:"<<system_extra_clearance<<std::endl;
};

//TODO 2地图相关操作
/****************初始化点云地图*****************/
/*
参数：
_resolution    分辨率
global_xyz_l   世界坐标系下点云地图三轴最小尺寸
global_xyz_u   世界坐标系下点云地图三轴最大尺寸
max_x_id       栅格坐标系(与世界坐标系相差分辨率)下，整个点云地图的宽
max_y_id       栅格坐标系(与世界坐标系相差分辨率)下，整个点云地图的长
max_z_id       栅格坐标系(与世界坐标系相差分辨率)下，整个点云地图的高
*/
void AstarPathFinder::initGridMap(double _resolution, Vector3d global_xyz_l, Vector3d global_xyz_u,Eigen::Vector3d search_xyz_l, Eigen::Vector3d search_xyz_u, int max_x_id, int max_y_id, int max_z_id)
{   
    gl_xl = global_xyz_l(0);  //世界坐标系下点云地图x轴最小尺寸
    gl_yl = global_xyz_l(1);  //世界坐标系下点云地图y轴最小尺寸
    gl_zl = global_xyz_l(2);  //世界坐标系下点云地图z轴最小尺寸

    gl_xu = global_xyz_u(0);  //世界坐标系下点云地图x轴最大尺寸
    gl_yu = global_xyz_u(1);  //世界坐标系下点云地图y轴最大尺寸
    gl_zu = global_xyz_u(2);  //世界坐标系下点云地图z轴最大尺寸

    search_x_min = search_xyz_l(0);
    search_y_min = search_xyz_l(1);
    search_z_min = search_xyz_l(2);

    search_x_max = search_xyz_u(0);
    search_y_max = search_xyz_u(1);
    search_z_max = search_xyz_u(2);

    GLX_SIZE = max_x_id;
    GLY_SIZE = max_y_id;
    GLZ_SIZE = max_z_id;
    GLYZ_SIZE  = GLY_SIZE * GLZ_SIZE;
    GLXYZ_SIZE = GLX_SIZE * GLYZ_SIZE;

    resolution = _resolution;
    inv_resolution = 1.0 / _resolution;

    std::cout<< "-------------------------------------------------------------" << std::endl;
    std::cout<< "-------------------------------------------------------------" << std::endl;
    std::cout<< "Map X Min: "       << gl_xl        << " " << "Map X Max: "    << gl_xu        << std::endl;
    std::cout<< "Map Y Min: "       << gl_yl        << " " << "Map Y Max: "    << gl_yu        << std::endl;
    std::cout<< "Map Z Min: "       << gl_zl        << " " << "Map Z Max: "    << gl_zu        << std::endl;
    std::cout<< "Search X Min: "    << search_x_min << " " << "Search X Max: " << search_x_max << std::endl;
    std::cout<< "Search Y Min: "    << search_y_min << " " << "Search Y Max: " << search_y_max << std::endl;
    std::cout<< "Search Z Min: "    << search_z_min << " " << "Search Z Max: " << search_z_max << std::endl;
    std::cout<< "Resolution:"       << resolution   << std::endl;
    std::cout<< "-------------------------------------------------------------" << std::endl;
    std::cout<< "-------------------------------------------------------------" << std::endl;

    /*自己更改的地图形式*/
    data.resize(GLXYZ_SIZE * sizeof(uint8_t),0); //构建一维点云栅格数据存储格式Z->Y->X  0表示空闲，1表示障碍物 
    GridNodeMap.resize(GLX_SIZE);
    for (int i=0;i<GLX_SIZE;i++)
    {
        GridNodeMap[i].resize(GLY_SIZE);
        for (int j=0;j<GLY_SIZE;j++)
        {
            GridNodeMap[i][j].resize(GLZ_SIZE);
            for (int k=0;k<GLZ_SIZE;k++)
            {
                Vector3i tmpIdx(i,j,k);     //栅格索引 
                Vector3d pos = gridIndex2coord(tmpIdx);  //该栅格对应的世界坐标系下的点云位置坐标
                GridNodeMap[i][j][k].resize(angle_resolution + 1);
                for (int angle_idx = 0; angle_idx <= angle_resolution; angle_idx++)
                {
                    GridNodeMap[i][j][k][angle_idx] =
                        new GridNode(tmpIdx, pos, angle_idx, angleDeg(angle_idx));
                }
            }
        }
    }
    obstacle_distance.assign(GLXYZ_SIZE, std::numeric_limits<double>::infinity());
    distance_field_dirty = true;
    /*原先形式*/
/*
    data = new uint8_t[GLXYZ_SIZE];    //构建一维点云栅格数据存储格式Z->Y->X  0表示空闲，1表示障碍物 
    memset(data, 0, GLXYZ_SIZE * sizeof(uint8_t));
    GridNodeMap = new GridNodePtr ** [GLX_SIZE];
    for(int i = 0; i < GLX_SIZE; i++)
    {
        GridNodeMap[i] = new GridNodePtr * [GLY_SIZE];
        for(int j = 0; j < GLY_SIZE; j++)
        {
            GridNodeMap[i][j] = new GridNodePtr [GLZ_SIZE];
            for( int k = 0; k < GLZ_SIZE;k++)
            {
                Vector3i tmpIdx(i,j,k);     //栅格索引 
                Vector3d pos = gridIndex2coord(tmpIdx);  //该栅格对应的世界坐标系下的点云位置坐标
                GridNodeMap[i][j][k] = new GridNode(tmpIdx, pos);
            }
        }
    }
*/
}

void AstarPathFinder::clearObs()
{
    for (auto& element : data)
    {
        element = 0;
    }
    distance_field_dirty = true;
}

/****************设置一维点云数据格式中的障碍物的位置*****************/
/*
参数：
coord_x       世界坐标系下，某个障碍物点云的x值
coord_y       世界坐标系下，某个障碍物点云的y值
coord_z       世界坐标系下，某个障碍物点云的z值
*/
void AstarPathFinder::setObs(const double coord_x, const double coord_y, const double coord_z)
{   
    //安全性校验
    if( coord_x < gl_xl  || coord_y < gl_yl  || coord_z <  gl_zl || 
        coord_x >= gl_xu || coord_y >= gl_yu || coord_z >= gl_zu )
        return;
    //世界坐标系-->栅格坐标系
    int idx_x = static_cast<int>( (coord_x - gl_xl) * inv_resolution);
    int idx_y = static_cast<int>( (coord_y - gl_yl) * inv_resolution);
    int idx_z = static_cast<int>( (coord_z - gl_zl) * inv_resolution);      
    //数据是按照Z->Y->X方向进行数据排序的 1表示该位置为障碍物
    data[idx_x * GLYZ_SIZE + idx_y * GLZ_SIZE + idx_z] = 1;
    distance_field_dirty = true;
}

/****************栅格转世界*****************/
/*
参数：
index    栅格索引
返回值：  该栅格所定应的世界坐标系下点云位置坐标
*/
Vector3d AstarPathFinder::gridIndex2coord(const Vector3i & index) 
{
    Vector3d pt;

    pt(0) = ((double)index(0) + 0.5) * resolution + gl_xl;
    pt(1) = ((double)index(1) + 0.5) * resolution + gl_yl;
    pt(2) = ((double)index(2) + 0.5) * resolution + gl_zl;

    return pt;
}

/****************世界转栅格*****************/
/*
参数：
pt       世界坐标系下点云索引
返回值：  对应的栅格坐标系的栅格索引
*/
Vector3i AstarPathFinder::coord2gridIndex(const Vector3d & pt) const
{
    Vector3i idx;
    /*
        0<=(pt(0) - gl_xl) * inv_resolution)<=GLX_SIZE - 1
        0<=(pt(1) - gl_yl) * inv_resolution)<=GLY_SIZE - 1
        0<=(pt(2) - gl_zl) * inv_resolution)<=GLZ_SIZE - 1
    */
    idx <<  min( max( int( (pt(0) - gl_xl) * inv_resolution), 0), GLX_SIZE - 1),
            min( max( int( (pt(1) - gl_yl) * inv_resolution), 0), GLY_SIZE - 1),
            min( max( int( (pt(2) - gl_zl) * inv_resolution), 0), GLZ_SIZE - 1);                  
  
    return idx;
}

Eigen::Vector3d AstarPathFinder::coordRounding(const Eigen::Vector3d & coord)
{
    return gridIndex2coord(coord2gridIndex(coord));
}

double AstarPathFinder::angleRad(const int angle_index) const
{
    return M_PI * (max_angle - (max_angle - min_angle) *
                  double(angle_index) / double(angle_resolution));
}

double AstarPathFinder::angleDeg(const int angle_index) const
{
    return 180.0 * (max_angle - (max_angle - min_angle) *
                   double(angle_index) / double(angle_resolution));
}

int AstarPathFinder::nearestAngleIndex(const double angle_pi) const
{
    if (max_angle <= min_angle)
        return 0;

    const double index = (max_angle - angle_pi)
                       / (max_angle - min_angle) * angle_resolution;
    return std::max(0, std::min(angle_resolution,
                                static_cast<int>(std::round(index))));
}

double AstarPathFinder::clearancePenalty(const double clearance) const
{
    if (safety_clearance <= 0.0 || !std::isfinite(clearance) || clearance >= safety_clearance)
    {
        return 0.0;
    }

    const double ratio = std::max(0.0, (safety_clearance - clearance) / safety_clearance);
    return ratio * ratio;
}

void AstarPathFinder::updateObstacleDistanceField()
{
    if (!distance_field_dirty)
    {
        return;
    }

    const double infinity = std::numeric_limits<double>::infinity();
    obstacle_distance.assign(GLXYZ_SIZE, infinity);
    using QueueEntry = std::pair<double, int>;
    std::priority_queue<QueueEntry, std::vector<QueueEntry>, std::greater<QueueEntry>> queue;

    for (int linear_idx = 0; linear_idx < GLXYZ_SIZE; linear_idx++)
    {
        if (data[linear_idx] == 1)
        {
            obstacle_distance[linear_idx] = 0.0;
            queue.emplace(0.0, linear_idx);
        }
    }

    while (!queue.empty())
    {
        const double current_distance = queue.top().first;
        const int linear_idx = queue.top().second;
        queue.pop();

        if (current_distance > obstacle_distance[linear_idx])
        {
            continue;
        }

        const int x = linear_idx / GLYZ_SIZE;
        const int remainder = linear_idx % GLYZ_SIZE;
        const int y = remainder / GLZ_SIZE;
        const int z = remainder % GLZ_SIZE;

        for (int dx = -1; dx <= 1; dx++)
        {
            for (int dy = -1; dy <= 1; dy++)
            {
                for (int dz = -1; dz <= 1; dz++)
                {
                    if (dx == 0 && dy == 0 && dz == 0)
                    {
                        continue;
                    }

                    const int nx = x + dx;
                    const int ny = y + dy;
                    const int nz = z + dz;
                    if (nx < 0 || nx >= GLX_SIZE ||
                        ny < 0 || ny >= GLY_SIZE ||
                        nz < 0 || nz >= GLZ_SIZE)
                    {
                        continue;
                    }

                    const int neighbor_idx = nx * GLYZ_SIZE + ny * GLZ_SIZE + nz;
                    const double step = resolution * std::sqrt(double(dx * dx + dy * dy + dz * dz));
                    const double candidate_distance = current_distance + step;
                    if (candidate_distance < obstacle_distance[neighbor_idx])
                    {
                        obstacle_distance[neighbor_idx] = candidate_distance;
                        queue.emplace(candidate_distance, neighbor_idx);
                    }
                }
            }
        }
    }

    distance_field_dirty = false;
}


//TODO 3 Astar本体实现
/****************Astar的核心函数*****************/
/*
参数：
start_pt   世界坐标系下点云中起点位置
end_pt     世界坐标系下点云中终点位置
*/
void AstarPathFinder::AstarGraphSearch(Vector3d start_pt, Vector3d end_pt)
{   
    ros::Time time_1 = ros::Time::now();    
    terminatePtr = nullptr;
    transition_check_count = 0;
    transition_reject_count = 0;
    selected_start_angle_deg = std::numeric_limits<double>::quiet_NaN();
    updateObstacleDistanceField();

    //世界转栅格坐标系
    Vector3i start_idx = coord2gridIndex(start_pt);
    Vector3i end_idx   = coord2gridIndex(end_pt);
    goalIdx = end_idx;

    //栅格转世界坐标系
    start_pt = gridIndex2coord(start_idx);
    end_pt   = gridIndex2coord(end_idx);

    //算法开始前，清空open列表 类型：std::multimap<double, GridNodePtr>
    openSet.clear();

    const int boundary_angle_idx = nearestAngleIndex(boundary_angle_pi);
    int start_angle_idx = -1;
    double start_clearance = 0.0;
    if (enforce_boundary_angle)
    {
        if (evaluateEnvelope(start_idx(0), start_idx(1), start_idx(2),
                             length, angleRad(boundary_angle_idx), resolution, start_clearance))
        {
            start_angle_idx = boundary_angle_idx;
        }
    }
    else
    {
        for (int angle_idx = 0; angle_idx <= angle_resolution; angle_idx++)
        {
            if (evaluateEnvelope(start_idx(0), start_idx(1), start_idx(2),
                                 length, angleRad(angle_idx), resolution, start_clearance))
            {
                start_angle_idx = angle_idx;
                break;
            }
        }
    }

    if (start_angle_idx < 0)
    {
        ROS_WARN("[A*]{failed} No feasible configuration at the start point.");
        return;
    }

    selected_start_angle_deg = angleDeg(start_angle_idx);

    GridNodePtr startPtr = GridNodeMap[start_idx(0)][start_idx(1)][start_idx(2)][start_angle_idx];
    // The initial configuration is the system's current state.  At the goal,
    // any feasible angle is accepted so A* can select the minimum-cost one.
    GridNodePtr endPtr = GridNodeMap[end_idx(0)][end_idx(1)][end_idx(2)][0];
    const double start_nominal = std::pow(double(start_angle_idx) / double(angle_resolution), 2.0);
    startPtr->gScore = weight_angle * start_nominal;
    startPtr->nominalScore = start_nominal;
    startPtr->clearance = start_clearance;
    startPtr->fScore = weight_a * startPtr->gScore + weight_b * calHeu(startPtr, endPtr);
    startPtr->id = 1;
    startPtr->nodeMapIt = openSet.insert(make_pair(startPtr->fScore, startPtr));

    Eigen::Vector3i current_idx;
    vector<GridNodePtr> neighborPtrSets;
    vector<TransitionCost> transitionCostSets;

    // Astar的Loop过程
    while ( !openSet.empty() )
    {
        //通过取multimap刚开始键所定义值，就表示f值最小的节点，当然刚开始currentPtr就是起点
        GridNodePtr currentPtr = openSet.begin() -> second;
        //从openSet中移除该点
        openSet.erase(openSet.begin()); 
        if (currentPtr->id == -1)
        {
            continue;
        }
        //当前该点的栅格索引
        current_idx = currentPtr->index;
        //将当前点的栅格索引标记为closelist  表示该点已经访问过
        currentPtr->id = -1;
        
        //当前点==终点，Astar结束，打印算法所需的时间差
        if(currentPtr->index == goalIdx)
        {
            ros::Time time_2 = ros::Time::now();
            terminatePtr = currentPtr;
            ROS_WARN("[A*]{success} Time: %.3f ms, total cost: %.6f, "
                     "Jd: %.6f, Jc: %.6f, Js: %.6f, Jn: %.6f, goal angle: %.3f deg, "
                     "clearance: %.3f m",
                     (time_2 - time_1).toSec() * 1000.0,
                     currentPtr->gScore,
                     currentPtr->distanceScore,
                     currentPtr->clearanceScore,
                     currentPtr->smoothScore,
                     currentPtr->nominalScore,
                     currentPtr->angle,
                     currentPtr->clearance);
            ROS_WARN("[A*] transition checks: %zu, rejected: %zu",
                     transition_check_count, transition_reject_count);
            return;
        }

        //寻找Astar中该点的邻居点集  
        AstarGetSucc(currentPtr, neighborPtrSets, transitionCostSets);
        
        //遍历当前点所有的邻居点
        for(int i = 0; i < (int)neighborPtrSets.size(); i++)
        {
            GridNodePtr neighborPtr = neighborPtrSets[i];
            const TransitionCost &cost = transitionCostSets[i];
            const double transition_cost =
                cost.distance +
                weight_clearance * cost.clearance +
                weight_smooth * cost.smooth +
                weight_angle * cost.nominal;
            const double tentative_g = currentPtr->gScore + transition_cost;

            if (neighborPtr->id == -1 || tentative_g >= neighborPtr->gScore)
            {
                continue;
            }

            if (neighborPtr->id == 1)
            {
                openSet.erase(neighborPtr->nodeMapIt);
            }

            neighborPtr->gScore = tentative_g;
            neighborPtr->fScore = weight_a * tentative_g + weight_b * calHeu(neighborPtr, endPtr);
            neighborPtr->cameFrom = currentPtr;
            neighborPtr->distanceScore = currentPtr->distanceScore + cost.distance;
            neighborPtr->clearanceScore = currentPtr->clearanceScore + cost.clearance;
            neighborPtr->smoothScore = currentPtr->smoothScore + cost.smooth;
            neighborPtr->nominalScore = currentPtr->nominalScore + cost.nominal;
            neighborPtr->nodeMapIt = openSet.insert(make_pair(neighborPtr->fScore, neighborPtr));
            neighborPtr->id = 1;
        }      
    }
    //搜索时间超过了0.1s，表示搜索失败
    ros::Time time_2 = ros::Time::now();
    if((time_2 - time_1).toSec() > 0.1)
        ROS_WARN("Time consume in Astar path finding is %f", (time_2 - time_1).toSec() );
    ROS_WARN("[A*]{failed} No feasible path found.");
    ROS_WARN("[A*] transition checks: %zu, rejected: %zu",
             transition_check_count, transition_reject_count);
}

/****************计算Astar的启发式H值*****************/
/*
参数：
node1     世界坐标系下点云中点1的指针对象
node2     世界坐标系下点云中点2的指针对象
返回值：   世界坐标系下两点之间的H值
*/
double AstarPathFinder::calHeu(GridNodePtr node1, GridNodePtr node2)
{
    double h;
    Eigen::Vector3d node1_coord = node1->coord;
    Eigen::Vector3d node2_coord = node2->coord;
    h=Distance(node1_coord,node2_coord);

    // if (distance=="euclidean")
    // {
    //     //欧式距离，h值的计算使用的世界坐标系下两个节点的真实距离
    //     h = std::sqrt(std::pow((node1_coord(0) - node2_coord(0)), 2 ) +
    //     std::pow((node1_coord(1) - node2_coord(1)), 2 ) +
    //     std::pow((node1_coord(2) - node2_coord(2)), 2 ));
    // }
    // else if (distance=="manhattan")
    // {
    //     h = std::abs(node1_coord(0) - node2_coord(0) ) +
    //         std::abs(node1_coord(1) - node2_coord(1) ) +
    //         std::abs(node1_coord(2) - node2_coord(2) );
    // }
    return h;
}

/****************寻找Astar中该点的邻居点集*****************/
/*
参数：
neighborPtrSets     合适邻居节点
transitionCostSets  路径、安全裕度、构型平滑和标称构型代价
*/
inline void AstarPathFinder::AstarGetSucc(GridNodePtr currentPtr,
                                          vector<GridNodePtr> &neighborPtrSets,
                                          vector<TransitionCost> &transitionCostSets)
{   
    neighborPtrSets.clear();
    transitionCostSets.clear();
  
    if(currentPtr == nullptr)
    {
        std::cout << "Error: Current pointer is null!" << endl;
        return;
    }

    Eigen::Vector3i thisNode = currentPtr -> index;
    int this_x = thisNode[0];
    int this_y = thisNode[1];
    int this_z = thisNode[2];
    auto this_coord = currentPtr -> coord;
    int n_x, n_y, n_z;
    
    for(int i = -1;i <= 1;++i )
    {
        for(int j = -1;j <= 1;++j )
        {
            for(int k = -1;k <= 1;++k)
            {
                if (i == 0 && j == 0 && k == 0)
                {
                    continue;
                }
                n_x = this_x + i;
                n_y = this_y + j;
                n_z = this_z + k;
                //去除边界点
                if( (n_x < 0) || (n_x > (GLX_SIZE - 1)) || (n_y < 0) || (n_y > (GLY_SIZE - 1) ) || (n_z < 0) || (n_z > (GLZ_SIZE - 1)))
                    continue;

                for (int angle_delta = -max_angle_step;
                     angle_delta <= max_angle_step;
                     angle_delta++)
                {
                    const int next_angle_idx = currentPtr->angle_index + angle_delta;
                    if (next_angle_idx < 0 || next_angle_idx > angle_resolution)
                    {
                        continue;
                    }

                    GridNodePtr temp_ptr = GridNodeMap[n_x][n_y][n_z][next_angle_idx];
                    if (temp_ptr->id == -1)
                    {
                        continue;
                    }

                    double endpoint_clearance = 0.0;
                    if (!evaluateEnvelope(n_x, n_y, n_z,
                                          length, angleRad(next_angle_idx),
                                          resolution, endpoint_clearance))
                    {
                        continue;
                    }

                    const Eigen::Vector3d next_position =
                        GridNodeMap[n_x][n_y][n_z][next_angle_idx]->coord;
                    double transition_clearance = endpoint_clearance;
                    if (check_transition)
                    {
                        ++transition_check_count;
                        if (!evaluateTransition(currentPtr, next_position,
                                                next_angle_idx, transition_clearance))
                        {
                            ++transition_reject_count;
                            continue;
                        }
                    }

                    temp_ptr->clearance = endpoint_clearance;

                    const Eigen::Vector3d n_coord = temp_ptr->coord;
                    const double dist = (n_coord - this_coord).norm();
                    const double normalized_angle_delta =
                        double(next_angle_idx - currentPtr->angle_index) / double(angle_resolution);
                    const double normalized_nominal_offset =
                        double(next_angle_idx) / double(angle_resolution);

                    TransitionCost cost;
                    cost.distance = dist;
                    cost.clearance = clearancePenalty(transition_clearance);
                    cost.smooth = normalized_angle_delta * normalized_angle_delta;
                    cost.nominal = normalized_nominal_offset * normalized_nominal_offset;

                    neighborPtrSets.push_back(temp_ptr);
                    transitionCostSets.push_back(cost);
                }
            }
        }
    }
}

bool AstarPathFinder::isOccupied(
    const int & idx_x, const int & idx_y, const int & idx_z,
    const double & l, const double & phi,
    const double & res) const 
{
    double clearance = 0.0;
    return !evaluateEnvelope(idx_x, idx_y, idx_z, l, phi, res, clearance);
}

double AstarPathFinder::requiredEnvelopeClearance(const int layer,
                                                  const int height) const
{
    if (!enforce_system_clearance)
    {
        return 0.0;
    }

    double radius = cable_radius;
    if (layer == 0)
    {
        radius = std::max(radius, payload_radius);
    }
    if (layer == height)
    {
        radius = std::max(radius, drone_radius);
    }
    return radius + system_extra_clearance;
}

bool AstarPathFinder::evaluateEnvelope(
    const int &idx_x, const int &idx_y, const int &idx_z,
    const double &l, const double &phi,
    const double &res, double &clearance) const
{
    clearance = std::numeric_limits<double>::infinity();
    if(((double)idx_x + 0.5) * resolution + gl_xl > search_x_max || ((double)idx_x + 0.5) * resolution + gl_xl < search_x_min)
        return false;
    if(((double)idx_y + 0.5) * resolution + gl_yl > search_y_max || ((double)idx_y + 0.5) * resolution + gl_yl < search_y_min)
        return false;
    if(((double)idx_z + 0.5) * resolution + gl_zl > search_z_max || ((double)idx_z + 0.5) * resolution + gl_zl < search_z_min)
        return false;

    int height = ceil(l * cos(phi) / res);
    for(int h = 0;h <= height;h++)
    {
        const double required_clearance = requiredEnvelopeClearance(h, height);
        int len = ceil(kAstarLateralScale * l * sin(phi) / res * double(h+1)/double(height));
        for(int x = 0;x <= len;x++)
            for(int y = 0;y <= len;y++)
                {
                    const int voxel_x = idx_x + x - len / 2;
                    const int voxel_y = idx_y + y - len / 2;
                    const int voxel_z = idx_z + h;
                    if (voxel_x < 0 || voxel_x >= GLX_SIZE ||
                        voxel_y < 0 || voxel_y >= GLY_SIZE ||
                        voxel_z < 0 || voxel_z >= GLZ_SIZE)
                    {
                        return false;
                    }

                    const int linear_idx = voxel_x * GLYZ_SIZE + voxel_y * GLZ_SIZE + voxel_z;
                    const double obstacle_clearance = obstacle_distance.empty()
                        ? (data[linear_idx] == 1
                               ? 0.0
                               : std::numeric_limits<double>::infinity())
                        : obstacle_distance[linear_idx];
                    if (obstacle_clearance + 1.0e-9 < required_clearance ||
                        data[linear_idx] == 1)
                    {
                        clearance = 0.0;
                        return false;
                    }
                    clearance = std::min(
                        clearance, obstacle_clearance - required_clearance);
                }
    }
    return true;
}

bool AstarPathFinder::evaluateEnvelopeAtPosition(
    const Eigen::Vector3d &position, const double &l, const double &phi,
    const double &res, double &clearance) const
{
    clearance = std::numeric_limits<double>::infinity();
    if (position(0) > search_x_max || position(0) < search_x_min ||
        position(1) > search_y_max || position(1) < search_y_min ||
        position(2) > search_z_max || position(2) < search_z_min)
    {
        return false;
    }

    const int height = std::max(1, static_cast<int>(std::ceil(l * std::cos(phi) / res)));
    for (int h = 0; h <= height; ++h)
    {
        const double required_clearance = requiredEnvelopeClearance(h, height);
        const int len = static_cast<int>(std::ceil(
            kAstarLateralScale * l * std::sin(phi) / res * double(h + 1) / double(height)));
        for (int x = 0; x <= len; ++x)
        {
            for (int y = 0; y <= len; ++y)
            {
                const Eigen::Vector3d sample = position + Eigen::Vector3d(
                    (x - len / 2) * res, (y - len / 2) * res, h * res);
                const int voxel_x = static_cast<int>(std::floor((sample(0) - gl_xl) * inv_resolution));
                const int voxel_y = static_cast<int>(std::floor((sample(1) - gl_yl) * inv_resolution));
                const int voxel_z = static_cast<int>(std::floor((sample(2) - gl_zl) * inv_resolution));
                if (voxel_x < 0 || voxel_x >= GLX_SIZE ||
                    voxel_y < 0 || voxel_y >= GLY_SIZE ||
                    voxel_z < 0 || voxel_z >= GLZ_SIZE)
                {
                    return false;
                }

                const int linear_idx = voxel_x * GLYZ_SIZE + voxel_y * GLZ_SIZE + voxel_z;
                const double obstacle_clearance = obstacle_distance.empty()
                    ? (data[linear_idx] == 1
                           ? 0.0
                           : std::numeric_limits<double>::infinity())
                    : obstacle_distance[linear_idx];
                if (obstacle_clearance + 1.0e-9 < required_clearance ||
                    data[linear_idx] == 1)
                {
                    clearance = 0.0;
                    return false;
                }
                clearance = std::min(
                    clearance, obstacle_clearance - required_clearance);
            }
        }
    }
    return true;
}

bool AstarPathFinder::evaluateTransition(
    const GridNodePtr currentPtr, const Eigen::Vector3d &next_position,
    const int next_angle_index, double &clearance) const
{
    const Eigen::Vector3d delta_position = next_position - currentPtr->coord;
    const double current_angle = angleRad(currentPtr->angle_index);
    const double next_angle = angleRad(next_angle_index);
    const double delta_angle = next_angle - current_angle;
    const int position_steps = static_cast<int>(
        std::ceil(delta_position.norm() / transition_position_step));
    const int angle_steps = static_cast<int>(
        std::ceil(std::abs(delta_angle) / transition_angle_step));
    const int steps = std::max(1, std::max(position_steps, angle_steps));

    clearance = std::numeric_limits<double>::infinity();
    for (int step = 1; step <= steps; ++step)
    {
        const double alpha = double(step) / double(steps);
        const Eigen::Vector3d position = currentPtr->coord + alpha * delta_position;
        const double angle = current_angle + alpha * delta_angle;
        double sample_clearance = 0.0;
        if (!evaluateEnvelopeAtPosition(position, length, angle,
                                        resolution, sample_clearance))
        {
            clearance = 0.0;
            return false;
        }
        clearance = std::min(clearance, sample_clearance);
    }
    return true;
}

/****************障碍物判断*****************/
/*
参数：
idx_x    栅格坐标系下某点的x值
idx_y    栅格坐标系下某点的y值
idx_z    栅格坐标系下某点的z值
返回值：  true是障碍物  false不是障碍物
*/
// inline bool AstarPathFinder::isOccupied(const int & idx_x, const int & idx_y, const int & idx_z) const 
// {


//     return  (idx_x >= 0 && idx_x < GLX_SIZE && idx_y >= 0 && idx_y < GLY_SIZE && idx_z >= 0 && idx_z < GLZ_SIZE && 
//             (data[idx_x * GLYZ_SIZE + idx_y * GLZ_SIZE + idx_z] == 1));
// }

/****************获取Astar的路径*****************/
vector<Vector4d> AstarPathFinder::getPath() 
{   
    Vector4d point;
    vector<Vector4d> path;
    vector<GridNodePtr> gridPath;

    if (terminatePtr == nullptr)
    {
        ROS_WARN("[A*] getPath called but terminatePtr is null. Return empty path.");
        return path;
    }

    auto ptr = terminatePtr;
    while(ptr -> cameFrom != NULL)
    {
        gridPath.push_back(ptr);
        ptr = ptr->cameFrom;
    }

    for (auto ptr: gridPath)
    {
        point(0) = ptr->coord(0);
        point(1) = ptr->coord(1);
        point(2) = ptr->coord(2);
        point(3) = ptr->angle;
        path.push_back(point);
    }

    //翻转路径点  
    reverse(path.begin(),path.end());

    return path;
}

/****************获取closelist中点的世界坐标下的索引*****************/
double AstarPathFinder::getStartAngleDeg() const
{
    return selected_start_angle_deg;
}

vector<Vector3d> AstarPathFinder::getVisitedNodes()
{   
    vector<Vector3d> visited_nodes;
    for(int i = 0; i < GLX_SIZE; i++)
        for(int j = 0; j < GLY_SIZE; j++)
            for(int k = 0; k < GLZ_SIZE; k++){
                for (int angle_idx = 0; angle_idx <= angle_resolution; angle_idx++)
                {
                    if(GridNodeMap[i][j][k][angle_idx]->id == -1)
                    {
                        visited_nodes.push_back(GridNodeMap[i][j][k][angle_idx]->coord);
                        break;
                    }
                }
            }

    ROS_WARN("visited_nodes size : %zu", visited_nodes.size());
    return visited_nodes;
}

bool AstarPathFinder::checkEnvelopeAt(const Eigen::Vector3d &pt,
                                      const double &angle_deg,
                                      int &height_cells,
                                      int &top_len_cells,
                                      double &height_m,
                                      double &top_width_m)
{
    const double angle = angle_deg / 180.0 * M_PI;
    const Eigen::Vector3i idx = coord2gridIndex(pt);
    height_cells = ceil(length * cos(angle) / resolution);
    top_len_cells = ceil(kAstarLateralScale * length * sin(angle) / resolution);
    height_m = length * cos(angle);
    top_width_m = top_len_cells * resolution;
    return isOccupied(idx(0), idx(1), idx(2), length, angle, resolution);
}

bool AstarPathFinder::getEnvelopeVoxelsAt(const Eigen::Vector3d &pt,
                                          const double &angle_deg,
                                          std::vector<Eigen::Vector3d> &voxels)
{
    voxels.clear();
    const double angle = angle_deg / 180.0 * M_PI;
    const Eigen::Vector3i idx = coord2gridIndex(pt);
    const int height = ceil(length * cos(angle) / resolution);
    bool occupied = false;

    for (int h = 0; h <= height; h++)
    {
        const int len = ceil(kAstarLateralScale * length * sin(angle) / resolution * double(h + 1) / double(height));
        for (int x = 0; x <= len; x++)
        {
            for (int y = 0; y <= len; y++)
            {
                const int vx = idx(0) + x - len / 2;
                const int vy = idx(1) + y - len / 2;
                const int vz = idx(2) + h;
                if (vx >= 0 && vx < GLX_SIZE &&
                    vy >= 0 && vy < GLY_SIZE &&
                    vz >= 0 && vz < GLZ_SIZE)
                {
                    voxels.push_back(gridIndex2coord(Eigen::Vector3i(vx, vy, vz)));
                    if (data[vx * GLYZ_SIZE + vy * GLZ_SIZE + vz] == 1)
                    {
                        occupied = true;
                    }
                }
            }
        }
    }

    return occupied;
}

double AstarPathFinder::getEnvelopeClearanceAt(const Eigen::Vector3d &pt,
                                               const double &angle_deg)
{
    updateObstacleDistanceField();
    const Eigen::Vector3i idx = coord2gridIndex(pt);
    double clearance = 0.0;
    if (!evaluateEnvelope(idx(0), idx(1), idx(2),
                          length, angle_deg / 180.0 * M_PI, resolution,
                          clearance))
    {
        return 0.0;
    }
    return clearance;
}

bool AstarPathFinder::checkConfigurationAtPosition(
    const Eigen::Vector3d &pt, const double &angle_deg, double &clearance)
{
    updateObstacleDistanceField();
    return evaluateEnvelopeAtPosition(
        pt, length, angle_deg * M_PI / 180.0, resolution, clearance);
}

bool AstarPathFinder::checkConfigurationTransition(
    const Eigen::Vector3d &start_pt, const double &start_angle_deg,
    const Eigen::Vector3d &end_pt, const double &end_angle_deg,
    double &clearance)
{
    updateObstacleDistanceField();
    const Eigen::Vector3d delta_position = end_pt - start_pt;
    const double start_angle = start_angle_deg * M_PI / 180.0;
    const double end_angle = end_angle_deg * M_PI / 180.0;
    const double delta_angle = end_angle - start_angle;
    const int position_steps = static_cast<int>(
        std::ceil(delta_position.norm() / transition_position_step));
    const int angle_steps = static_cast<int>(
        std::ceil(std::abs(delta_angle) / transition_angle_step));
    const int steps = std::max(1, std::max(position_steps, angle_steps));

    clearance = std::numeric_limits<double>::infinity();
    for (int step = 0; step <= steps; ++step)
    {
        const double alpha = double(step) / double(steps);
        double sample_clearance = 0.0;
        if (!evaluateEnvelopeAtPosition(
                start_pt + alpha * delta_position,
                length, start_angle + alpha * delta_angle,
                resolution, sample_clearance))
        {
            clearance = 0.0;
            return false;
        }
        clearance = std::min(clearance, sample_clearance);
    }
    return true;
}

double AstarPathFinder::getPointClearanceAt(const Eigen::Vector3d &pt)
{
    updateObstacleDistanceField();
    if (pt(0) < search_x_min || pt(0) > search_x_max ||
        pt(1) < search_y_min || pt(1) > search_y_max ||
        pt(2) < search_z_min || pt(2) > search_z_max)
    {
        return 0.0;
    }
    const Eigen::Vector3i idx = coord2gridIndex(pt);
    return obstacle_distance[idx(0) * GLYZ_SIZE + idx(1) * GLZ_SIZE + idx(2)];
}

double AstarPathFinder::getLocalOccupancyRatio(const Eigen::Vector3d &pt,
                                               const double &radius) const
{
    if (radius <= 0.0)
    {
        return 0.0;
    }

    const Eigen::Vector3d radius_vector = Eigen::Vector3d::Constant(radius);
    const Eigen::Vector3i lower_idx = coord2gridIndex(pt - radius_vector);
    const Eigen::Vector3i upper_idx = coord2gridIndex(pt + radius_vector);
    std::size_t occupied = 0;
    std::size_t total = 0;
    for (int x = lower_idx(0); x <= upper_idx(0); ++x)
    {
        for (int y = lower_idx(1); y <= upper_idx(1); ++y)
        {
            for (int z = lower_idx(2); z <= upper_idx(2); ++z)
            {
                ++total;
                const int linear_idx = x * GLYZ_SIZE + y * GLZ_SIZE + z;
                occupied += data[linear_idx] == 1 ? 1 : 0;
            }
        }
    }
    return total > 0 ? double(occupied) / double(total) : 0.0;
}

/****************Astar节点重置*****************/
void AstarPathFinder::resetGrid(GridNodePtr ptr)
{
    ptr->id = 0;
    ptr->cameFrom = NULL;
    ptr->gScore = inf;
    ptr->fScore = inf;
    ptr->distanceScore = 0.0;
    ptr->clearanceScore = 0.0;
    ptr->smoothScore = 0.0;
    ptr->nominalScore = 0.0;
    ptr->clearance = inf;
}
void AstarPathFinder::resetUsedGrids()
{   
    for(int i=0; i < GLX_SIZE ; i++)
        for(int j=0; j < GLY_SIZE ; j++)
            for(int k=0; k < GLZ_SIZE ; k++)
                for (int angle_idx = 0; angle_idx <= angle_resolution; angle_idx++)
                    resetGrid(GridNodeMap[i][j][k][angle_idx]);

}
