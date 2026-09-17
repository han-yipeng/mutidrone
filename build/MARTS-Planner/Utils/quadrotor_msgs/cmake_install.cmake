# Install script for directory: /home/han/transport-multiple/src/MARTS-Planner/Utils/quadrotor_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/han/transport-multiple/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/quadrotor_msgs/msg" TYPE FILE FILES
    "/home/han/transport-multiple/src/MARTS-Planner/Utils/quadrotor_msgs/msg/AuxCommand.msg"
    "/home/han/transport-multiple/src/MARTS-Planner/Utils/quadrotor_msgs/msg/Corrections.msg"
    "/home/han/transport-multiple/src/MARTS-Planner/Utils/quadrotor_msgs/msg/Gains.msg"
    "/home/han/transport-multiple/src/MARTS-Planner/Utils/quadrotor_msgs/msg/Rpms.msg"
    "/home/han/transport-multiple/src/MARTS-Planner/Utils/quadrotor_msgs/msg/OutputData.msg"
    "/home/han/transport-multiple/src/MARTS-Planner/Utils/quadrotor_msgs/msg/PositionCommand.msg"
    "/home/han/transport-multiple/src/MARTS-Planner/Utils/quadrotor_msgs/msg/PolyTraj.msg"
    "/home/han/transport-multiple/src/MARTS-Planner/Utils/quadrotor_msgs/msg/PositionCommandNew.msg"
    "/home/han/transport-multiple/src/MARTS-Planner/Utils/quadrotor_msgs/msg/PositionCommandLoad.msg"
    "/home/han/transport-multiple/src/MARTS-Planner/Utils/quadrotor_msgs/msg/PPROutputData.msg"
    "/home/han/transport-multiple/src/MARTS-Planner/Utils/quadrotor_msgs/msg/SimState.msg"
    "/home/han/transport-multiple/src/MARTS-Planner/Utils/quadrotor_msgs/msg/IndiState.msg"
    "/home/han/transport-multiple/src/MARTS-Planner/Utils/quadrotor_msgs/msg/Serial.msg"
    "/home/han/transport-multiple/src/MARTS-Planner/Utils/quadrotor_msgs/msg/SO3Command.msg"
    "/home/han/transport-multiple/src/MARTS-Planner/Utils/quadrotor_msgs/msg/StatusData.msg"
    "/home/han/transport-multiple/src/MARTS-Planner/Utils/quadrotor_msgs/msg/TRPYCommand.msg"
    "/home/han/transport-multiple/src/MARTS-Planner/Utils/quadrotor_msgs/msg/Odometry.msg"
    "/home/han/transport-multiple/src/MARTS-Planner/Utils/quadrotor_msgs/msg/PolynomialTrajectory.msg"
    "/home/han/transport-multiple/src/MARTS-Planner/Utils/quadrotor_msgs/msg/LQRTrajectory.msg"
    "/home/han/transport-multiple/src/MARTS-Planner/Utils/quadrotor_msgs/msg/geDebug.msg"
    "/home/han/transport-multiple/src/MARTS-Planner/Utils/quadrotor_msgs/msg/Px4ctrlDebug.msg"
    "/home/han/transport-multiple/src/MARTS-Planner/Utils/quadrotor_msgs/msg/TakeoffLand.msg"
    "/home/han/transport-multiple/src/MARTS-Planner/Utils/quadrotor_msgs/msg/trigger.msg"
    "/home/han/transport-multiple/src/MARTS-Planner/Utils/quadrotor_msgs/msg/AstarPathPoint.msg"
    "/home/han/transport-multiple/src/MARTS-Planner/Utils/quadrotor_msgs/msg/AstarPath.msg"
    "/home/han/transport-multiple/src/MARTS-Planner/Utils/quadrotor_msgs/msg/CorridorPolytope.msg"
    "/home/han/transport-multiple/src/MARTS-Planner/Utils/quadrotor_msgs/msg/LoadCorridor.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/quadrotor_msgs/cmake" TYPE FILE FILES "/home/han/transport-multiple/build/MARTS-Planner/Utils/quadrotor_msgs/catkin_generated/installspace/quadrotor_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/han/transport-multiple/devel/include/quadrotor_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/han/transport-multiple/devel/share/roseus/ros/quadrotor_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/han/transport-multiple/devel/share/common-lisp/ros/quadrotor_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/han/transport-multiple/devel/share/gennodejs/ros/quadrotor_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/han/transport-multiple/devel/lib/python3/dist-packages/quadrotor_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/han/transport-multiple/devel/lib/python3/dist-packages/quadrotor_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/han/transport-multiple/build/MARTS-Planner/Utils/quadrotor_msgs/catkin_generated/installspace/quadrotor_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/quadrotor_msgs/cmake" TYPE FILE FILES "/home/han/transport-multiple/build/MARTS-Planner/Utils/quadrotor_msgs/catkin_generated/installspace/quadrotor_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/quadrotor_msgs/cmake" TYPE FILE FILES
    "/home/han/transport-multiple/build/MARTS-Planner/Utils/quadrotor_msgs/catkin_generated/installspace/quadrotor_msgsConfig.cmake"
    "/home/han/transport-multiple/build/MARTS-Planner/Utils/quadrotor_msgs/catkin_generated/installspace/quadrotor_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/quadrotor_msgs" TYPE FILE FILES "/home/han/transport-multiple/src/MARTS-Planner/Utils/quadrotor_msgs/package.xml")
endif()

