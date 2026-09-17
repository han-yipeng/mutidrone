#ifndef _NODE_H_
#define _NODE_H_

#include <iostream>
#include <ros/ros.h>
#include <ros/console.h>
#include <Eigen/Eigen>

#define inf 1.0e20
struct GridNode;
typedef GridNode* GridNodePtr;

struct GridNode
{     
    int id;        // 1表示openlist, -1表示closelist  0表示即不在open 也不在close中
    Eigen::Vector3d coord; 
    Eigen::Vector3i dir;   // direction of expanding
    Eigen::Vector3i index;
	
    int angle_index;
    double gScore, fScore, angle;
    double distanceScore, clearanceScore, smoothScore, nominalScore;
    double clearance;
    GridNodePtr cameFrom;
    std::multimap<double, GridNodePtr>::iterator nodeMapIt;

    GridNode(Eigen::Vector3i _index, Eigen::Vector3d _coord, int _angle_index = 0, double _angle = 0.0){
		id = 0;
		index = _index;     //栅格索引
		coord = _coord;     //栅格索引所对应的点云位置
		dir   = Eigen::Vector3i::Zero();
		angle_index = _angle_index;

		gScore = inf;          //astar g值
		fScore = inf;          //astar f值
		angle = _angle;
		distanceScore = 0.0;
		clearanceScore = 0.0;
		smoothScore = 0.0;
		nominalScore = 0.0;
		clearance = inf;
		cameFrom = NULL;       //父节点
    }

    GridNode(){};
    ~GridNode(){};
};


#endif
