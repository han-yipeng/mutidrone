#include "misc/visualizer.hpp"
#include "gcopter/trajectory.hpp"
#include "gcopter/gcopter.hpp"
#include "gcopter/flatness.hpp"
#include "gcopter/voxel_map.hpp"
#include "gcopter/sfc_gen.hpp"
#include "gcopter/display.hpp"
#include "gcopter/maneuver.hpp"
#include "plan_env/grid_map.h"
#include "quadrotor_msgs/PolyTraj.h"
#include "quadrotor_msgs/AstarPath.h"
#include "quadrotor_msgs/LoadCorridor.h"

#include "misc/tinycolormap.hpp"

#include <ros/ros.h>
#include <ros/console.h>
#include <geometry_msgs/Point.h>
#include <geometry_msgs/PoseStamped.h>
#include <sensor_msgs/PointCloud2.h>

#include <cmath>
#include <fstream>
#include <iostream>
#include <limits>
#include <string>
#include <vector>
#include <memory>
#include <chrono>
#include <random>

struct Config
{
    std::string mapTopic;
    std::string targetTopic;
    std::string targetwayPtsTopic;
    std::string astarConfigurationPathTopic;
    std::string loadCorridorTopic;
    double dilateRadius;
    double voxelWidth;
    std::vector<double> mapBound;
    double timeoutRRT;
    double maxHeightQ;
    double minHeightL;
    double maxVelMagL;
    double maxVelMagQ;
    double maxAccMagL;
    double maxBdrMag;
    double maxTiltAngle;
    double maxTheta;
    double maxPsi;
    double minTheta;
    double minPsi;
    double maxT;
    double minT;
    double minThrust;
    double maxThrust;
    double minDistance;
    double clearence;
    double cableLength;
    double massL;
    double massQ;
    double gravAcc;
    double horizDrag;
    double vertDrag;
    double parasDrag;
    double speedEps;
    double weightT;
    double weightE;
    double disBetweenWaypoints;
    std::vector<double> chiVec;
    double smoothingEps;
    int integralIntervs;
    int cableSampleNums;
    double relCostTol;

    int pieceNum;
    int droneNum;
    double percent;
    bool isWayPointsRemovable;
    bool showAll;
    double time_ahead;
    std::vector<double> inifinAngT;
    std::vector<double> initLoadPos;
    std::vector<double> endLoadPos;
    std::vector<double> continuityDescend;
    std::vector<double> boundaryConditionSlack;
    bool enableDroneCollisionLog;
    double droneCollisionLogDt;
    std::string droneCollisionLogPath;
    bool enableDroneAttitudeLog;
    std::string droneAttitudeLogPath;
    bool useAstarConfigurationReference;
    bool useLoadCorridor;
    double corridorParameterizationScale;
    int corridorTemporalGroups;
    double corridorNarrowExtentThreshold;
    double corridorNarrowMarginThreshold;
    int corridorNarrowPadding;
    int corridorTerminalGuardJunctions;
    double configurationTrackingWeight;
    double cableDroneCollisionWeight;
    double loadGroundPenaltyScale;
    double cableThetaRateWeight;
    double cablePsiRateWeight;
    double cableThetaAccWeight;
    double cablePsiAccWeight;
    double maxCableThetaRate;
    double maxCablePsiRate;
    double maxCableThetaAcc;
    double maxCablePsiAcc;
    double cableRateLimitWeight;
    double cableAccLimitWeight;
    bool rejectCableKinematicViolation;
    bool optimizeTerminalPsi;
    double cableKinematicCheckDt;
    std::string cableKinematicLogPath;
    std::string configurationTrackingLogPath;
    bool enableClearanceHardWaypoints;
    double hardWaypointClearanceThreshold;
    std::string hardWaypointLogPath;

    Config(const ros::NodeHandle &nh_priv)
    {
        nh_priv.getParam("MapTopic", mapTopic);
        nh_priv.getParam("TargetTopic", targetTopic);
        nh_priv.getParam("TargetwayPtsTopic", targetwayPtsTopic);
        nh_priv.param("AstarConfigurationPathTopic", astarConfigurationPathTopic,
                      std::string("/astar_path_searcher/configuration_path"));
        nh_priv.param("LoadCorridorTopic", loadCorridorTopic,
                      std::string("/astar_path_searcher/load_corridor_data"));
        nh_priv.getParam("DilateRadius", dilateRadius);
        nh_priv.getParam("VoxelWidth", voxelWidth);
        nh_priv.getParam("MapBound", mapBound);
        nh_priv.getParam("TimeoutRRT", timeoutRRT);
        nh_priv.getParam("Percent", percent);
        nh_priv.getParam("MaxHeightQ", maxHeightQ);
        nh_priv.getParam("MinHeightL", minHeightL);
        nh_priv.getParam("MaxVelMagL", maxVelMagL);
        nh_priv.getParam("MaxVelMagQ", maxVelMagQ);
        nh_priv.getParam("MaxAccMagL", maxAccMagL);
        nh_priv.getParam("MaxBdrMag", maxBdrMag);
        nh_priv.getParam("MaxTiltAngle", maxTiltAngle);
        nh_priv.getParam("MinTheta", minTheta);
        nh_priv.getParam("MaxTheta", maxTheta);
        nh_priv.getParam("MinPsi", minPsi);
        nh_priv.getParam("MaxPsi", maxPsi);
        nh_priv.getParam("MinT", minT);
        nh_priv.getParam("MaxT", maxT);
        nh_priv.getParam("MinThrust", minThrust);
        nh_priv.getParam("MaxThrust", maxThrust);
        nh_priv.getParam("MinDistance", minDistance);
        nh_priv.getParam("Clearence", clearence);
        nh_priv.getParam("CableLength", cableLength);
        nh_priv.getParam("MassL", massL);
        nh_priv.getParam("MassQ", massQ);
        nh_priv.getParam("GravAcc", gravAcc);
        nh_priv.getParam("HorizDrag", horizDrag);
        nh_priv.getParam("VertDrag", vertDrag);
        nh_priv.getParam("ParasDrag", parasDrag);
        nh_priv.getParam("SpeedEps", speedEps);
        nh_priv.getParam("WeightT", weightT);
        nh_priv.getParam("WeightE", weightE);
        nh_priv.getParam("ChiVec", chiVec);
        nh_priv.getParam("IsWayPointsRemovable", isWayPointsRemovable);
        nh_priv.getParam("SmoothingEps", smoothingEps);
        nh_priv.getParam("IntegralIntervs", integralIntervs);
        nh_priv.getParam("CableSampleNums", cableSampleNums);
        nh_priv.getParam("RelCostTol", relCostTol);
        nh_priv.getParam("PieceNum", pieceNum);
        nh_priv.getParam("DroneNum", droneNum);
        nh_priv.getParam("InifinAngT", inifinAngT);
        nh_priv.getParam("InitLoadPos", initLoadPos);
        nh_priv.getParam("EndLoadPos", endLoadPos);
        nh_priv.getParam("DisBetweenWaypoints", disBetweenWaypoints);
        nh_priv.getParam("ContinuityDescend", continuityDescend);
        nh_priv.getParam("BoundaryConditionSlack", boundaryConditionSlack);
        nh_priv.getParam("ShowAll", showAll);
        nh_priv.getParam("time_ahead", time_ahead);
        nh_priv.param("EnableDroneCollisionLog", enableDroneCollisionLog, false);
        nh_priv.param("DroneCollisionLogDt", droneCollisionLogDt, 0.05);
        nh_priv.param("DroneCollisionLogPath", droneCollisionLogPath, std::string("/tmp/marts_drone_collision.csv"));
        nh_priv.param("EnableDroneAttitudeLog", enableDroneAttitudeLog, false);
        nh_priv.param("DroneAttitudeLogPath", droneAttitudeLogPath,
                      std::string("/tmp/marts_drone_attitude.csv"));
        nh_priv.param("UseAstarConfigurationReference", useAstarConfigurationReference, false);
        nh_priv.param("UseLoadCorridor", useLoadCorridor, false);
        nh_priv.param("CorridorParameterizationScale",
                      corridorParameterizationScale, 0.95);
        nh_priv.param("CorridorTemporalGroups", corridorTemporalGroups, 10);
        nh_priv.param("CorridorNarrowExtentThreshold",
                      corridorNarrowExtentThreshold, 0.7);
        nh_priv.param("CorridorNarrowMarginThreshold",
                      corridorNarrowMarginThreshold, 0.0);
        nh_priv.param("CorridorNarrowPadding", corridorNarrowPadding, 0);
        nh_priv.param("CorridorTerminalGuardJunctions",
                      corridorTerminalGuardJunctions, 0);
        corridorParameterizationScale = std::max(
            0.05, std::min(0.999, corridorParameterizationScale));
        corridorTemporalGroups = std::max(1, corridorTemporalGroups);
        corridorNarrowExtentThreshold = std::max(
            0.0, corridorNarrowExtentThreshold);
        corridorNarrowMarginThreshold = std::max(
            0.0, corridorNarrowMarginThreshold);
        corridorNarrowPadding = std::max(0, corridorNarrowPadding);
        corridorTerminalGuardJunctions = std::max(
            0, corridorTerminalGuardJunctions);
        nh_priv.param("ConfigurationTrackingWeight", configurationTrackingWeight, 0.0);
        nh_priv.param("CableDroneCollisionWeight", cableDroneCollisionWeight, 100.0);
        nh_priv.param("LoadGroundPenaltyScale", loadGroundPenaltyScale, 10000.0);
        loadGroundPenaltyScale = std::max(1.0, loadGroundPenaltyScale);
        nh_priv.param("CableThetaRateWeight", cableThetaRateWeight, 100.0);
        nh_priv.param("CablePsiRateWeight", cablePsiRateWeight, 100.0);
        nh_priv.param("CableThetaAccWeight", cableThetaAccWeight, 20.0);
        nh_priv.param("CablePsiAccWeight", cablePsiAccWeight, 20.0);
        nh_priv.param("MaxCableThetaRate", maxCableThetaRate, 0.6);
        nh_priv.param("MaxCablePsiRate", maxCablePsiRate, 0.8);
        nh_priv.param("MaxCableThetaAcc", maxCableThetaAcc, 2.0);
        nh_priv.param("MaxCablePsiAcc", maxCablePsiAcc, 3.0);
        nh_priv.param("CableRateLimitWeight", cableRateLimitWeight, 10000.0);
        nh_priv.param("CableAccLimitWeight", cableAccLimitWeight, 10000.0);
        nh_priv.param("RejectCableKinematicViolation", rejectCableKinematicViolation, false);
        nh_priv.param("OptimizeTerminalPsi", optimizeTerminalPsi, false);
        nh_priv.param("CableKinematicCheckDt", cableKinematicCheckDt, 0.01);
        nh_priv.param("CableKinematicLogPath", cableKinematicLogPath,
                      std::string("/tmp/marts_cable_kinematics.csv"));
        nh_priv.param("ConfigurationTrackingLogPath", configurationTrackingLogPath,
                      std::string("/tmp/marts_configuration_tracking.csv"));
        nh_priv.param("EnableClearanceHardWaypoints",
                      enableClearanceHardWaypoints, false);
        nh_priv.param("HardWaypointClearanceThreshold",
                      hardWaypointClearanceThreshold, 0.8);
        nh_priv.param("HardWaypointLogPath", hardWaypointLogPath,
                      std::string("/tmp/marts_hard_load_waypoints.csv"));
        // cout << "aaaaaaaaaaaaaaaaaaaaa \t " <<  isWayPointsRemovable << endl;

    }
};

