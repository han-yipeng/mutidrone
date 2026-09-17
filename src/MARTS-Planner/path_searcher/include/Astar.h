#ifndef _ASTART_SEARCHER_H
#define _ASTART_SEARCHER_H

#include <iostream>
#include <ros/ros.h>
#include <ros/console.h>
#include <Eigen/Eigen>
#include <vector>
#include "node.h"

class AstarPathFinder
{	
		struct TransitionCost
		{
			double distance;
			double clearance;
			double smooth;
			double nominal;
		};

	private:

	protected:
	    std::vector<int>data;
		std::vector<std::vector<std::vector<std::vector<GridNodePtr>>>> GridNodeMap;
		std::vector<double> obstacle_distance;
		bool distance_field_dirty;
		//uint8_t * data;   //按照Z->Y->X顺序，构建一维点云栅格数据存储格式
		//GridNodePtr *** GridNodeMap;  //构建3维数组，用于判断存储Astar节点
		Eigen::Vector3i goalIdx;      //目标点

		//栅格坐标系(与世界坐标系相差分辨率)下，整个点云地图的宽、长、高
		int GLX_SIZE, GLY_SIZE, GLZ_SIZE;  
		int GLXYZ_SIZE, GLYZ_SIZE;

        //分辨率、分辨率倒数
		double resolution, inv_resolution;

		//世界坐标系下点云地图x、y、z轴最小和最大尺寸
		double gl_xl, gl_yl, gl_zl;
		double gl_xu, gl_yu, gl_zu;
		// 搜索的x、y、z的最大和最小范围
		double search_x_max, search_x_min;
		double search_y_max, search_y_min;
		double search_z_max, search_z_min;
         
        std::string distance;
		double weight_a,weight_b,weight_angle;
		double weight_clearance, weight_smooth, safety_clearance;
			double length,max_angle,min_angle;
			int angle_resolution, max_angle_step;
			bool enforce_boundary_angle;
			double boundary_angle_pi;
				bool check_transition;
				double transition_position_step, transition_angle_step;
				bool enforce_system_clearance;
				double payload_radius, cable_radius, drone_radius, system_extra_clearance;
				std::size_t transition_check_count, transition_reject_count;
				double selected_start_angle_deg;

		//终点节点，用于路径的反向查找
		GridNodePtr terminatePtr;

		//openList列表
		std::multimap<double, GridNodePtr> openSet;
        
		//计算Astar的启发式H值
		double calHeu(GridNodePtr node1, GridNodePtr node2);

		//寻找Astar中某点的邻居点集
		void AstarGetSucc(GridNodePtr currentPtr,
		                  std::vector<GridNodePtr> &neighborPtrSets,
		                  std::vector<TransitionCost> &transitionCostSets);

        //障碍物判断
		bool isOccupied(const int & idx_x, const int & idx_y, const int & idx_z, const double & l, const double & phi, const double & res) const;
			bool evaluateEnvelope(const int &idx_x, const int &idx_y, const int &idx_z,
			                      const double &l, const double &phi, const double &res,
			                      double &clearance) const;
		bool evaluateEnvelopeAtPosition(const Eigen::Vector3d &position,
		                                const double &l, const double &phi,
		                                const double &res, double &clearance) const;
			bool evaluateTransition(const GridNodePtr currentPtr,
		                        const Eigen::Vector3d &next_position,
		                        const int next_angle_index,
			                        double &clearance) const;
			double requiredEnvelopeClearance(const int layer,
			                                 const int height) const;
		void updateObstacleDistanceField();
		double angleRad(const int angle_index) const;
		double angleDeg(const int angle_index) const;
		int nearestAngleIndex(const double angle_pi) const;
		double clearancePenalty(const double clearance) const;
    	// bool isOccupied(const int & idx_x, const int & idx_y, const int & idx_z) const;
		
		//栅格转世界
		Eigen::Vector3d gridIndex2coord(const Eigen::Vector3i & index);

		//世界转栅格
			Eigen::Vector3i coord2gridIndex(const Eigen::Vector3d & pt) const;

	public:
		AstarPathFinder(std::string _distance,
		                double _weight_a,
		                double _weight_b,
		                double _weight_angle,
		                double _weight_clearance,
		                double _weight_smooth,
		                double _safety_clearance,
		                double length,
		                double max_angle,
		                double min_angle,
		                int angle_resolution,
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
			                double _system_extra_clearance);
		~AstarPathFinder(){};
		//初始化点云地图
		void initGridMap(double _resolution, Eigen::Vector3d global_xyz_l, Eigen::Vector3d global_xyz_u, Eigen::Vector3d search_xyz_l, Eigen::Vector3d search_xyz_u, int max_x_id, int max_y_id, int max_z_id);
		
		//Astar的核心函数
		void AstarGraphSearch(Eigen::Vector3d start_pt, Eigen::Vector3d end_pt);
        

		void clearObs();

		//设置一维点云数据格式中的障碍物的位置
		void setObs(const double coord_x, const double coord_y, const double coord_z);
     
			//获取Astar的路径
			std::vector<Eigen::Vector4d> getPath();
			double getStartAngleDeg() const;

		//获取closelist中点的世界坐标下的索引
		std::vector<Eigen::Vector3d> getVisitedNodes();

		bool checkEnvelopeAt(const Eigen::Vector3d &pt,
                             const double &angle_deg,
                             int &height_cells,
                             int &top_len_cells,
                             double &height_m,
                             double &top_width_m);
		bool getEnvelopeVoxelsAt(const Eigen::Vector3d &pt,
                                 const double &angle_deg,
                                 std::vector<Eigen::Vector3d> &voxels);
		double getEnvelopeClearanceAt(const Eigen::Vector3d &pt,
		                              const double &angle_deg);
		bool checkConfigurationAtPosition(const Eigen::Vector3d &pt,
		                                  const double &angle_deg,
		                                  double &clearance);
		bool checkConfigurationTransition(const Eigen::Vector3d &start_pt,
		                                  const double &start_angle_deg,
		                                  const Eigen::Vector3d &end_pt,
		                                  const double &end_angle_deg,
		                                  double &clearance);
		double getPointClearanceAt(const Eigen::Vector3d &pt);
		double getLocalOccupancyRatio(const Eigen::Vector3d &pt,
		                              const double &radius) const;
        
		//Astar节点重置
		void resetGrid(GridNodePtr ptr);
		void resetUsedGrids();

		Eigen::Vector3d coordRounding(const Eigen::Vector3d & coord);
};

#endif