class GlobalPlanner
{
private:
    Config config;

    ros::NodeHandle nh;
    ros::Subscriber targetSub;
    ros::Subscriber wayPtsSub;
    ros::Subscriber astarConfigurationPathSub;
    ros::Subscriber loadCorridorSub;
    std::vector<ros::Publisher>  odom_pubs;
    std::vector<ros::Publisher>  line_pubs;
    std::vector<double> traj_all;
    ros::Publisher odom_list_pub;
    std::vector<ros::Publisher>  force_arrow_pubs;
    std::vector<ros::Publisher>  force_arrow_show_pubs;

    std::vector<int> odom_flag;
    std::vector<double> odom_x_before;
    std::vector<double> odom_y_before;
    std::vector<double> odom_z_before;

    

    std::vector<visualization_msgs::MarkerArray> force_list_array;
    std::vector<visualization_msgs::MarkerArray> force_show_list_array;

    bool mapInitialized;
    bool isSuccessOpted = false;
    bool isReplan = false;
    bool replanDone = false;
    bool replan_Done = false;
    int replan_time = 0;
    voxel_map::VoxelMap voxelMap;
    Visualizer visualizer;
    Display display;
    std::vector<Eigen::Vector3d> startGoal;
    Eigen::Matrix3Xd wayPts, wayVels, wayAccs;
    Eigen::Matrix4Xd configurationReference;
    Eigen::MatrixX3d loadCorridorTransitionCenters;
    Eigen::VectorXd loadCorridorTransitionRadii;
    std::vector<Eigen::Matrix3d> loadCorridorTransitionShapes;
    Eigen::VectorXi loadCorridorActiveMask;
    std::vector<Eigen::MatrixXd> loadCorridorPlanes;
    ros::Time loadCorridorStamp;
    bool loadCorridorReady = false;
    bool pendingConfigurationPathReady = false;
    quadrotor_msgs::AstarPath pendingConfigurationPath;
    Eigen::VectorXi fixedWaypointMask;
    Eigen::VectorXi velNums, accNums;

    std::vector<Trajectory<7>> optTrajs;
    std::vector<Trajectory<7>> initTrajs;

    double trajStamp;
    double replan_duration;
    double whole_traj_time;

    double scale;   
    int isshowtime[7];
    int isforcetime[4];
    std::vector<nav_msgs::Odometry>  odom_show;
    GridMap::Ptr grid_map_;
    std::vector<ros::Publisher> polyTrajPub;
    std::vector<quadrotor_msgs::PolyTraj> trajMsgs;

public:
    GlobalPlanner(const Config &conf,
                  ros::NodeHandle &nh_)
        : config(conf),
          nh(nh_),
          mapInitialized(false),
          visualizer(nh)
    {
        trajMsgs.resize(config.droneNum + 1);
        polyTrajPub.resize(config.droneNum + 1);
        polyTrajPub[0] = nh.advertise<quadrotor_msgs::PolyTraj>("load_planning/trajLoad", 10);
        force_list_array.resize(config.droneNum);
        force_show_list_array.resize(config.droneNum);
        traj_all.resize(config.droneNum + 1);

        odom_show.resize(config.droneNum + 1);

        odom_flag.resize(config.droneNum + 1);
        for(int flag = 0;flag <= config.droneNum; flag++)
        {
            odom_flag[flag] = 0;
            traj_all[flag] = 0.0;
        }
        odom_x_before.resize(config.droneNum + 1);
        odom_y_before.resize(config.droneNum + 1);
        odom_z_before.resize(config.droneNum + 1);

        for (int i = 0; i < config.droneNum; i++)
        {
            polyTrajPub[i + 1] = nh.advertise<quadrotor_msgs::PolyTraj>("drone_" + to_string(i + 1) + "_planning/trajCable", 10);
        }
        const Eigen::Vector3i xyz((config.mapBound[1] - config.mapBound[0]) / config.voxelWidth,
                                  (config.mapBound[3] - config.mapBound[2]) / config.voxelWidth,
                                  (config.mapBound[5] - config.mapBound[4]) / config.voxelWidth);

        const Eigen::Vector3d offset(config.mapBound[0], config.mapBound[2], config.mapBound[4]);

        grid_map_.reset(new GridMap);

        grid_map_->initMap();

        targetSub = nh.subscribe(config.targetTopic, 1, &GlobalPlanner::targetCallBack, this,
                                 ros::TransportHints().tcpNoDelay());
        wayPtsSub = nh.subscribe(config.targetwayPtsTopic, 1, &GlobalPlanner::wayPointsCallBack, this,
                                 ros::TransportHints().tcpNoDelay());
        astarConfigurationPathSub = nh.subscribe(config.astarConfigurationPathTopic, 1,
                                 &GlobalPlanner::astarConfigurationPathCallBack, this,
                                 ros::TransportHints().tcpNoDelay());
        loadCorridorSub = nh.subscribe(config.loadCorridorTopic, 1,
                                 &GlobalPlanner::loadCorridorCallBack, this,
                                 ros::TransportHints().tcpNoDelay());
    }

    inline void plan()
    {
        if (startGoal.size() == 2)
        {
            std::vector<Eigen::Vector3d> route;
            if (true)
            {

                Eigen::Matrix<double, 3, 4> iniStateL, finStateL;
                Eigen::Matrix<double, 3, 4> initialStateQ, terminalStateQ;
                Eigen::Vector3d initialAngT, terminalAngT;
                initialAngT(0) = config.inifinAngT[0] * M_PI;
                initialAngT(1) = config.inifinAngT[1] * M_PI;
                initialAngT(2) = config.inifinAngT[2];
                terminalAngT = initialAngT;
                if (configurationReference.cols() > 0)
                {
                    initialAngT(0) = configurationReference(3, 0);
                    terminalAngT(0) = configurationReference(3, configurationReference.cols() - 1);
                }
                iniStateL << startGoal.front(), Eigen::Vector3d::Zero(), Eigen::Vector3d::Zero(), Eigen::Vector3d::Zero();
                finStateL << startGoal.back(), Eigen::Vector3d::Zero(), Eigen::Vector3d::Zero(), Eigen::Vector3d::Zero();
                initialStateQ << initialAngT, Eigen::Vector3d::Zero(), Eigen::Vector3d::Zero(), Eigen::Vector3d::Zero();
                terminalStateQ << terminalAngT, Eigen::Vector3d::Zero(), Eigen::Vector3d::Zero(), Eigen::Vector3d::Zero();
                ROS_WARN("Backend boundary configurations: start %.3f deg, A* goal %.3f deg",
                         initialAngT(0) * 180.0 / M_PI, terminalAngT(0) * 180.0 / M_PI);

                Eigen::Matrix<double, 3, 4> initStateQ_1;
                Eigen::Matrix<double, 3, 4> initStateQ_2;
                Eigen::Matrix<double, 3, 4> initStateQ_3;
                initStateQ_1 << Eigen::Vector3d::Zero(), Eigen::Vector3d::Zero(), Eigen::Vector3d::Zero(), Eigen::Vector3d::Zero();
                initStateQ_2 << Eigen::Vector3d::Zero(), Eigen::Vector3d::Zero(), Eigen::Vector3d::Zero(), Eigen::Vector3d::Zero();
                initStateQ_3 << Eigen::Vector3d::Zero(), Eigen::Vector3d::Zero(), Eigen::Vector3d::Zero(), Eigen::Vector3d::Zero();

                if(isReplan)
                {
                    ROS_INFO("22222222222222222221111111111111111111111");
                    Eigen::Vector3d angT, omg, dAngT, d2AngT, d3AngT, q, dq, d2q, d3q;
                    Eigen::Vector3d posL, velL, accL, jerL, posQ, velQ, accQ, jerQ;

                    posL = optTrajs[0].getPos(replan_duration);
                    velL = optTrajs[0].getVel(replan_duration);
                    accL = optTrajs[0].getAcc(replan_duration);
                    jerL = optTrajs[0].getJer(replan_duration);
                    cout << replan_duration << endl;
                    cout << posL << endl;

                    iniStateL << posL, velL, accL, jerL;

                    angT   = optTrajs[0 + 1].getPos(replan_duration);
                    dAngT  = optTrajs[0 + 1].getVel(replan_duration);
                    d2AngT = optTrajs[0 + 1].getAcc(replan_duration);
                    d3AngT = optTrajs[0 + 1].getJer(replan_duration);

                    initStateQ_1 << angT, dAngT, d2AngT, d3AngT;

                    angT   = optTrajs[1 + 1].getPos(replan_duration);
                    dAngT  = optTrajs[1 + 1].getVel(replan_duration);
                    d2AngT = optTrajs[1 + 1].getAcc(replan_duration);
                    d3AngT = optTrajs[1 + 1].getJer(replan_duration);

                    initStateQ_2 << angT, dAngT, d2AngT, d3AngT;

                    angT   = optTrajs[2 + 1].getPos(replan_duration);
                    dAngT  = optTrajs[2 + 1].getVel(replan_duration);
                    d2AngT = optTrajs[2 + 1].getAcc(replan_duration);
                    d3AngT = optTrajs[2 + 1].getJer(replan_duration);

                    initStateQ_3 << angT, dAngT, d2AngT, d3AngT;

                    replanDone = true;
                    replan_time++;
                }

                gcopter::GCOPTER_PolytopeSFC gcopter;

                static Eigen::VectorXd magnitudeBounds(12);
                static Eigen::VectorXd angTBounds(6);
                static Eigen::VectorXd penaltyWeights(7);
                static Eigen::VectorXd physicalParams(8);
                static Eigen::Vector4d cableDerivativeWeights;
                static Eigen::Vector4d cableDerivativeLimits;
                static Eigen::Vector4d cableDerivativeLimitWeights;
                static Eigen::Vector3d continuityDescend;
                static Eigen::Vector3d boundaryConditionSlack;
                static bool getParam = false;
                if(!getParam)
                {
                    ROS_INFO("i am here !!!!!!!!!!!!!!!!!!!!!");
                    ros::Time start_time1 = ros::Time::now();
                    continuityDescend(0) = config.continuityDescend[0];
                    continuityDescend(1) = config.continuityDescend[1];
                    continuityDescend(2) = config.continuityDescend[2];
                    boundaryConditionSlack(0) = config.boundaryConditionSlack[0];
                    boundaryConditionSlack(1) = config.boundaryConditionSlack[1];
                    boundaryConditionSlack(2) = config.boundaryConditionSlack[2];
                    magnitudeBounds(0) = config.maxVelMagQ;
                    magnitudeBounds(1) = config.maxBdrMag;
                    magnitudeBounds(2) = config.maxTiltAngle;
                    magnitudeBounds(3) = config.minThrust;
                    magnitudeBounds(4) = config.maxThrust;
                    magnitudeBounds(5) = config.maxVelMagL;
                    magnitudeBounds(6) = config.maxAccMagL;
                    magnitudeBounds(7) = config.minDistance;
                    magnitudeBounds(8) = config.disBetweenWaypoints;
                    magnitudeBounds(9) = config.clearence;
                    magnitudeBounds(10) = config.minHeightL;
                    magnitudeBounds(11) = config.maxHeightQ;

                    angTBounds(0) = config.maxTheta * M_PI;
                    angTBounds(1) = config.minTheta * M_PI;
                    angTBounds(2) = M_PI / config.droneNum;
                    angTBounds(3) = -M_PI / config.droneNum;
                    // angTBounds(2) = M_PI * 1.0;
                    // angTBounds(3) = -M_PI * 1.0;
                    angTBounds(4) = config.maxT;
                    angTBounds(5) = config.minT;
                    penaltyWeights(0) = (config.chiVec)[0];
                    penaltyWeights(1) = (config.chiVec)[1];
                    penaltyWeights(2) = (config.chiVec)[2];
                    penaltyWeights(3) = (config.chiVec)[3];
                    penaltyWeights(4) = (config.chiVec)[4];
                    penaltyWeights(5) = (config.chiVec)[5];
                    penaltyWeights(6) = (config.chiVec)[6];
                    physicalParams(0) = config.massQ;
                    physicalParams(1) = config.gravAcc;
                    physicalParams(2) = config.horizDrag;
                    physicalParams(3) = config.vertDrag;
                    physicalParams(4) = config.parasDrag;
                    physicalParams(5) = config.speedEps;
                    physicalParams(6) = config.cableLength;
                    physicalParams(7) = config.massL;
                    cableDerivativeWeights << config.cableThetaRateWeight,
                                              config.cablePsiRateWeight,
                                              config.cableThetaAccWeight,
                                              config.cablePsiAccWeight;
                    cableDerivativeLimits << config.maxCableThetaRate,
                                             config.maxCablePsiRate,
                                             config.maxCableThetaAcc,
                                             config.maxCablePsiAcc;
                    cableDerivativeLimitWeights << config.cableRateLimitWeight,
                                                   config.cableRateLimitWeight,
                                                   config.cableAccLimitWeight,
                                                   config.cableAccLimitWeight;

                    scale = physicalParams(1) * physicalParams(7) / (config.droneNum * cos(config.inifinAngT[0] * M_PI));
                    ros::Time end_time1 = ros::Time::now();
                    ros::Duration duration1 = end_time1 - start_time1;
                    ROS_INFO("Get Param Time Cost: %f", duration1.toSec());

                    getParam = true;
                }
                
                optTrajs.clear();
                optTrajs.resize(config.droneNum + 1);
                initTrajs.clear();
                initTrajs.resize(config.droneNum + 1);
                cout << "AAAAAAAAAAAAAAAAAAA\t"  << config.droneNum << endl;
                display.reset(physicalParams, angTBounds, magnitudeBounds, config.droneNum, scale, config.integralIntervs);
                if (fixedWaypointMask.size() != wayPts.cols())
                {
                    fixedWaypointMask.resize(wayPts.cols());
                    fixedWaypointMask.setConstant(config.isWayPointsRemovable ? 0 : 1);
                }

                if (!gcopter.setup(config.weightT,
                                   config.weightE,
                                   iniStateL, finStateL,
                                   initialStateQ,
                                   terminalStateQ,
                                   initStateQ_1,
                                   initStateQ_2,
                                   initStateQ_3,
                                   isReplan,
                                   wayPts,
                                   config.pieceNum,
                                   config.droneNum,
                                   INFINITY,
                                   config.smoothingEps,
                                   config.isWayPointsRemovable,
                                   fixedWaypointMask,
                                   scale,
                                   config.integralIntervs,
                                   config.cableSampleNums,
                                   magnitudeBounds,
                                   angTBounds,
                                   penaltyWeights,
                                   config.cableDroneCollisionWeight,
                                   config.loadGroundPenaltyScale,
                                   cableDerivativeWeights,
                                   cableDerivativeLimits,
                                   cableDerivativeLimitWeights,
                                   config.optimizeTerminalPsi,
                                   physicalParams,
                                   continuityDescend,
                                   boundaryConditionSlack,
                                   configurationReference,
                                   config.configurationTrackingWeight,
                                   config.useLoadCorridor,
                                   loadCorridorTransitionCenters,
                                   loadCorridorTransitionRadii,
                                   loadCorridorTransitionShapes,
                                   loadCorridorActiveMask,
                                   config.corridorParameterizationScale,
                                   config.corridorTemporalGroups,
                                   grid_map_))
                    return;
                {
                }
                ros::Time start_time = ros::Time::now();
                if (std::isinf(gcopter.optimize(optTrajs, initTrajs, config.relCostTol)))
                {
                    return;
                }
                ros::Time end_time = ros::Time::now();
                ros::Duration duration = end_time - start_time;
                ROS_INFO("Elapsed time: %f seconds", duration.toSec());

                isSuccessOpted = true;

                if (initTrajs[0].getPieceNum() > 0 && optTrajs[0].getPieceNum() > 0)
                {
                    int collisionNum = checkCollision(optTrajs);
                    const int cableKinematicViolationNum = checkCableKinematics(optTrajs);
                    if (config.enableDroneCollisionLog)
                    {
                        logDroneCollision(optTrajs);
                    }
                    if (config.enableDroneAttitudeLog)
                    {
                        logDroneAttitude(optTrajs);
                    }
                    if (config.useAstarConfigurationReference)
                    {
                        logConfigurationTracking(optTrajs);
                    }
                    cout << "ratio\t" << optTrajs[0].getTotalDuration() / initTrajs[0].getTotalDuration() << endl;
                    cout << "init time\t" << initTrajs[0].getTotalDuration() << "init time\t" << optTrajs[0].getTotalDuration() << endl;
                    cout << "Check Collision Nums\t"  << collisionNum << endl;
                    cout << "Cable Kinematic Violation Samples\t"
                         << cableKinematicViolationNum << endl;
                    
                    if(isReplan)
                    {
                        display.displayTrajs(visualizer, optTrajs, config.percent, Eigen::Vector4d(0.0, 0.0, 0.0, 0.0 * 255)/255, 0.20, 0, tinycolormap::ColormapType::Heat);
                        display.displayDrone(visualizer, initTrajs, optTrajs, tinycolormap::ColormapType::Heat, 1.0);
                    }
                    else
                    {
                        display.displayTrajs(visualizer, optTrajs, config.percent, Eigen::Vector4d(0.0, 0.0, 0.0, 0.0 * 255)/255, 0.20, 0, tinycolormap::ColormapType::Gray);
                        display.displayDrone(visualizer, initTrajs, optTrajs, tinycolormap::ColormapType::Gray, 0.3);
                    }
                    // display.displayTrajs(visualizer, optTrajs, config.percent, Eigen::Vector4d(229.0, 183.0, 81.0, 1.0 * 255)/255, 0.2, 0, tinycolormap::ColormapType::Heat);

                    if(config.showAll)
                    {
                        // display.displayTrajs(visualizer, optTrajs, config.percent, Eigen::Vector4d(0.0, 1.0, 0.0, 1.0), 0.1, 1);
                        display.displayDetails(visualizer, initTrajs, optTrajs, gcopter.getVelQs(), gcopter.getOmgQs(), gcopter.getAttQs(), gcopter.getTQs());
                        display.displayAllows(visualizer, optTrajs, config.percent);
                        display.displayBounds(visualizer, optTrajs, config.percent);
                    }

                    trajStamp = ros::Time::now().toSec();

                    whole_traj_time = optTrajs[0].getTotalDuration();

                    polyTraj2ROSMsg(trajMsgs);

                    const bool cableKinematicsAccepted =
                        !config.rejectCableKinematicViolation ||
                        cableKinematicViolationNum == 0;
                    if(collisionNum == 0 && cableKinematicsAccepted)
                    {
                        ROS_INFO("No Collision! Traj is Published!");
                        for (int i = 0; i < config.droneNum + 1; i++)
                        {
                            polyTrajPub[i].publish(trajMsgs[i]);
                        }
                    }
                    else
                    {
                        if (collisionNum != 0)
                            ROS_WARN("Traj has Collisions! Pub is Stopped!");
                        if (!cableKinematicsAccepted)
                            ROS_WARN("Cable rate/acceleration limits are violated! Pub is Stopped!");
                    }

                    // open when is replan mode
                    isReplan = true;

                    // visualizer.tests();
                }
            }
        }
    }

    inline int checkCollision(std::vector<Trajectory<7>> &optTrajs)
    {
        int pieceNum = optTrajs[0].getPieceNum();
        int collisionNum = 0;
        int pieceCheckNum = 2 * config.integralIntervs;
        int cableCheckNum = 2 * config.cableSampleNums;
        Eigen::VectorXd times = optTrajs[0].getDurations();
        Eigen::Vector3d pos, posQ, angT, qs;
        Eigen::Vector2d cst, csp;
        Eigen::Vector4d gs;
        double step, t = 0.0, s;
        double sampleInterval, sampleLen;
        double dist;
        for (int i = 0; i < pieceNum; i++)
        {
            step = times(i) / pieceCheckNum;
            for (int j = 0; j < pieceCheckNum; j++)
            {
                s = t + j * step;
                pos = optTrajs[0].getPos(s);
                grid_map_->evaluateEDT(pos, dist);
                if (dist < 0 || pos(2) < -1.0e-3)
                {
                    collisionNum += 1;
                }
                for (int k = 0; k < config.droneNum; k++)
                {
                    angT = optTrajs[k + 1].getPos(s);
                    angT(1) += 2 * k * M_PI / config.droneNum;
                    cst = getcs(angT(0));
                    csp = getcs(angT(1));
                    qs = getQ(cst, csp, gs);
                    for (int sn = 0; sn < cableCheckNum; sn++)
                    {
                        sampleInterval = config.cableLength / cableCheckNum;
                        sampleLen = (sn + 1) * sampleInterval;
                        posQ = pos + sampleLen * qs;
                        grid_map_->evaluateEDT(posQ, dist);
                        if (dist < 0)
                        {
                            collisionNum += 1;
                        }
                    }
                }
            }
            t += times(i);
        }
        return collisionNum;
    }

    inline int checkCableKinematics(const std::vector<Trajectory<7>> &trajs)
    {
        const double totalDuration = trajs[0].getTotalDuration();
        const double dt = std::max(config.cableKinematicCheckDt, 1.0e-3);
        const int sampleNum = std::max(1, static_cast<int>(std::ceil(totalDuration / dt)));
        std::ofstream ofs(config.cableKinematicLogPath);
        if (ofs.is_open())
        {
            ofs << "sample,time,drone_id,theta_deg,psi_deg,"
                   "theta_rate_deg_s,psi_rate_deg_s,"
                   "theta_acc_deg_s2,psi_acc_deg_s2,"
                   "theta_rate_violation,psi_rate_violation,"
                   "theta_acc_violation,psi_acc_violation\n";
        }
        else
        {
            ROS_WARN("Failed to open cable kinematic log: %s",
                     config.cableKinematicLogPath.c_str());
        }

        double maxThetaRate = 0.0;
        double maxPsiRate = 0.0;
        double maxThetaAcc = 0.0;
        double maxPsiAcc = 0.0;
        int violationSampleNum = 0;
        for (int sample = 0; sample <= sampleNum; ++sample)
        {
            const double t = std::min(sample * dt, totalDuration);
            for (int k = 0; k < config.droneNum; ++k)
            {
                const Eigen::Vector3d angT = trajs[k + 1].getPos(t);
                const Eigen::Vector3d dAngT = trajs[k + 1].getVel(t);
                const Eigen::Vector3d d2AngT = trajs[k + 1].getAcc(t);
                const double thetaRate = std::abs(dAngT(0));
                const double psiRate = std::abs(dAngT(1));
                const double thetaAcc = std::abs(d2AngT(0));
                const double psiAcc = std::abs(d2AngT(1));
                const bool thetaRateViolation = thetaRate > config.maxCableThetaRate;
                const bool psiRateViolation = psiRate > config.maxCablePsiRate;
                const bool thetaAccViolation = thetaAcc > config.maxCableThetaAcc;
                const bool psiAccViolation = psiAcc > config.maxCablePsiAcc;
                const bool anyViolation = thetaRateViolation || psiRateViolation ||
                                          thetaAccViolation || psiAccViolation;

                maxThetaRate = std::max(maxThetaRate, thetaRate);
                maxPsiRate = std::max(maxPsiRate, psiRate);
                maxThetaAcc = std::max(maxThetaAcc, thetaAcc);
                maxPsiAcc = std::max(maxPsiAcc, psiAcc);
                violationSampleNum += anyViolation ? 1 : 0;

                if (ofs.is_open())
                {
                    ofs << sample << "," << t << "," << (k + 1) << ","
                        << angT(0) * 180.0 / M_PI << ","
                        << angT(1) * 180.0 / M_PI << ","
                        << dAngT(0) * 180.0 / M_PI << ","
                        << dAngT(1) * 180.0 / M_PI << ","
                        << d2AngT(0) * 180.0 / M_PI << ","
                        << d2AngT(1) * 180.0 / M_PI << ","
                        << (thetaRateViolation ? 1 : 0) << ","
                        << (psiRateViolation ? 1 : 0) << ","
                        << (thetaAccViolation ? 1 : 0) << ","
                        << (psiAccViolation ? 1 : 0) << "\n";
                }
            }
            if (t >= totalDuration)
                break;
        }

        if (ofs.is_open())
        {
            ofs.close();
            ROS_WARN("Cable kinematic log saved: %s",
                     config.cableKinematicLogPath.c_str());
        }
        ROS_WARN("Cable kinematic summary: max |theta_dot| %.3f deg/s (limit %.3f), "
                 "max |psi_dot| %.3f deg/s (limit %.3f), "
                 "max |theta_ddot| %.3f deg/s^2 (limit %.3f), "
                 "max |psi_ddot| %.3f deg/s^2 (limit %.3f), violation samples %d",
                 maxThetaRate * 180.0 / M_PI,
                 config.maxCableThetaRate * 180.0 / M_PI,
                 maxPsiRate * 180.0 / M_PI,
                 config.maxCablePsiRate * 180.0 / M_PI,
                 maxThetaAcc * 180.0 / M_PI,
                 config.maxCableThetaAcc * 180.0 / M_PI,
                 maxPsiAcc * 180.0 / M_PI,
                 config.maxCablePsiAcc * 180.0 / M_PI,
                 violationSampleNum);
        return violationSampleNum;
    }

    inline int logDroneCollision(std::vector<Trajectory<7>> &optTrajs)
    {
        const double totalDuration = optTrajs[0].getTotalDuration();
        const double dt = std::max(config.droneCollisionLogDt, 1.0e-3);
        const int sampleNum = std::max(1, static_cast<int>(std::ceil(totalDuration / dt)));
        std::ofstream ofs(config.droneCollisionLogPath);
        if (!ofs.is_open())
        {
            ROS_WARN("Failed to open drone collision log: %s", config.droneCollisionLogPath.c_str());
            return -1;
        }

        ofs << "sample,time,body,id,x,y,z,edt_distance,collision,clearance_violation\n";

        int collisionNum = 0;
        int clearanceViolationNum = 0;
        double minDroneDist = std::numeric_limits<double>::infinity();
        double dist;
        Eigen::Vector3d posL, posQ, angT, q;
        Eigen::Vector2d cst, csp;
        Eigen::Vector4d gs;

        for (int sample = 0; sample <= sampleNum; sample++)
        {
            const double t = std::min(sample * dt, totalDuration);
            posL = optTrajs[0].getPos(t);
            grid_map_->evaluateEDT(posL, dist);
            const bool loadCollision = dist < 0.0 || posL(2) < -1.0e-3;
            const bool loadClearanceViolation =
                dist < config.clearence || posL(2) < config.minHeightL;
            ofs << sample << "," << t << ",load,0,"
                << posL(0) << "," << posL(1) << "," << posL(2) << ","
                << dist << "," << (loadCollision ? 1 : 0) << ","
                << (loadClearanceViolation ? 1 : 0) << "\n";

            for (int k = 0; k < config.droneNum; k++)
            {
                angT = optTrajs[k + 1].getPos(t);
                angT(1) += 2 * k * M_PI / config.droneNum;
                cst = getcs(angT(0));
                csp = getcs(angT(1));
                q = getQ(cst, csp, gs);
                posQ = posL + config.cableLength * q;

                grid_map_->evaluateEDT(posQ, dist);
                minDroneDist = std::min(minDroneDist, dist);
                if (dist < 0.0)
                {
                    collisionNum++;
                }
                if (dist < config.clearence)
                {
                    clearanceViolationNum++;
                }

                ofs << sample << "," << t << ",drone," << (k + 1) << ","
                    << posQ(0) << "," << posQ(1) << "," << posQ(2) << ","
                    << dist << "," << (dist < 0.0 ? 1 : 0) << ","
                    << (dist < config.clearence ? 1 : 0) << "\n";
            }

            if (t >= totalDuration)
            {
                break;
            }
        }

        ofs.close();
        ROS_WARN("Drone collision log saved: %s", config.droneCollisionLogPath.c_str());
        ROS_WARN("Drone collision samples: %d, clearance violation samples: %d, min drone EDT: %.3f",
                 collisionNum, clearanceViolationNum, minDroneDist);
        return collisionNum;
    }

    inline void logDroneAttitude(const std::vector<Trajectory<7>> &trajs)
    {
        std::ofstream ofs(config.droneAttitudeLogPath);
        if (!ofs.is_open())
        {
            ROS_WARN("Failed to open drone attitude log: %s",
                     config.droneAttitudeLogPath.c_str());
            return;
        }

        ofs << "sample,time,drone_id,x,y,z,qw,qx,qy,qz,"
               "roll_deg,pitch_deg,yaw_deg,cable_theta_deg,cable_psi_deg,"
               "body_rate_x,body_rate_y,body_rate_z,body_rate_norm,"
               "thrust,thrust_per_mass,tilt_deg,"
               "body_rate_violation,tilt_violation,"
               "thrust_low_violation,thrust_high_violation\n";

        const double totalDuration = trajs[0].getTotalDuration();
        const double dt = std::max(config.droneCollisionLogDt, 1.0e-3);
        const int sampleNum = std::max(1, static_cast<int>(std::ceil(totalDuration / dt)));
        flatness::FlatnessMap flatmap;
        flatmap.reset(config.massQ, config.gravAcc, config.cableLength);

        double maxBodyRate = 0.0;
        double maxTilt = 0.0;
        double minSpecificThrust = std::numeric_limits<double>::infinity();
        double maxSpecificThrust = -std::numeric_limits<double>::infinity();
        int bodyRateViolationNum = 0;
        int tiltViolationNum = 0;
        int thrustViolationNum = 0;

        for (int sample = 0; sample <= sampleNum; ++sample)
        {
            const double t = std::min(sample * dt, totalDuration);
            const Eigen::Vector3d posL = trajs[0].getPos(t);
            const Eigen::Vector3d accL = trajs[0].getAcc(t);
            const Eigen::Vector3d jerL = trajs[0].getJer(t);

            for (int k = 0; k < config.droneNum; ++k)
            {
                Eigen::Vector3d angT = trajs[k + 1].getPos(t);
                angT(1) += 2.0 * k * M_PI / config.droneNum;
                const Eigen::Vector3d dAngT = trajs[k + 1].getVel(t);
                const Eigen::Vector3d d2AngT = trajs[k + 1].getAcc(t);
                const Eigen::Vector3d d3AngT = trajs[k + 1].getJer(t);
                const Eigen::Vector2d cst = getcs(angT(0));
                const Eigen::Vector2d csp = getcs(angT(1));
                Eigen::Vector4d gs;
                const Eigen::Vector3d q = getQ(cst, csp, gs);
                const Eigen::Vector3d dq = getdQ(dAngT.head<2>(), cst);
                const Eigen::Vector3d d2q = getd2Q(dAngT.head<2>(), d2AngT.head<2>(), cst);
                const Eigen::Vector3d d3q = getd3Q(dAngT.head<2>(), d2AngT.head<2>(),
                                                   d3AngT.head<2>(), cst);
                const Eigen::Vector3d posQ = posL + config.cableLength * q;
                const Eigen::Vector3d accQ = accL + config.cableLength * d2q;
                const Eigen::Vector3d jerQ = jerL + config.cableLength * d3q;

                double thrust = 0.0;
                Eigen::Vector4d quat;
                Eigen::Vector3d bodyRate;
                flatmap.forward(accQ, jerQ, q, dq,
                                scale * angT(2), scale * dAngT(2),
                                0.0, 0.0, thrust, quat, bodyRate);

                const double qw = quat(0);
                const double qx = quat(1);
                const double qy = quat(2);
                const double qz = quat(3);
                const double roll = std::atan2(2.0 * (qw * qx + qy * qz),
                                               1.0 - 2.0 * (qx * qx + qy * qy));
                const double sinPitch = 2.0 * (qw * qy - qz * qx);
                const double pitch = std::abs(sinPitch) >= 1.0
                    ? std::copysign(M_PI / 2.0, sinPitch)
                    : std::asin(sinPitch);
                const double yaw = std::atan2(2.0 * (qw * qz + qx * qy),
                                              1.0 - 2.0 * (qy * qy + qz * qz));
                const double tiltCos = std::max(-1.0, std::min(
                    1.0, 1.0 - 2.0 * (qx * qx + qy * qy)));
                const double tilt = std::acos(tiltCos);
                const double bodyRateNorm = bodyRate.norm();
                const double specificThrust = thrust / config.massQ;
                const bool bodyRateViolation = bodyRateNorm > config.maxBdrMag;
                const bool tiltViolation = tilt > config.maxTiltAngle;
                const bool thrustLowViolation = specificThrust < config.minThrust;
                const bool thrustHighViolation = specificThrust > config.maxThrust;

                maxBodyRate = std::max(maxBodyRate, bodyRateNorm);
                maxTilt = std::max(maxTilt, tilt);
                minSpecificThrust = std::min(minSpecificThrust, specificThrust);
                maxSpecificThrust = std::max(maxSpecificThrust, specificThrust);
                bodyRateViolationNum += bodyRateViolation ? 1 : 0;
                tiltViolationNum += tiltViolation ? 1 : 0;
                thrustViolationNum += (thrustLowViolation || thrustHighViolation) ? 1 : 0;

                ofs << sample << "," << t << "," << (k + 1) << ","
                    << posQ(0) << "," << posQ(1) << "," << posQ(2) << ","
                    << qw << "," << qx << "," << qy << "," << qz << ","
                    << roll * 180.0 / M_PI << ","
                    << pitch * 180.0 / M_PI << ","
                    << yaw * 180.0 / M_PI << ","
                    << angT(0) * 180.0 / M_PI << ","
                    << angT(1) * 180.0 / M_PI << ","
                    << bodyRate(0) << "," << bodyRate(1) << "," << bodyRate(2) << ","
                    << bodyRateNorm << "," << thrust << "," << specificThrust << ","
                    << tilt * 180.0 / M_PI << ","
                    << (bodyRateViolation ? 1 : 0) << ","
                    << (tiltViolation ? 1 : 0) << ","
                    << (thrustLowViolation ? 1 : 0) << ","
                    << (thrustHighViolation ? 1 : 0) << "\n";
            }

            if (t >= totalDuration)
                break;
        }

        ofs.close();
        ROS_WARN("Drone attitude log saved: %s", config.droneAttitudeLogPath.c_str());
        ROS_WARN("Drone attitude summary: max body rate %.3f rad/s (limit %.3f), "
                 "max tilt %.3f deg (limit %.3f), specific thrust [%.3f, %.3f] "
                 "(limits [%.3f, %.3f]), violation samples body-rate/tilt/thrust: %d/%d/%d",
                 maxBodyRate, config.maxBdrMag,
                 maxTilt * 180.0 / M_PI, config.maxTiltAngle * 180.0 / M_PI,
                 minSpecificThrust, maxSpecificThrust,
                 config.minThrust, config.maxThrust,
                 bodyRateViolationNum, tiltViolationNum, thrustViolationNum);
    }

    inline double getConfigurationReferenceTheta(const Eigen::Vector3d &position) const
    {
        if (configurationReference.cols() == 0)
            return config.inifinAngT[0] * M_PI;
        if (configurationReference.cols() == 1)
            return configurationReference(3, 0);

        double bestDistanceSquared = std::numeric_limits<double>::infinity();
        double referenceTheta = configurationReference(3, 0);
        for (int i = 0; i + 1 < configurationReference.cols(); ++i)
        {
            const Eigen::Vector3d start = configurationReference.col(i).head<3>();
            const Eigen::Vector3d end = configurationReference.col(i + 1).head<3>();
            const Eigen::Vector3d segment = end - start;
            const double segmentSquaredNorm = segment.squaredNorm();
            const double ratio = segmentSquaredNorm > 1.0e-9
                ? std::max(0.0, std::min(1.0, (position - start).dot(segment) / segmentSquaredNorm))
                : 0.0;
            const double distanceSquared = (position - start - ratio * segment).squaredNorm();
            if (distanceSquared < bestDistanceSquared)
            {
                bestDistanceSquared = distanceSquared;
                referenceTheta = (1.0 - ratio) * configurationReference(3, i)
                               + ratio * configurationReference(3, i + 1);
            }
        }
        return referenceTheta;
    }

    inline void logConfigurationTracking(const std::vector<Trajectory<7>> &trajs)
    {
        if (configurationReference.cols() == 0)
            return;

        std::ofstream ofs(config.configurationTrackingLogPath);
        if (!ofs.is_open())
        {
            ROS_WARN("Failed to open configuration tracking log: %s",
                     config.configurationTrackingLogPath.c_str());
            return;
        }

        ofs << "sample,time,x,y,z,reference_theta_deg,drone_id,actual_theta_deg,error_deg\n";
        const double totalDuration = trajs[0].getTotalDuration();
        const double dt = std::max(config.droneCollisionLogDt, 1.0e-3);
        const int sampleNum = std::max(1, static_cast<int>(std::ceil(totalDuration / dt)));
        double squaredErrorSum = 0.0;
        double maxAbsoluteError = 0.0;
        double minActualTheta = std::numeric_limits<double>::infinity();
        double maxActualTheta = -std::numeric_limits<double>::infinity();
        size_t errorCount = 0;
        for (int sample = 0; sample <= sampleNum; ++sample)
        {
            const double t = std::min(sample * dt, totalDuration);
            const Eigen::Vector3d position = trajs[0].getPos(t);
            const double referenceTheta = getConfigurationReferenceTheta(position);
            for (int k = 0; k < config.droneNum; ++k)
            {
                const double actualTheta = trajs[k + 1].getPos(t)(0);
                minActualTheta = std::min(minActualTheta, actualTheta);
                maxActualTheta = std::max(maxActualTheta, actualTheta);
                const double error = actualTheta - referenceTheta;
                const double errorDeg = error * 180.0 / M_PI;
                squaredErrorSum += errorDeg * errorDeg;
                maxAbsoluteError = std::max(maxAbsoluteError, std::abs(errorDeg));
                ++errorCount;
                ofs << sample << "," << t << ","
                    << position(0) << "," << position(1) << "," << position(2) << ","
                    << referenceTheta * 180.0 / M_PI << "," << (k + 1) << ","
                    << actualTheta * 180.0 / M_PI << "," << errorDeg << "\n";
            }
            if (t >= totalDuration)
                break;
        }

        const double rmsError = errorCount > 0
            ? std::sqrt(squaredErrorSum / static_cast<double>(errorCount)) : 0.0;
        ROS_WARN("Configuration tracking log saved: %s",
                 config.configurationTrackingLogPath.c_str());
        ROS_WARN("Configuration tracking error: RMS %.3f deg, max %.3f deg",
                 rmsError, maxAbsoluteError);
        ROS_WARN("Optimized continuous theta range: [%.3f, %.3f] deg (allowed [%.3f, %.3f] deg)",
                 minActualTheta * 180.0 / M_PI, maxActualTheta * 180.0 / M_PI,
                 config.minTheta * 180.0, config.maxTheta * 180.0);
    }

    inline void loadCorridorCallBack(
        const quadrotor_msgs::LoadCorridorConstPtr &msg)
    {
        if (!config.useLoadCorridor)
            return;
        if (msg->polytopes.empty() ||
            msg->transition_centers.size() + 1 != msg->polytopes.size() ||
            msg->transition_radii.size() != msg->transition_centers.size() ||
            msg->transition_tangents.size() != msg->transition_centers.size() ||
            msg->transition_longitudinal_radii.size() !=
                msg->transition_centers.size() ||
            msg->transition_transverse_radii.size() !=
                msg->transition_centers.size())
        {
            loadCorridorReady = false;
            ROS_WARN("Numerical load corridor is incomplete. Skip corridor update.");
            return;
        }

        std::vector<Eigen::MatrixXd> parsedPlanes;
        std::vector<bool> narrowPolytopes(msg->polytopes.size(), false);
        parsedPlanes.reserve(msg->polytopes.size());
        for (size_t polytopeIndex = 0;
             polytopeIndex < msg->polytopes.size(); ++polytopeIndex)
        {
            const auto &polytope = msg->polytopes[polytopeIndex];
            if (polytope.normals.size() != polytope.offsets.size() ||
                polytope.normals.empty())
            {
                loadCorridorReady = false;
                ROS_WARN("Numerical load corridor contains an invalid polytope.");
                return;
            }
            Eigen::MatrixXd planes(polytope.normals.size(), 4);
            for (size_t i = 0; i < polytope.normals.size(); ++i)
            {
                planes.row(i) << polytope.normals[i].x,
                                 polytope.normals[i].y,
                                 polytope.normals[i].z,
                                 polytope.offsets[i];
            }
            parsedPlanes.push_back(planes);
            narrowPolytopes[polytopeIndex] =
                polytope.clearance_bridge ||
                polytope.local_extent <=
                    config.corridorNarrowExtentThreshold ||
                (config.corridorNarrowMarginThreshold > 0.0 &&
                 polytope.minimum_system_margin <=
                    config.corridorNarrowMarginThreshold);
        }

        loadCorridorTransitionCenters.resize(
            msg->transition_centers.size(), 3);
        loadCorridorTransitionRadii.resize(msg->transition_radii.size());
        loadCorridorTransitionShapes.clear();
        loadCorridorTransitionShapes.reserve(msg->transition_centers.size());
        loadCorridorActiveMask.resize(msg->transition_radii.size());
        loadCorridorActiveMask.setZero();
        for (size_t i = 0; i < msg->transition_centers.size(); ++i)
        {
            loadCorridorTransitionCenters.row(i) <<
                msg->transition_centers[i].x,
                msg->transition_centers[i].y,
                msg->transition_centers[i].z;
            loadCorridorTransitionRadii(i) = msg->transition_radii[i];
            if (!std::isfinite(loadCorridorTransitionRadii(i)) ||
                loadCorridorTransitionRadii(i) <= 0.0)
            {
                loadCorridorReady = false;
                ROS_WARN("Numerical load corridor has a non-positive transition radius.");
                return;
            }
            Eigen::Vector3d tangent(msg->transition_tangents[i].x,
                                    msg->transition_tangents[i].y,
                                    msg->transition_tangents[i].z);
            const double longitudinal =
                msg->transition_longitudinal_radii[i];
            const double transverse =
                msg->transition_transverse_radii[i];
            if (!tangent.allFinite() || tangent.norm() < 1.0e-8 ||
                !std::isfinite(longitudinal) ||
                !std::isfinite(transverse) || transverse <= 0.0 ||
                longitudinal + 1.0e-9 < transverse)
            {
                loadCorridorReady = false;
                ROS_WARN("Numerical load corridor has an invalid transition ellipsoid.");
                return;
            }
            tangent.normalize();
            const Eigen::Matrix3d shape =
                transverse * Eigen::Matrix3d::Identity() +
                (longitudinal - transverse) * tangent * tangent.transpose();
            const Eigen::Vector3d center =
                loadCorridorTransitionCenters.row(i).transpose();
            for (size_t polytopeIndex = i;
                 polytopeIndex <= i + 1; ++polytopeIndex)
            {
                const Eigen::MatrixXd &planes = parsedPlanes[polytopeIndex];
                for (int planeIndex = 0; planeIndex < planes.rows(); ++planeIndex)
                {
                    const Eigen::Vector3d normal =
                        planes.row(planeIndex).head<3>().transpose();
                    const double support = (shape.transpose() * normal).norm();
                    if (normal.dot(center) + support >
                        planes(planeIndex, 3) + 1.0e-5)
                    {
                        loadCorridorReady = false;
                        ROS_WARN("Transition ellipsoid %zu is outside its polytope intersection.", i);
                        return;
                    }
                }
            }
            loadCorridorTransitionShapes.push_back(shape);
            loadCorridorActiveMask(i) =
                (narrowPolytopes[i] && narrowPolytopes[i + 1]) ? 1 : 0;
        }

        const Eigen::VectorXi unpaddedActiveMask = loadCorridorActiveMask;
        for (int i = 0; i < unpaddedActiveMask.size(); ++i)
        {
            if (unpaddedActiveMask(i) == 0)
                continue;
            const int begin = std::max(0, i - config.corridorNarrowPadding);
            const int end = std::min(
                static_cast<int>(loadCorridorActiveMask.size()) - 1,
                i + config.corridorNarrowPadding);
            for (int j = begin; j <= end; ++j)
                loadCorridorActiveMask(j) = 1;
        }
        const int terminalGuardCount = std::min(
            config.corridorTerminalGuardJunctions,
            static_cast<int>(loadCorridorActiveMask.size()));
        for (int i = 0; i < terminalGuardCount; ++i)
        {
            loadCorridorActiveMask(i) = 1;
            loadCorridorActiveMask(loadCorridorActiveMask.size() - 1 - i) = 1;
        }

        loadCorridorPlanes.swap(parsedPlanes);
        loadCorridorStamp = msg->header.stamp;
        loadCorridorReady = true;
        const double minimumTransitionRadius =
            loadCorridorTransitionRadii.size() > 0
                ? loadCorridorTransitionRadii.minCoeff() : 0.0;
        ROS_WARN("Numerical load corridor received: %zu polytopes, %zu "
                 "transition ellipsoids, %d locally constrained junctions, "
                 "minimum radius %.3f m.",
                 loadCorridorPlanes.size(),
                 msg->transition_radii.size(),
                 loadCorridorActiveMask.sum(),
                 minimumTransitionRadius);

        if (pendingConfigurationPathReady &&
            pendingConfigurationPath.header.stamp == loadCorridorStamp)
        {
            quadrotor_msgs::AstarPathConstPtr pending(
                new quadrotor_msgs::AstarPath(pendingConfigurationPath));
            pendingConfigurationPathReady = false;
            astarConfigurationPathCallBack(pending);
        }
    }

    inline void astarConfigurationPathCallBack(const quadrotor_msgs::AstarPathConstPtr &msg)
    {
        if (!config.useAstarConfigurationReference)
            return;
        if (msg->points.empty())
        {
            ROS_WARN("A* configuration reference is empty. Skip planning.");
            return;
        }
        if (config.useLoadCorridor &&
            (!loadCorridorReady || msg->header.stamp != loadCorridorStamp))
        {
            pendingConfigurationPath = *msg;
            pendingConfigurationPathReady = true;
            ROS_WARN("A* configuration path is waiting for the numerical load "
                     "corridor with the same planning timestamp.");
            return;
        }

        startGoal.clear();
        const Eigen::Vector3d start(msg->start.x, msg->start.y, msg->start.z);
        const Eigen::Vector3d goal(msg->goal.x, msg->goal.y, msg->goal.z);
        startGoal.emplace_back(start);
        startGoal.emplace_back(goal);
        visualizer.visualizeStartGoal(start, 0.1, 0);
        visualizer.visualizeStartGoal(goal, 0.1, 1);

        configurationReference.resize(4, msg->points.size());
        std::vector<bool> hardAnchor(msg->points.size(), false);
        size_t hardAnchorNum = 0;
        if (!config.useLoadCorridor &&
            config.enableClearanceHardWaypoints && msg->points.size() >= 5)
        {
            const auto isLowClearance = [&](const size_t index)
            {
                const double clearance = msg->points[index].clearance;
                return std::isfinite(clearance) &&
                       clearance < config.hardWaypointClearanceThreshold;
            };

            // The message contains explicit start/goal entries plus duplicated
            // A* endpoint nodes. Only interior A* nodes can become hard anchors.
            size_t index = 2;
            const size_t interiorEnd = msg->points.size() - 2;
            std::vector<double> pathLength(msg->points.size(), 0.0);
            for (size_t i = index + 1; i < interiorEnd; ++i)
            {
                const Eigen::Vector3d previous(msg->points[i - 1].position.x,
                                               msg->points[i - 1].position.y,
                                               msg->points[i - 1].position.z);
                const Eigen::Vector3d current(msg->points[i].position.x,
                                              msg->points[i].position.y,
                                              msg->points[i].position.z);
                pathLength[i] = pathLength[i - 1] + (current - previous).norm();
            }

            while (index < interiorEnd)
            {
                if (!isLowClearance(index))
                {
                    ++index;
                    continue;
                }

                size_t regionEnd = index + 1;
                while (regionEnd < interiorEnd && isLowClearance(regionEnd))
                    ++regionEnd;

                double weightSum = 0.0;
                double weightedPathLength = 0.0;
                for (size_t i = index; i < regionEnd; ++i)
                {
                    const double danger = config.hardWaypointClearanceThreshold -
                                          msg->points[i].clearance;
                    const double weight = danger * danger;
                    weightSum += weight;
                    weightedPathLength += weight * pathLength[i];
                }

                const double targetPathLength = weightSum > 0.0
                    ? weightedPathLength / weightSum
                    : 0.5 * (pathLength[index] + pathLength[regionEnd - 1]);
                size_t anchorIndex = index;
                double nearestDistance = std::abs(pathLength[index] - targetPathLength);
                for (size_t i = index + 1; i < regionEnd; ++i)
                {
                    const double distance = std::abs(pathLength[i] - targetPathLength);
                    if (distance < nearestDistance)
                    {
                        nearestDistance = distance;
                        anchorIndex = i;
                    }
                }

                hardAnchor[anchorIndex] = true;
                ++hardAnchorNum;
                index = regionEnd;
            }
        }

        size_t waypointNum = 0;
        if (config.useLoadCorridor)
        {
            waypointNum = loadCorridorTransitionCenters.rows();
        }
        else
        {
            for (size_t i = 0; i < msg->points.size(); ++i)
                waypointNum += (msg->points[i].waypoint || hardAnchor[i]) ? 1 : 0;
        }
        wayPts.resize(3, waypointNum);
        fixedWaypointMask.resize(waypointNum);
        fixedWaypointMask.setZero();
        if (config.useLoadCorridor && waypointNum > 0)
        {
            wayPts = loadCorridorTransitionCenters.transpose();
        }

        std::ofstream hardWaypointLog;
        if (config.enableClearanceHardWaypoints)
        {
            hardWaypointLog.open(config.hardWaypointLogPath);
            if (hardWaypointLog.is_open())
            {
                hardWaypointLog
                    << "reference_index,x,y,z,clearance,regular_waypoint\n";
            }
            else
            {
                ROS_WARN("Failed to open hard load waypoint log: %s",
                         config.hardWaypointLogPath.c_str());
            }
        }

        size_t waypointIndex = 0;
        std::vector<Eigen::Vector3d> hardWaypointPositions;
        hardWaypointPositions.reserve(hardAnchorNum);
        for (size_t i = 0; i < msg->points.size(); ++i)
        {
            const auto &point = msg->points[i];
            configurationReference.col(i) << point.position.x,
                                              point.position.y,
                                              point.position.z,
                                              point.angle;
            if (!config.useLoadCorridor &&
                (point.waypoint || hardAnchor[i]))
            {
                wayPts.col(waypointIndex) << point.position.x,
                                             point.position.y,
                                             point.position.z;
                fixedWaypointMask(waypointIndex) = hardAnchor[i] ? 1 : 0;
                ++waypointIndex;
            }
            if (hardAnchor[i])
            {
                hardWaypointPositions.emplace_back(point.position.x,
                                                   point.position.y,
                                                   point.position.z);
                ROS_WARN("Hard load waypoint: reference index %zu, "
                         "position (%.3f, %.3f, %.3f), clearance %.3f m",
                         i, point.position.x, point.position.y,
                         point.position.z, point.clearance);
                if (hardWaypointLog.is_open())
                {
                    hardWaypointLog << i << ","
                                    << point.position.x << ","
                                    << point.position.y << ","
                                    << point.position.z << ","
                                    << point.clearance << ","
                                    << (point.waypoint ? 1 : 0) << "\n";
                }
            }
        }
        visualizer.visualizeHardWaypoints(hardWaypointPositions);

        if (config.useLoadCorridor)
        {
            ROS_WARN("Backend corridor parameterization prepared: %zu load "
                     "trajectory pieces, %d / %zu junctions constrained in "
                     "narrow regions.",
                     loadCorridorPlanes.size(), loadCorridorActiveMask.sum(),
                     waypointNum);
        }

        if (hardWaypointLog.is_open())
        {
            hardWaypointLog.close();
            ROS_WARN("Hard load waypoint log saved: %s",
                     config.hardWaypointLogPath.c_str());
        }

        ROS_WARN("A* configuration reference received: %zu nodes, %zu position waypoints, "
                 "%zu hard load anchors (clearance < %.3f m), tracking weight %.3f",
                 msg->points.size(), waypointNum, hardAnchorNum,
                 config.hardWaypointClearanceThreshold,
                 config.configurationTrackingWeight);
        plan();
    }

    inline void wayPointsCallBack(const visualization_msgs::MarkerArrayConstPtr & msg)
    {
        if (config.useAstarConfigurationReference)
            return;

        const bool containsWaypointData = std::any_of(
            msg->markers.begin(), msg->markers.end(),
            [](const visualization_msgs::Marker &marker)
            {
                return marker.action == visualization_msgs::Marker::ADD;
            });
        if (!containsWaypointData)
            return;

        int size = msg->markers.size();
        cout<<"size: "<<size<<endl;
        Eigen::Matrix3Xd &pts = wayPts;
        int wayPtsNum = 0;
        startGoal.resize(0);
        fixedWaypointMask.resize(0);
        pts.resize(3,max(size-2,1));

        if(!isReplan)
        {
            for (const auto& marker : msg->markers)
            {
                // ROS_INFO("!!!!!!!!!!!!!!!!!!! marker.header.stamp, %f", marker.header.stamp.toSec());
                replan_duration = marker.header.stamp.toSec() - trajStamp;
                // replan_duration = 0;
                if(marker.action == visualization_msgs::Marker::ADD)
                {
                    // 访问 Marker 的各个字段
                    double point_x = marker.pose.position.x;
                    double point_y = marker.pose.position.y;
                    double point_z = marker.pose.position.z;

                    cout<<"namespace: "<<marker.ns<<endl;

                    if(marker.ns == "start_pt")
                    {
                        const Eigen::Vector3d start(point_x, point_y, point_z);
                        visualizer.visualizeStartGoal(start, 0.1, startGoal.size());
                        startGoal.emplace_back(start);
                    }
                    else if(marker.ns == "goal_pt")
                    {
                        const Eigen::Vector3d goal(point_x, point_y, point_z);
                        visualizer.visualizeStartGoal(goal, 0.1, startGoal.size());
                        startGoal.emplace_back(goal);
                    }
                    else if(marker.ns == "way_pts")
                    {
                        pts.col(wayPtsNum)(0) = point_x;
                        pts.col(wayPtsNum)(1) = point_y;
                        pts.col(wayPtsNum)(2) = point_z;
                        wayPtsNum++;
                    }

                    ROS_INFO("Marker position: (%.2f, %.2f, %.2f)", 
                    marker.pose.position.x, marker.pose.position.y, marker.pose.position.z);
                }
            }
            cout<<setiosflags(ios::fixed)<<setprecision(15)<<setiosflags(ios::left);
            cout<<"Time to plan !"<<endl;
            plan();
            return;
        }
        else
        {
            for (const auto& marker : msg->markers)
            {
                ROS_INFO("11111111111111111, %f",marker.header.stamp.toSec());
                replan_duration = marker.header.stamp.toSec() - trajStamp + config.time_ahead;
                // replan_duration = whole_traj_time * 0.40;
                if(replan_duration >= whole_traj_time)
                    replan_duration = whole_traj_time;
                if(marker.action == visualization_msgs::Marker::ADD)
                {
                    // 访问 Marker 的各个字段
                    double point_x = marker.pose.position.x;
                    double point_y = marker.pose.position.y;
                    double point_z = marker.pose.position.z;

                    cout<<"namespace: "<<marker.ns<<endl;

                    if(marker.ns == "start_pt")
                    {
                        const Eigen::Vector3d start(point_x, point_y, point_z);
                        visualizer.visualizeStartGoal(start, 0.1, startGoal.size());
                        startGoal.emplace_back(start);
                    }
                    else if(marker.ns == "goal_pt")
                    {
                        const Eigen::Vector3d goal(point_x, point_y, point_z);
                        visualizer.visualizeStartGoal(goal, 0.1, startGoal.size());
                        startGoal.emplace_back(goal);
                    }
                    else if(marker.ns == "way_pts")
                    {
                        pts.col(wayPtsNum)(0) = point_x;
                        pts.col(wayPtsNum)(1) = point_y;
                        pts.col(wayPtsNum)(2) = point_z;
                        wayPtsNum++;
                    }

                    ROS_INFO("Marker position: (%.2f, %.2f, %.2f)", 
                    marker.pose.position.x, marker.pose.position.y, marker.pose.position.z);
                }
            }
            cout<<setiosflags(ios::fixed)<<setprecision(15)<<setiosflags(ios::left);
            cout<<"Time to plan !"<<endl;
            plan();
            return;
        }
    }


    inline void targetCallBack(const geometry_msgs::PoseStamped::ConstPtr &msg)
    {
        // cout <<"BBBBB" << endl;
        // if (mapInitialized)
        // {
            // cout <<"CCCCCC" << endl;
            // if (startGoal.size() >= 2)
            // {
            //     startGoal.clear();
            // }
            const Eigen::Vector3d start(config.initLoadPos[0], config.initLoadPos[1], config.initLoadPos[2]);
            const Eigen::Vector3d goal(config.endLoadPos[0], config.endLoadPos[1], config.endLoadPos[2]);
            // const Eigen::Vector3d goal(config.initLoadPos[0], config.initLoadPos[1], config.initLoadPos[2]);
            // if (grid_map_->getOccupancy(start) == 0 && grid_map_->getOccupancy(goal) == 0)
            // {
                visualizer.visualizeStartGoal(start, 0.1, startGoal.size());
                startGoal.emplace_back(start);
                visualizer.visualizeStartGoal(goal, 0.1, startGoal.size());
                startGoal.emplace_back(goal);
            // }
            // else
            // {
            //     ROS_WARN("Infeasible Position Selected !!!\n");
            // }

            fixedWaypointMask.resize(0);
            setInitLoadWayPts();
            cout<<setiosflags(ios::fixed)<<setprecision(7)<<setiosflags(ios::left);
            plan();
        // }
        return;
    }

    inline void process()
    {
        Eigen::VectorXd physicalParams(8);
        physicalParams(0) = config.massQ;
        physicalParams(1) = config.gravAcc;
        physicalParams(2) = config.horizDrag;
        physicalParams(3) = config.vertDrag;
        physicalParams(4) = config.parasDrag;
        physicalParams(5) = config.speedEps;
        physicalParams(6) = config.cableLength;
        physicalParams(7) = config.massL;

        flatness::FlatnessMap flatmap;
        flatmap.reset(physicalParams(0), physicalParams(1), physicalParams(6));
        if (isSuccessOpted)
        {
            // cout <<"nnnnnnnnnnn" << endl;
            odom_pubs.resize(config.droneNum + 1);
            line_pubs.resize(config.droneNum);
            force_arrow_pubs.resize(config.droneNum);
            force_arrow_show_pubs.resize(config.droneNum);
            odom_list_pub = nh.advertise<visualization_msgs::Marker>("/drone_odom_list", 10);

            for (int k = 0; k < config.droneNum + 1; k++)
            {
                odom_pubs[k] = nh.advertise<nav_msgs::Odometry>("drone_" + to_string(k) + "_odom", 1);
                if(k!=0)
                {
                    line_pubs[k-1] = nh.advertise<visualization_msgs::Marker>("/drone_" + to_string(k) + "_line", 10);
                    force_arrow_pubs[k-1] = nh.advertise<visualization_msgs::MarkerArray>("/drone_" + to_string(k) + "_force", 1000);
                    force_arrow_show_pubs[k-1] = nh.advertise<visualization_msgs::MarkerArray>("/drone_" + to_string(k) + "_force_show", 100);
                }

            }
            ros::Time now_time = ros::Time::now();
            const double delta = now_time.toSec() - trajStamp;

            
            if (delta > 0.0 && delta <= optTrajs[0].getTotalDuration())
            {
                double thr;
                double len = config.cableLength;
                Eigen::Vector4d quat, g;
                Eigen::Vector3d omg, angT, dAngT, d2AngT, d3AngT, q, dq, d2q, d3q, force;
                Eigen::Vector3d posL, velL, accL, jerL, posQ, velQ, accQ, jerQ;
                Eigen::Vector2d cst, csp;
                std::vector<nav_msgs::Odometry>  odoms;
                visualization_msgs::Marker odom_list;
                std::vector<visualization_msgs::Marker> line_list;
                std::vector<visualization_msgs::Marker> force_list;
                std::vector<visualization_msgs::Marker> force_show_list;
                posL = optTrajs[0].getPos(delta);
                velL = optTrajs[0].getVel(delta);
                accL = optTrajs[0].getAcc(delta);
                jerL = optTrajs[0].getJer(delta);
                odoms.resize(config.droneNum + 1);

                line_list.resize(config.droneNum);
                force_list.resize(config.droneNum);
                force_show_list.resize(config.droneNum);
                odoms[0].header.stamp = now_time; 
                odoms[0].pose.pose.position.x = posL(0);
                odoms[0].pose.pose.position.y = posL(1);
                odoms[0].pose.pose.position.z = posL(2);
                odoms[0].pose.pose.orientation.w = 1.0;
                odoms[0].pose.pose.orientation.x = 0.0;
                odoms[0].pose.pose.orientation.y = 0.0;
                odoms[0].pose.pose.orientation.z = 0.0;
                odoms[0].twist.twist.linear.x = velL(0);
                odoms[0].twist.twist.linear.y = velL(1);
                odoms[0].twist.twist.linear.z = velL(2);
                odoms[0].twist.twist.angular.x = 0.0;
                odoms[0].twist.twist.angular.y = 0.0;
                odoms[0].twist.twist.angular.z = 0.0;
                for (int k = 0; k < config.droneNum; k++)
                {
                    angT = optTrajs[k + 1].getPos(delta);
                    angT(1) += 2 * k * M_PI / config.droneNum;
                    dAngT = optTrajs[k + 1].getVel(delta);
                    d2AngT = optTrajs[k + 1].getAcc(delta);
                    d3AngT = optTrajs[k + 1].getJer(delta);
                    cst = getcs(angT(0));
                    csp = getcs(angT(1));
                    q = getQ(cst, csp, g);
                    dq = getdQ(dAngT.head(2), cst);
                    d2q = getd2Q(dAngT.head(2), d2AngT.head(2), cst);
                    d3q = getd3Q(dAngT.head(2), d2AngT.head(2), d3AngT.head(2), cst);
                    posQ = posL + len * q;
                    velQ = velL + len * dq;
                    accQ = accL + len * d2q;
                    jerQ = jerL + len * d3q;

                    force = scale * angT[2] * q;

                    flatmap.forward(accQ, jerQ, q, dq, scale * angT(2), scale * dAngT(2), 0.0, 0.0, thr, quat, omg);
                    odoms[k + 1].pose.pose.position.x = posQ(0);
                    odoms[k + 1].pose.pose.position.y = posQ(1);
                    odoms[k + 1].pose.pose.position.z = posQ(2);
                    odoms[k + 1].pose.pose.orientation.w = quat(0);
                    odoms[k + 1].pose.pose.orientation.x = quat(1);
                    odoms[k + 1].pose.pose.orientation.y = quat(2);
                    odoms[k + 1].pose.pose.orientation.z = quat(3);
                    odoms[k + 1].twist.twist.linear.x = velQ(0);
                    odoms[k + 1].twist.twist.linear.y = velQ(1);
                    odoms[k + 1].twist.twist.linear.z = velQ(2);
                    odoms[k + 1].twist.twist.angular.x = omg(0);
                    odoms[k + 1].twist.twist.angular.y = omg(1);
                    odoms[k + 1].twist.twist.angular.z = omg(2);

                    line_list[k].header.frame_id = "odom";
                    line_list[k].header.stamp = ros::Time::now();
                    line_list[k].ns = "lines" + to_string(k);
                    line_list[k].action = visualization_msgs::Marker::ADD;
                    line_list[k].pose.orientation.w = 1.0;
                    line_list[k].id = k;
                    line_list[k].type = visualization_msgs::Marker::LINE_LIST;
                    line_list[k].scale.x = 0.02;
                    line_list[k].color.r = 0;
                    line_list[k].color.g = 0;
                    line_list[k].color.b = 1.0;
                    line_list[k].color.a = 0.5;
                    geometry_msgs::Point p;
                    p.x = posL(0);
                    p.y = posL(1);
                    p.z = posL(2);
                    line_list[k].points.push_back(p);
                    p.x = posQ(0);
                    p.y = posQ(1);
                    p.z = posQ(2);
                    line_list[k].points.push_back(p);
                    line_pubs[k].publish(line_list[k]);

                    force_list[k].header.frame_id = "odom";
                    force_list[k].header.stamp = ros::Time::now();
                    force_list[k].ns = "force" + to_string(k);
                    force_list[k].id = k + delta*1000000;
                    force_list[k].type = visualization_msgs::Marker::ARROW;
                    force_list[k].action = visualization_msgs::Marker::ADD;
                    // 设置箭头的起点和终点
                    
                    p.x = posQ(0);
                    p.y = posQ(1);
                    p.z = posQ(2);                  
                    force_list[k].points.push_back(p);  // 起点
                    double f_ratio = 0.75;
                    p.x = posQ(0) - 0.4*(force(0) / force.norm()) - force(0) * f_ratio;
                    p.y = posQ(1) - 0.4*(force(1) / force.norm()) - force(1) * f_ratio;
                    p.z = posQ(2) - 0.4*(force(2) / force.norm()) - force(2) * f_ratio;
                    force_list[k].points.push_back(p);  // 终点
                    force_list[k].scale.x = 0.100;  // 箭头粗细
                    force_list[k].scale.y = 0.150;  // 箭头宽度
                    force_list[k].scale.z = 0.27 * 1.75;  // 箭头高度


                    double value = ((delta / optTrajs[0].getTotalDuration()) * 2.7);
                    while(value > 1.0)
                    {
                        value -= 1.0;
                    }
                    const tinycolormap::Color color = tinycolormap::GetColor(value, tinycolormap::ColormapType::Turbo);
                    const double cr = color.r() * 255.0;
                    const double cg = color.g() * 255.0;
                    const double cb = color.b() * 255.0;

                    force_list[0].color.r = cr / 255.0;  // 红色
                    force_list[0].color.g = cg / 255.0;
                    force_list[0].color.b = cb / 255.0;

                    force_list[1].color.r = cr / 255.0;  // 红色
                    force_list[1].color.g = cg / 255.0;
                    force_list[1].color.b = cb / 255.0;

                    force_list[2].color.r = cr / 255.0;  // 红色
                    force_list[2].color.g = cg / 255.0;
                    force_list[2].color.b = cb / 255.0;

                    force_list[k].color.a = 1.0;  // 不透明

                }   
                for (int k = 0; k < config.droneNum + 1; k++)
                {
                    odom_pubs[k].publish(odoms[k]);
                  
                }

                
                odom_list.header.frame_id = "odom";
                odom_list.header.stamp = ros::Time::now();
                odom_list.ns = "odom_list" + to_string(delta);
                odom_list.action = visualization_msgs::Marker::ADD;
                odom_list.pose.orientation.w = 1.0;
                odom_list.id = delta;
                odom_list.type = visualization_msgs::Marker::SPHERE;
                odom_list.scale.x = 0.02;
                odom_list.color.r = 0;
                odom_list.color.g = 0;
                odom_list.color.b = 1.0;
                odom_list.color.a = 1.0;
                odom_list.pose.position.x = posL(0);
                odom_list.pose.position.y = posL(1);
                odom_list.pose.position.z = posL(2);

                odom_list.pose.orientation.w = 1.0;
                odom_list.pose.orientation.x = 0.0;
                odom_list.pose.orientation.y = 0.0;
                odom_list.pose.orientation.z = 0.0;
                odom_list.scale.x = 0.5;
                odom_list.scale.y = 0.5;
                odom_list.scale.z = 0.5;

                // odom_list_pub.publish(odom_list);
            }
        }
    }

    inline void setInitLoadWayPts()
    {
        // J
        // traj_J(config.pieceNum, wayPts, wayVels, wayAccs, velNums, accNums);
        // traj_circle(config.pieceNum, wayPts, wayVels, wayAccs, velNums, accNums);
        // traj_small_circle(config.pieceNum, wayPts, wayVels, wayAccs, velNums, accNums);  
        // traj_high_speed(config.pieceNum, wayPts, wayVels, wayAccs, velNums, accNums);
        // traj_narrow_gap(config.pieceNum, wayPts, wayVels, wayAccs, velNums, accNums);

        traj_avoiding_obstacle(config.pieceNum, wayPts, wayVels, wayAccs, velNums, accNums);
            
    }

    void polyTraj2ROSMsg(std::vector<quadrotor_msgs::PolyTraj> &msgs)
    {
        for (int k = 0; k < config.droneNum + 1; k++)
        {
            auto data = &optTrajs[k];

            msgs[k].traj_start_time = trajStamp;
            msgs[k].replan_duration = replan_duration;

            msgs[k].drone_id = k;
            msgs[k].order = 7; // todo, only support order = 5 now.
            if (k == 0)
            {
                msgs[k].type = 0;
            }
            else
            {
                msgs[k].type = 1;
            }

            Eigen::VectorXd durs = data->getDurations();
            int piece_num = data->getPieceNum();
            msgs[k].duration.resize(piece_num);
            msgs[k].coef_x.resize(8 * piece_num);
            msgs[k].coef_y.resize(8 * piece_num);
            msgs[k].coef_z.resize(8 * piece_num);
            for (int i = 0; i < piece_num; ++i)
            {
                msgs[k].duration[i] = durs(i);

                Piece<7>::CoefficientMat cMat = data->getPiece(i).getCoeffMat();
                int i8 = i * 8;
                for (int j = 0; j < 8; j++)
                {
                    msgs[k].coef_x[i8 + j] = cMat(0, j);
                    msgs[k].coef_y[i8 + j] = cMat(1, j);
                    msgs[k].coef_z[i8 + j] = cMat(2, j);
                }
            }
        }
    }
};

int main(int argc, char **argv)
{
    ros::init(argc, argv, "global_planning_node");
    ros::NodeHandle nh_;

    GlobalPlanner global_planner(Config(ros::NodeHandle("~")), nh_);


    ros::Rate lr(1000);
    while (ros::ok())
    {
        global_planner.process();

        ros::spinOnce();
        lr.sleep();
    }

    return 0;
}
