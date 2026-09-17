;; Auto-generated. Do not edit!


(when (boundp 'quadrotor_msgs::geDebug)
  (if (not (find-package "QUADROTOR_MSGS"))
    (make-package "QUADROTOR_MSGS"))
  (shadow 'geDebug (find-package "QUADROTOR_MSGS")))
(unless (find-package "QUADROTOR_MSGS::GEDEBUG")
  (make-package "QUADROTOR_MSGS::GEDEBUG"))

(in-package "ROS")
;;//! \htmlinclude geDebug.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass quadrotor_msgs::geDebug
  :super ros::object
  :slots (_header _odom_roll _odom_pitch _odom_yaw _odomC_roll _odomC_pitch _odomC_yaw _ge_angle_roll _ge_angle_pitch _ge_angle_yaw _imu_a_x _imu_a_y _imu_a_z _imu_a_fil_x _imu_a_fil_y _imu_a_fil_z _imu_w_x _imu_w_y _imu_w_z _imu_w_fil_x _imu_w_fil_y _imu_w_fil_z _imu_w_c_x _imu_w_c_y _imu_w_c_z _imu_beta_fil_x _imu_beta_fil_y _imu_beta_fil_z _rpm1 _rpm2 _rpm3 _rpm4 _rpm1_fil _rpm2_fil _rpm3_fil _rpm4_fil _sumrpm2 _thrust_force _thrust_acc _sumrpm2_fil _thrust_force_fil _thrust_acc_fil _acc_world_x _acc_world_y _acc_world_z _ge_acc_x _ge_acc_y _ge_acc_z _ge_bodytorque_x _ge_bodytorque_y _ge_bodytorque_z _des_ge_bodytorque_x _des_ge_bodytorque_y _des_ge_bodytorque_z _d_ge_torque_x _d_ge_torque_y _d_ge_torque_z _diff_ge_torque_x _diff_ge_torque_y _diff_ge_torque_z _ext_torque_x _ext_torque_y _ext_torque_z _predict_ext_torque_x _predict_ext_torque_y _predict_ext_torque_z _des_p_x _des_p_y _des_p_z _des_v_x _des_v_y _des_v_z _des_a_x _des_a_y _des_a_z _des_j_x _des_j_y _des_j_z _des_s_x _des_s_y _des_s_z _des_yaw _des_yaw_rate _des_yaw_acc _flatctrl_q_w _flatctrl_q_x _flatctrl_q_y _flatctrl_q_z _flatctrl_roll _flatctrl_pitch _flatctrl_yaw _flatctrl_bodyrate_x _flatctrl_bodyrate_y _flatctrl_bodyrate_z _flatctrl_beta_x _flatctrl_beta_y _flatctrl_beta_z _flatctrl_thrust _flatctrl_torque_x _flatctrl_torque_y _flatctrl_torque_z _flatctrl_ge_acc_x _flatctrl_ge_acc_y _flatctrl_ge_acc_z _flatctrl_drag_acc_x _flatctrl_drag_acc_y _flatctrl_drag_acc_z _flatctrl_ext_acc_x _flatctrl_ext_acc_y _flatctrl_ext_acc_z _ge_limit_k _fb_vel_x _fb_vel_y _fb_vel_z _cmd_vel_x _cmd_vel_y _cmd_vel_z _compensate_acc_x _compensate_acc_y _compensate_acc_z _fb_acc_x _fb_acc_y _fb_acc_z _cmd_acc_x _cmd_acc_y _cmd_acc_z _cmd_acc_norm _cmd_acc_norm_by_body _cmd_q_w _cmd_q_x _cmd_q_y _cmd_q_z _cmd_roll _cmd_pitch _cmd_yaw _fb_bodyrate_x _fb_bodyrate_y _fb_bodyrate_z _cmd_bodyrate_x _cmd_bodyrate_y _cmd_bodyrate_z _fb_beta_x _fb_beta_y _fb_beta_z _cmd_beta_x _cmd_beta_y _cmd_beta_z _compensate_torque_x _compensate_torque_y _compensate_torque_z _bodytorque_x _bodytorque_y _bodytorque_z _cmd_torque_body_x _cmd_torque_body_y _cmd_torque_body_z _diff_indi_torque_x _diff_indi_torque_y _diff_indi_torque_z _diff_torque_x _diff_torque_y _diff_torque_z _cmd_rpm1 _cmd_rpm2 _cmd_rpm3 _cmd_rpm4 _cmd_sumrpm2 _cmd_sumrpm2_to_acc _fb_thrust1 _fb_thrust2 _fb_thrust3 _fb_thrust4 _ref_thrust1 _ref_thrust2 _ref_thrust3 _ref_thrust4 _cmd_thrust1 _cmd_thrust2 _cmd_thrust3 _cmd_thrust4 _Fgh _ref_thrust_acc _thrust_acc_fil_x _thrust_acc_fil_y _thrust_acc_fil_z _imu_acc_fil_x _imu_acc_fil_y _imu_acc_fil_z _extforce_acc_x _extforce_acc_y _extforce_acc_z _extforce_acc_fil_x _extforce_acc_fil_y _extforce_acc_fil_z _poly_thrust _fb_thrust _sum_thrust ))

(defmethod quadrotor_msgs::geDebug
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:odom_roll __odom_roll) 0.0)
    ((:odom_pitch __odom_pitch) 0.0)
    ((:odom_yaw __odom_yaw) 0.0)
    ((:odomC_roll __odomC_roll) 0.0)
    ((:odomC_pitch __odomC_pitch) 0.0)
    ((:odomC_yaw __odomC_yaw) 0.0)
    ((:ge_angle_roll __ge_angle_roll) 0.0)
    ((:ge_angle_pitch __ge_angle_pitch) 0.0)
    ((:ge_angle_yaw __ge_angle_yaw) 0.0)
    ((:imu_a_x __imu_a_x) 0.0)
    ((:imu_a_y __imu_a_y) 0.0)
    ((:imu_a_z __imu_a_z) 0.0)
    ((:imu_a_fil_x __imu_a_fil_x) 0.0)
    ((:imu_a_fil_y __imu_a_fil_y) 0.0)
    ((:imu_a_fil_z __imu_a_fil_z) 0.0)
    ((:imu_w_x __imu_w_x) 0.0)
    ((:imu_w_y __imu_w_y) 0.0)
    ((:imu_w_z __imu_w_z) 0.0)
    ((:imu_w_fil_x __imu_w_fil_x) 0.0)
    ((:imu_w_fil_y __imu_w_fil_y) 0.0)
    ((:imu_w_fil_z __imu_w_fil_z) 0.0)
    ((:imu_w_c_x __imu_w_c_x) 0.0)
    ((:imu_w_c_y __imu_w_c_y) 0.0)
    ((:imu_w_c_z __imu_w_c_z) 0.0)
    ((:imu_beta_fil_x __imu_beta_fil_x) 0.0)
    ((:imu_beta_fil_y __imu_beta_fil_y) 0.0)
    ((:imu_beta_fil_z __imu_beta_fil_z) 0.0)
    ((:rpm1 __rpm1) 0.0)
    ((:rpm2 __rpm2) 0.0)
    ((:rpm3 __rpm3) 0.0)
    ((:rpm4 __rpm4) 0.0)
    ((:rpm1_fil __rpm1_fil) 0.0)
    ((:rpm2_fil __rpm2_fil) 0.0)
    ((:rpm3_fil __rpm3_fil) 0.0)
    ((:rpm4_fil __rpm4_fil) 0.0)
    ((:sumrpm2 __sumrpm2) 0.0)
    ((:thrust_force __thrust_force) 0.0)
    ((:thrust_acc __thrust_acc) 0.0)
    ((:sumrpm2_fil __sumrpm2_fil) 0.0)
    ((:thrust_force_fil __thrust_force_fil) 0.0)
    ((:thrust_acc_fil __thrust_acc_fil) 0.0)
    ((:acc_world_x __acc_world_x) 0.0)
    ((:acc_world_y __acc_world_y) 0.0)
    ((:acc_world_z __acc_world_z) 0.0)
    ((:ge_acc_x __ge_acc_x) 0.0)
    ((:ge_acc_y __ge_acc_y) 0.0)
    ((:ge_acc_z __ge_acc_z) 0.0)
    ((:ge_bodytorque_x __ge_bodytorque_x) 0.0)
    ((:ge_bodytorque_y __ge_bodytorque_y) 0.0)
    ((:ge_bodytorque_z __ge_bodytorque_z) 0.0)
    ((:des_ge_bodytorque_x __des_ge_bodytorque_x) 0.0)
    ((:des_ge_bodytorque_y __des_ge_bodytorque_y) 0.0)
    ((:des_ge_bodytorque_z __des_ge_bodytorque_z) 0.0)
    ((:d_ge_torque_x __d_ge_torque_x) 0.0)
    ((:d_ge_torque_y __d_ge_torque_y) 0.0)
    ((:d_ge_torque_z __d_ge_torque_z) 0.0)
    ((:diff_ge_torque_x __diff_ge_torque_x) 0.0)
    ((:diff_ge_torque_y __diff_ge_torque_y) 0.0)
    ((:diff_ge_torque_z __diff_ge_torque_z) 0.0)
    ((:ext_torque_x __ext_torque_x) 0.0)
    ((:ext_torque_y __ext_torque_y) 0.0)
    ((:ext_torque_z __ext_torque_z) 0.0)
    ((:predict_ext_torque_x __predict_ext_torque_x) 0.0)
    ((:predict_ext_torque_y __predict_ext_torque_y) 0.0)
    ((:predict_ext_torque_z __predict_ext_torque_z) 0.0)
    ((:des_p_x __des_p_x) 0.0)
    ((:des_p_y __des_p_y) 0.0)
    ((:des_p_z __des_p_z) 0.0)
    ((:des_v_x __des_v_x) 0.0)
    ((:des_v_y __des_v_y) 0.0)
    ((:des_v_z __des_v_z) 0.0)
    ((:des_a_x __des_a_x) 0.0)
    ((:des_a_y __des_a_y) 0.0)
    ((:des_a_z __des_a_z) 0.0)
    ((:des_j_x __des_j_x) 0.0)
    ((:des_j_y __des_j_y) 0.0)
    ((:des_j_z __des_j_z) 0.0)
    ((:des_s_x __des_s_x) 0.0)
    ((:des_s_y __des_s_y) 0.0)
    ((:des_s_z __des_s_z) 0.0)
    ((:des_yaw __des_yaw) 0.0)
    ((:des_yaw_rate __des_yaw_rate) 0.0)
    ((:des_yaw_acc __des_yaw_acc) 0.0)
    ((:flatctrl_q_w __flatctrl_q_w) 0.0)
    ((:flatctrl_q_x __flatctrl_q_x) 0.0)
    ((:flatctrl_q_y __flatctrl_q_y) 0.0)
    ((:flatctrl_q_z __flatctrl_q_z) 0.0)
    ((:flatctrl_roll __flatctrl_roll) 0.0)
    ((:flatctrl_pitch __flatctrl_pitch) 0.0)
    ((:flatctrl_yaw __flatctrl_yaw) 0.0)
    ((:flatctrl_bodyrate_x __flatctrl_bodyrate_x) 0.0)
    ((:flatctrl_bodyrate_y __flatctrl_bodyrate_y) 0.0)
    ((:flatctrl_bodyrate_z __flatctrl_bodyrate_z) 0.0)
    ((:flatctrl_beta_x __flatctrl_beta_x) 0.0)
    ((:flatctrl_beta_y __flatctrl_beta_y) 0.0)
    ((:flatctrl_beta_z __flatctrl_beta_z) 0.0)
    ((:flatctrl_thrust __flatctrl_thrust) 0.0)
    ((:flatctrl_torque_x __flatctrl_torque_x) 0.0)
    ((:flatctrl_torque_y __flatctrl_torque_y) 0.0)
    ((:flatctrl_torque_z __flatctrl_torque_z) 0.0)
    ((:flatctrl_ge_acc_x __flatctrl_ge_acc_x) 0.0)
    ((:flatctrl_ge_acc_y __flatctrl_ge_acc_y) 0.0)
    ((:flatctrl_ge_acc_z __flatctrl_ge_acc_z) 0.0)
    ((:flatctrl_drag_acc_x __flatctrl_drag_acc_x) 0.0)
    ((:flatctrl_drag_acc_y __flatctrl_drag_acc_y) 0.0)
    ((:flatctrl_drag_acc_z __flatctrl_drag_acc_z) 0.0)
    ((:flatctrl_ext_acc_x __flatctrl_ext_acc_x) 0.0)
    ((:flatctrl_ext_acc_y __flatctrl_ext_acc_y) 0.0)
    ((:flatctrl_ext_acc_z __flatctrl_ext_acc_z) 0.0)
    ((:ge_limit_k __ge_limit_k) 0.0)
    ((:fb_vel_x __fb_vel_x) 0.0)
    ((:fb_vel_y __fb_vel_y) 0.0)
    ((:fb_vel_z __fb_vel_z) 0.0)
    ((:cmd_vel_x __cmd_vel_x) 0.0)
    ((:cmd_vel_y __cmd_vel_y) 0.0)
    ((:cmd_vel_z __cmd_vel_z) 0.0)
    ((:compensate_acc_x __compensate_acc_x) 0.0)
    ((:compensate_acc_y __compensate_acc_y) 0.0)
    ((:compensate_acc_z __compensate_acc_z) 0.0)
    ((:fb_acc_x __fb_acc_x) 0.0)
    ((:fb_acc_y __fb_acc_y) 0.0)
    ((:fb_acc_z __fb_acc_z) 0.0)
    ((:cmd_acc_x __cmd_acc_x) 0.0)
    ((:cmd_acc_y __cmd_acc_y) 0.0)
    ((:cmd_acc_z __cmd_acc_z) 0.0)
    ((:cmd_acc_norm __cmd_acc_norm) 0.0)
    ((:cmd_acc_norm_by_body __cmd_acc_norm_by_body) 0.0)
    ((:cmd_q_w __cmd_q_w) 0.0)
    ((:cmd_q_x __cmd_q_x) 0.0)
    ((:cmd_q_y __cmd_q_y) 0.0)
    ((:cmd_q_z __cmd_q_z) 0.0)
    ((:cmd_roll __cmd_roll) 0.0)
    ((:cmd_pitch __cmd_pitch) 0.0)
    ((:cmd_yaw __cmd_yaw) 0.0)
    ((:fb_bodyrate_x __fb_bodyrate_x) 0.0)
    ((:fb_bodyrate_y __fb_bodyrate_y) 0.0)
    ((:fb_bodyrate_z __fb_bodyrate_z) 0.0)
    ((:cmd_bodyrate_x __cmd_bodyrate_x) 0.0)
    ((:cmd_bodyrate_y __cmd_bodyrate_y) 0.0)
    ((:cmd_bodyrate_z __cmd_bodyrate_z) 0.0)
    ((:fb_beta_x __fb_beta_x) 0.0)
    ((:fb_beta_y __fb_beta_y) 0.0)
    ((:fb_beta_z __fb_beta_z) 0.0)
    ((:cmd_beta_x __cmd_beta_x) 0.0)
    ((:cmd_beta_y __cmd_beta_y) 0.0)
    ((:cmd_beta_z __cmd_beta_z) 0.0)
    ((:compensate_torque_x __compensate_torque_x) 0.0)
    ((:compensate_torque_y __compensate_torque_y) 0.0)
    ((:compensate_torque_z __compensate_torque_z) 0.0)
    ((:bodytorque_x __bodytorque_x) 0.0)
    ((:bodytorque_y __bodytorque_y) 0.0)
    ((:bodytorque_z __bodytorque_z) 0.0)
    ((:cmd_torque_body_x __cmd_torque_body_x) 0.0)
    ((:cmd_torque_body_y __cmd_torque_body_y) 0.0)
    ((:cmd_torque_body_z __cmd_torque_body_z) 0.0)
    ((:diff_indi_torque_x __diff_indi_torque_x) 0.0)
    ((:diff_indi_torque_y __diff_indi_torque_y) 0.0)
    ((:diff_indi_torque_z __diff_indi_torque_z) 0.0)
    ((:diff_torque_x __diff_torque_x) 0.0)
    ((:diff_torque_y __diff_torque_y) 0.0)
    ((:diff_torque_z __diff_torque_z) 0.0)
    ((:cmd_rpm1 __cmd_rpm1) 0.0)
    ((:cmd_rpm2 __cmd_rpm2) 0.0)
    ((:cmd_rpm3 __cmd_rpm3) 0.0)
    ((:cmd_rpm4 __cmd_rpm4) 0.0)
    ((:cmd_sumrpm2 __cmd_sumrpm2) 0.0)
    ((:cmd_sumrpm2_to_acc __cmd_sumrpm2_to_acc) 0.0)
    ((:fb_thrust1 __fb_thrust1) 0.0)
    ((:fb_thrust2 __fb_thrust2) 0.0)
    ((:fb_thrust3 __fb_thrust3) 0.0)
    ((:fb_thrust4 __fb_thrust4) 0.0)
    ((:ref_thrust1 __ref_thrust1) 0.0)
    ((:ref_thrust2 __ref_thrust2) 0.0)
    ((:ref_thrust3 __ref_thrust3) 0.0)
    ((:ref_thrust4 __ref_thrust4) 0.0)
    ((:cmd_thrust1 __cmd_thrust1) 0.0)
    ((:cmd_thrust2 __cmd_thrust2) 0.0)
    ((:cmd_thrust3 __cmd_thrust3) 0.0)
    ((:cmd_thrust4 __cmd_thrust4) 0.0)
    ((:Fgh __Fgh) 0.0)
    ((:ref_thrust_acc __ref_thrust_acc) 0.0)
    ((:thrust_acc_fil_x __thrust_acc_fil_x) 0.0)
    ((:thrust_acc_fil_y __thrust_acc_fil_y) 0.0)
    ((:thrust_acc_fil_z __thrust_acc_fil_z) 0.0)
    ((:imu_acc_fil_x __imu_acc_fil_x) 0.0)
    ((:imu_acc_fil_y __imu_acc_fil_y) 0.0)
    ((:imu_acc_fil_z __imu_acc_fil_z) 0.0)
    ((:extforce_acc_x __extforce_acc_x) 0.0)
    ((:extforce_acc_y __extforce_acc_y) 0.0)
    ((:extforce_acc_z __extforce_acc_z) 0.0)
    ((:extforce_acc_fil_x __extforce_acc_fil_x) 0.0)
    ((:extforce_acc_fil_y __extforce_acc_fil_y) 0.0)
    ((:extforce_acc_fil_z __extforce_acc_fil_z) 0.0)
    ((:poly_thrust __poly_thrust) 0.0)
    ((:fb_thrust __fb_thrust) 0.0)
    ((:sum_thrust __sum_thrust) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _odom_roll (float __odom_roll))
   (setq _odom_pitch (float __odom_pitch))
   (setq _odom_yaw (float __odom_yaw))
   (setq _odomC_roll (float __odomC_roll))
   (setq _odomC_pitch (float __odomC_pitch))
   (setq _odomC_yaw (float __odomC_yaw))
   (setq _ge_angle_roll (float __ge_angle_roll))
   (setq _ge_angle_pitch (float __ge_angle_pitch))
   (setq _ge_angle_yaw (float __ge_angle_yaw))
   (setq _imu_a_x (float __imu_a_x))
   (setq _imu_a_y (float __imu_a_y))
   (setq _imu_a_z (float __imu_a_z))
   (setq _imu_a_fil_x (float __imu_a_fil_x))
   (setq _imu_a_fil_y (float __imu_a_fil_y))
   (setq _imu_a_fil_z (float __imu_a_fil_z))
   (setq _imu_w_x (float __imu_w_x))
   (setq _imu_w_y (float __imu_w_y))
   (setq _imu_w_z (float __imu_w_z))
   (setq _imu_w_fil_x (float __imu_w_fil_x))
   (setq _imu_w_fil_y (float __imu_w_fil_y))
   (setq _imu_w_fil_z (float __imu_w_fil_z))
   (setq _imu_w_c_x (float __imu_w_c_x))
   (setq _imu_w_c_y (float __imu_w_c_y))
   (setq _imu_w_c_z (float __imu_w_c_z))
   (setq _imu_beta_fil_x (float __imu_beta_fil_x))
   (setq _imu_beta_fil_y (float __imu_beta_fil_y))
   (setq _imu_beta_fil_z (float __imu_beta_fil_z))
   (setq _rpm1 (float __rpm1))
   (setq _rpm2 (float __rpm2))
   (setq _rpm3 (float __rpm3))
   (setq _rpm4 (float __rpm4))
   (setq _rpm1_fil (float __rpm1_fil))
   (setq _rpm2_fil (float __rpm2_fil))
   (setq _rpm3_fil (float __rpm3_fil))
   (setq _rpm4_fil (float __rpm4_fil))
   (setq _sumrpm2 (float __sumrpm2))
   (setq _thrust_force (float __thrust_force))
   (setq _thrust_acc (float __thrust_acc))
   (setq _sumrpm2_fil (float __sumrpm2_fil))
   (setq _thrust_force_fil (float __thrust_force_fil))
   (setq _thrust_acc_fil (float __thrust_acc_fil))
   (setq _acc_world_x (float __acc_world_x))
   (setq _acc_world_y (float __acc_world_y))
   (setq _acc_world_z (float __acc_world_z))
   (setq _ge_acc_x (float __ge_acc_x))
   (setq _ge_acc_y (float __ge_acc_y))
   (setq _ge_acc_z (float __ge_acc_z))
   (setq _ge_bodytorque_x (float __ge_bodytorque_x))
   (setq _ge_bodytorque_y (float __ge_bodytorque_y))
   (setq _ge_bodytorque_z (float __ge_bodytorque_z))
   (setq _des_ge_bodytorque_x (float __des_ge_bodytorque_x))
   (setq _des_ge_bodytorque_y (float __des_ge_bodytorque_y))
   (setq _des_ge_bodytorque_z (float __des_ge_bodytorque_z))
   (setq _d_ge_torque_x (float __d_ge_torque_x))
   (setq _d_ge_torque_y (float __d_ge_torque_y))
   (setq _d_ge_torque_z (float __d_ge_torque_z))
   (setq _diff_ge_torque_x (float __diff_ge_torque_x))
   (setq _diff_ge_torque_y (float __diff_ge_torque_y))
   (setq _diff_ge_torque_z (float __diff_ge_torque_z))
   (setq _ext_torque_x (float __ext_torque_x))
   (setq _ext_torque_y (float __ext_torque_y))
   (setq _ext_torque_z (float __ext_torque_z))
   (setq _predict_ext_torque_x (float __predict_ext_torque_x))
   (setq _predict_ext_torque_y (float __predict_ext_torque_y))
   (setq _predict_ext_torque_z (float __predict_ext_torque_z))
   (setq _des_p_x (float __des_p_x))
   (setq _des_p_y (float __des_p_y))
   (setq _des_p_z (float __des_p_z))
   (setq _des_v_x (float __des_v_x))
   (setq _des_v_y (float __des_v_y))
   (setq _des_v_z (float __des_v_z))
   (setq _des_a_x (float __des_a_x))
   (setq _des_a_y (float __des_a_y))
   (setq _des_a_z (float __des_a_z))
   (setq _des_j_x (float __des_j_x))
   (setq _des_j_y (float __des_j_y))
   (setq _des_j_z (float __des_j_z))
   (setq _des_s_x (float __des_s_x))
   (setq _des_s_y (float __des_s_y))
   (setq _des_s_z (float __des_s_z))
   (setq _des_yaw (float __des_yaw))
   (setq _des_yaw_rate (float __des_yaw_rate))
   (setq _des_yaw_acc (float __des_yaw_acc))
   (setq _flatctrl_q_w (float __flatctrl_q_w))
   (setq _flatctrl_q_x (float __flatctrl_q_x))
   (setq _flatctrl_q_y (float __flatctrl_q_y))
   (setq _flatctrl_q_z (float __flatctrl_q_z))
   (setq _flatctrl_roll (float __flatctrl_roll))
   (setq _flatctrl_pitch (float __flatctrl_pitch))
   (setq _flatctrl_yaw (float __flatctrl_yaw))
   (setq _flatctrl_bodyrate_x (float __flatctrl_bodyrate_x))
   (setq _flatctrl_bodyrate_y (float __flatctrl_bodyrate_y))
   (setq _flatctrl_bodyrate_z (float __flatctrl_bodyrate_z))
   (setq _flatctrl_beta_x (float __flatctrl_beta_x))
   (setq _flatctrl_beta_y (float __flatctrl_beta_y))
   (setq _flatctrl_beta_z (float __flatctrl_beta_z))
   (setq _flatctrl_thrust (float __flatctrl_thrust))
   (setq _flatctrl_torque_x (float __flatctrl_torque_x))
   (setq _flatctrl_torque_y (float __flatctrl_torque_y))
   (setq _flatctrl_torque_z (float __flatctrl_torque_z))
   (setq _flatctrl_ge_acc_x (float __flatctrl_ge_acc_x))
   (setq _flatctrl_ge_acc_y (float __flatctrl_ge_acc_y))
   (setq _flatctrl_ge_acc_z (float __flatctrl_ge_acc_z))
   (setq _flatctrl_drag_acc_x (float __flatctrl_drag_acc_x))
   (setq _flatctrl_drag_acc_y (float __flatctrl_drag_acc_y))
   (setq _flatctrl_drag_acc_z (float __flatctrl_drag_acc_z))
   (setq _flatctrl_ext_acc_x (float __flatctrl_ext_acc_x))
   (setq _flatctrl_ext_acc_y (float __flatctrl_ext_acc_y))
   (setq _flatctrl_ext_acc_z (float __flatctrl_ext_acc_z))
   (setq _ge_limit_k (float __ge_limit_k))
   (setq _fb_vel_x (float __fb_vel_x))
   (setq _fb_vel_y (float __fb_vel_y))
   (setq _fb_vel_z (float __fb_vel_z))
   (setq _cmd_vel_x (float __cmd_vel_x))
   (setq _cmd_vel_y (float __cmd_vel_y))
   (setq _cmd_vel_z (float __cmd_vel_z))
   (setq _compensate_acc_x (float __compensate_acc_x))
   (setq _compensate_acc_y (float __compensate_acc_y))
   (setq _compensate_acc_z (float __compensate_acc_z))
   (setq _fb_acc_x (float __fb_acc_x))
   (setq _fb_acc_y (float __fb_acc_y))
   (setq _fb_acc_z (float __fb_acc_z))
   (setq _cmd_acc_x (float __cmd_acc_x))
   (setq _cmd_acc_y (float __cmd_acc_y))
   (setq _cmd_acc_z (float __cmd_acc_z))
   (setq _cmd_acc_norm (float __cmd_acc_norm))
   (setq _cmd_acc_norm_by_body (float __cmd_acc_norm_by_body))
   (setq _cmd_q_w (float __cmd_q_w))
   (setq _cmd_q_x (float __cmd_q_x))
   (setq _cmd_q_y (float __cmd_q_y))
   (setq _cmd_q_z (float __cmd_q_z))
   (setq _cmd_roll (float __cmd_roll))
   (setq _cmd_pitch (float __cmd_pitch))
   (setq _cmd_yaw (float __cmd_yaw))
   (setq _fb_bodyrate_x (float __fb_bodyrate_x))
   (setq _fb_bodyrate_y (float __fb_bodyrate_y))
   (setq _fb_bodyrate_z (float __fb_bodyrate_z))
   (setq _cmd_bodyrate_x (float __cmd_bodyrate_x))
   (setq _cmd_bodyrate_y (float __cmd_bodyrate_y))
   (setq _cmd_bodyrate_z (float __cmd_bodyrate_z))
   (setq _fb_beta_x (float __fb_beta_x))
   (setq _fb_beta_y (float __fb_beta_y))
   (setq _fb_beta_z (float __fb_beta_z))
   (setq _cmd_beta_x (float __cmd_beta_x))
   (setq _cmd_beta_y (float __cmd_beta_y))
   (setq _cmd_beta_z (float __cmd_beta_z))
   (setq _compensate_torque_x (float __compensate_torque_x))
   (setq _compensate_torque_y (float __compensate_torque_y))
   (setq _compensate_torque_z (float __compensate_torque_z))
   (setq _bodytorque_x (float __bodytorque_x))
   (setq _bodytorque_y (float __bodytorque_y))
   (setq _bodytorque_z (float __bodytorque_z))
   (setq _cmd_torque_body_x (float __cmd_torque_body_x))
   (setq _cmd_torque_body_y (float __cmd_torque_body_y))
   (setq _cmd_torque_body_z (float __cmd_torque_body_z))
   (setq _diff_indi_torque_x (float __diff_indi_torque_x))
   (setq _diff_indi_torque_y (float __diff_indi_torque_y))
   (setq _diff_indi_torque_z (float __diff_indi_torque_z))
   (setq _diff_torque_x (float __diff_torque_x))
   (setq _diff_torque_y (float __diff_torque_y))
   (setq _diff_torque_z (float __diff_torque_z))
   (setq _cmd_rpm1 (float __cmd_rpm1))
   (setq _cmd_rpm2 (float __cmd_rpm2))
   (setq _cmd_rpm3 (float __cmd_rpm3))
   (setq _cmd_rpm4 (float __cmd_rpm4))
   (setq _cmd_sumrpm2 (float __cmd_sumrpm2))
   (setq _cmd_sumrpm2_to_acc (float __cmd_sumrpm2_to_acc))
   (setq _fb_thrust1 (float __fb_thrust1))
   (setq _fb_thrust2 (float __fb_thrust2))
   (setq _fb_thrust3 (float __fb_thrust3))
   (setq _fb_thrust4 (float __fb_thrust4))
   (setq _ref_thrust1 (float __ref_thrust1))
   (setq _ref_thrust2 (float __ref_thrust2))
   (setq _ref_thrust3 (float __ref_thrust3))
   (setq _ref_thrust4 (float __ref_thrust4))
   (setq _cmd_thrust1 (float __cmd_thrust1))
   (setq _cmd_thrust2 (float __cmd_thrust2))
   (setq _cmd_thrust3 (float __cmd_thrust3))
   (setq _cmd_thrust4 (float __cmd_thrust4))
   (setq _Fgh (float __Fgh))
   (setq _ref_thrust_acc (float __ref_thrust_acc))
   (setq _thrust_acc_fil_x (float __thrust_acc_fil_x))
   (setq _thrust_acc_fil_y (float __thrust_acc_fil_y))
   (setq _thrust_acc_fil_z (float __thrust_acc_fil_z))
   (setq _imu_acc_fil_x (float __imu_acc_fil_x))
   (setq _imu_acc_fil_y (float __imu_acc_fil_y))
   (setq _imu_acc_fil_z (float __imu_acc_fil_z))
   (setq _extforce_acc_x (float __extforce_acc_x))
   (setq _extforce_acc_y (float __extforce_acc_y))
   (setq _extforce_acc_z (float __extforce_acc_z))
   (setq _extforce_acc_fil_x (float __extforce_acc_fil_x))
   (setq _extforce_acc_fil_y (float __extforce_acc_fil_y))
   (setq _extforce_acc_fil_z (float __extforce_acc_fil_z))
   (setq _poly_thrust (float __poly_thrust))
   (setq _fb_thrust (float __fb_thrust))
   (setq _sum_thrust (float __sum_thrust))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:odom_roll
   (&optional __odom_roll)
   (if __odom_roll (setq _odom_roll __odom_roll)) _odom_roll)
  (:odom_pitch
   (&optional __odom_pitch)
   (if __odom_pitch (setq _odom_pitch __odom_pitch)) _odom_pitch)
  (:odom_yaw
   (&optional __odom_yaw)
   (if __odom_yaw (setq _odom_yaw __odom_yaw)) _odom_yaw)
  (:odomC_roll
   (&optional __odomC_roll)
   (if __odomC_roll (setq _odomC_roll __odomC_roll)) _odomC_roll)
  (:odomC_pitch
   (&optional __odomC_pitch)
   (if __odomC_pitch (setq _odomC_pitch __odomC_pitch)) _odomC_pitch)
  (:odomC_yaw
   (&optional __odomC_yaw)
   (if __odomC_yaw (setq _odomC_yaw __odomC_yaw)) _odomC_yaw)
  (:ge_angle_roll
   (&optional __ge_angle_roll)
   (if __ge_angle_roll (setq _ge_angle_roll __ge_angle_roll)) _ge_angle_roll)
  (:ge_angle_pitch
   (&optional __ge_angle_pitch)
   (if __ge_angle_pitch (setq _ge_angle_pitch __ge_angle_pitch)) _ge_angle_pitch)
  (:ge_angle_yaw
   (&optional __ge_angle_yaw)
   (if __ge_angle_yaw (setq _ge_angle_yaw __ge_angle_yaw)) _ge_angle_yaw)
  (:imu_a_x
   (&optional __imu_a_x)
   (if __imu_a_x (setq _imu_a_x __imu_a_x)) _imu_a_x)
  (:imu_a_y
   (&optional __imu_a_y)
   (if __imu_a_y (setq _imu_a_y __imu_a_y)) _imu_a_y)
  (:imu_a_z
   (&optional __imu_a_z)
   (if __imu_a_z (setq _imu_a_z __imu_a_z)) _imu_a_z)
  (:imu_a_fil_x
   (&optional __imu_a_fil_x)
   (if __imu_a_fil_x (setq _imu_a_fil_x __imu_a_fil_x)) _imu_a_fil_x)
  (:imu_a_fil_y
   (&optional __imu_a_fil_y)
   (if __imu_a_fil_y (setq _imu_a_fil_y __imu_a_fil_y)) _imu_a_fil_y)
  (:imu_a_fil_z
   (&optional __imu_a_fil_z)
   (if __imu_a_fil_z (setq _imu_a_fil_z __imu_a_fil_z)) _imu_a_fil_z)
  (:imu_w_x
   (&optional __imu_w_x)
   (if __imu_w_x (setq _imu_w_x __imu_w_x)) _imu_w_x)
  (:imu_w_y
   (&optional __imu_w_y)
   (if __imu_w_y (setq _imu_w_y __imu_w_y)) _imu_w_y)
  (:imu_w_z
   (&optional __imu_w_z)
   (if __imu_w_z (setq _imu_w_z __imu_w_z)) _imu_w_z)
  (:imu_w_fil_x
   (&optional __imu_w_fil_x)
   (if __imu_w_fil_x (setq _imu_w_fil_x __imu_w_fil_x)) _imu_w_fil_x)
  (:imu_w_fil_y
   (&optional __imu_w_fil_y)
   (if __imu_w_fil_y (setq _imu_w_fil_y __imu_w_fil_y)) _imu_w_fil_y)
  (:imu_w_fil_z
   (&optional __imu_w_fil_z)
   (if __imu_w_fil_z (setq _imu_w_fil_z __imu_w_fil_z)) _imu_w_fil_z)
  (:imu_w_c_x
   (&optional __imu_w_c_x)
   (if __imu_w_c_x (setq _imu_w_c_x __imu_w_c_x)) _imu_w_c_x)
  (:imu_w_c_y
   (&optional __imu_w_c_y)
   (if __imu_w_c_y (setq _imu_w_c_y __imu_w_c_y)) _imu_w_c_y)
  (:imu_w_c_z
   (&optional __imu_w_c_z)
   (if __imu_w_c_z (setq _imu_w_c_z __imu_w_c_z)) _imu_w_c_z)
  (:imu_beta_fil_x
   (&optional __imu_beta_fil_x)
   (if __imu_beta_fil_x (setq _imu_beta_fil_x __imu_beta_fil_x)) _imu_beta_fil_x)
  (:imu_beta_fil_y
   (&optional __imu_beta_fil_y)
   (if __imu_beta_fil_y (setq _imu_beta_fil_y __imu_beta_fil_y)) _imu_beta_fil_y)
  (:imu_beta_fil_z
   (&optional __imu_beta_fil_z)
   (if __imu_beta_fil_z (setq _imu_beta_fil_z __imu_beta_fil_z)) _imu_beta_fil_z)
  (:rpm1
   (&optional __rpm1)
   (if __rpm1 (setq _rpm1 __rpm1)) _rpm1)
  (:rpm2
   (&optional __rpm2)
   (if __rpm2 (setq _rpm2 __rpm2)) _rpm2)
  (:rpm3
   (&optional __rpm3)
   (if __rpm3 (setq _rpm3 __rpm3)) _rpm3)
  (:rpm4
   (&optional __rpm4)
   (if __rpm4 (setq _rpm4 __rpm4)) _rpm4)
  (:rpm1_fil
   (&optional __rpm1_fil)
   (if __rpm1_fil (setq _rpm1_fil __rpm1_fil)) _rpm1_fil)
  (:rpm2_fil
   (&optional __rpm2_fil)
   (if __rpm2_fil (setq _rpm2_fil __rpm2_fil)) _rpm2_fil)
  (:rpm3_fil
   (&optional __rpm3_fil)
   (if __rpm3_fil (setq _rpm3_fil __rpm3_fil)) _rpm3_fil)
  (:rpm4_fil
   (&optional __rpm4_fil)
   (if __rpm4_fil (setq _rpm4_fil __rpm4_fil)) _rpm4_fil)
  (:sumrpm2
   (&optional __sumrpm2)
   (if __sumrpm2 (setq _sumrpm2 __sumrpm2)) _sumrpm2)
  (:thrust_force
   (&optional __thrust_force)
   (if __thrust_force (setq _thrust_force __thrust_force)) _thrust_force)
  (:thrust_acc
   (&optional __thrust_acc)
   (if __thrust_acc (setq _thrust_acc __thrust_acc)) _thrust_acc)
  (:sumrpm2_fil
   (&optional __sumrpm2_fil)
   (if __sumrpm2_fil (setq _sumrpm2_fil __sumrpm2_fil)) _sumrpm2_fil)
  (:thrust_force_fil
   (&optional __thrust_force_fil)
   (if __thrust_force_fil (setq _thrust_force_fil __thrust_force_fil)) _thrust_force_fil)
  (:thrust_acc_fil
   (&optional __thrust_acc_fil)
   (if __thrust_acc_fil (setq _thrust_acc_fil __thrust_acc_fil)) _thrust_acc_fil)
  (:acc_world_x
   (&optional __acc_world_x)
   (if __acc_world_x (setq _acc_world_x __acc_world_x)) _acc_world_x)
  (:acc_world_y
   (&optional __acc_world_y)
   (if __acc_world_y (setq _acc_world_y __acc_world_y)) _acc_world_y)
  (:acc_world_z
   (&optional __acc_world_z)
   (if __acc_world_z (setq _acc_world_z __acc_world_z)) _acc_world_z)
  (:ge_acc_x
   (&optional __ge_acc_x)
   (if __ge_acc_x (setq _ge_acc_x __ge_acc_x)) _ge_acc_x)
  (:ge_acc_y
   (&optional __ge_acc_y)
   (if __ge_acc_y (setq _ge_acc_y __ge_acc_y)) _ge_acc_y)
  (:ge_acc_z
   (&optional __ge_acc_z)
   (if __ge_acc_z (setq _ge_acc_z __ge_acc_z)) _ge_acc_z)
  (:ge_bodytorque_x
   (&optional __ge_bodytorque_x)
   (if __ge_bodytorque_x (setq _ge_bodytorque_x __ge_bodytorque_x)) _ge_bodytorque_x)
  (:ge_bodytorque_y
   (&optional __ge_bodytorque_y)
   (if __ge_bodytorque_y (setq _ge_bodytorque_y __ge_bodytorque_y)) _ge_bodytorque_y)
  (:ge_bodytorque_z
   (&optional __ge_bodytorque_z)
   (if __ge_bodytorque_z (setq _ge_bodytorque_z __ge_bodytorque_z)) _ge_bodytorque_z)
  (:des_ge_bodytorque_x
   (&optional __des_ge_bodytorque_x)
   (if __des_ge_bodytorque_x (setq _des_ge_bodytorque_x __des_ge_bodytorque_x)) _des_ge_bodytorque_x)
  (:des_ge_bodytorque_y
   (&optional __des_ge_bodytorque_y)
   (if __des_ge_bodytorque_y (setq _des_ge_bodytorque_y __des_ge_bodytorque_y)) _des_ge_bodytorque_y)
  (:des_ge_bodytorque_z
   (&optional __des_ge_bodytorque_z)
   (if __des_ge_bodytorque_z (setq _des_ge_bodytorque_z __des_ge_bodytorque_z)) _des_ge_bodytorque_z)
  (:d_ge_torque_x
   (&optional __d_ge_torque_x)
   (if __d_ge_torque_x (setq _d_ge_torque_x __d_ge_torque_x)) _d_ge_torque_x)
  (:d_ge_torque_y
   (&optional __d_ge_torque_y)
   (if __d_ge_torque_y (setq _d_ge_torque_y __d_ge_torque_y)) _d_ge_torque_y)
  (:d_ge_torque_z
   (&optional __d_ge_torque_z)
   (if __d_ge_torque_z (setq _d_ge_torque_z __d_ge_torque_z)) _d_ge_torque_z)
  (:diff_ge_torque_x
   (&optional __diff_ge_torque_x)
   (if __diff_ge_torque_x (setq _diff_ge_torque_x __diff_ge_torque_x)) _diff_ge_torque_x)
  (:diff_ge_torque_y
   (&optional __diff_ge_torque_y)
   (if __diff_ge_torque_y (setq _diff_ge_torque_y __diff_ge_torque_y)) _diff_ge_torque_y)
  (:diff_ge_torque_z
   (&optional __diff_ge_torque_z)
   (if __diff_ge_torque_z (setq _diff_ge_torque_z __diff_ge_torque_z)) _diff_ge_torque_z)
  (:ext_torque_x
   (&optional __ext_torque_x)
   (if __ext_torque_x (setq _ext_torque_x __ext_torque_x)) _ext_torque_x)
  (:ext_torque_y
   (&optional __ext_torque_y)
   (if __ext_torque_y (setq _ext_torque_y __ext_torque_y)) _ext_torque_y)
  (:ext_torque_z
   (&optional __ext_torque_z)
   (if __ext_torque_z (setq _ext_torque_z __ext_torque_z)) _ext_torque_z)
  (:predict_ext_torque_x
   (&optional __predict_ext_torque_x)
   (if __predict_ext_torque_x (setq _predict_ext_torque_x __predict_ext_torque_x)) _predict_ext_torque_x)
  (:predict_ext_torque_y
   (&optional __predict_ext_torque_y)
   (if __predict_ext_torque_y (setq _predict_ext_torque_y __predict_ext_torque_y)) _predict_ext_torque_y)
  (:predict_ext_torque_z
   (&optional __predict_ext_torque_z)
   (if __predict_ext_torque_z (setq _predict_ext_torque_z __predict_ext_torque_z)) _predict_ext_torque_z)
  (:des_p_x
   (&optional __des_p_x)
   (if __des_p_x (setq _des_p_x __des_p_x)) _des_p_x)
  (:des_p_y
   (&optional __des_p_y)
   (if __des_p_y (setq _des_p_y __des_p_y)) _des_p_y)
  (:des_p_z
   (&optional __des_p_z)
   (if __des_p_z (setq _des_p_z __des_p_z)) _des_p_z)
  (:des_v_x
   (&optional __des_v_x)
   (if __des_v_x (setq _des_v_x __des_v_x)) _des_v_x)
  (:des_v_y
   (&optional __des_v_y)
   (if __des_v_y (setq _des_v_y __des_v_y)) _des_v_y)
  (:des_v_z
   (&optional __des_v_z)
   (if __des_v_z (setq _des_v_z __des_v_z)) _des_v_z)
  (:des_a_x
   (&optional __des_a_x)
   (if __des_a_x (setq _des_a_x __des_a_x)) _des_a_x)
  (:des_a_y
   (&optional __des_a_y)
   (if __des_a_y (setq _des_a_y __des_a_y)) _des_a_y)
  (:des_a_z
   (&optional __des_a_z)
   (if __des_a_z (setq _des_a_z __des_a_z)) _des_a_z)
  (:des_j_x
   (&optional __des_j_x)
   (if __des_j_x (setq _des_j_x __des_j_x)) _des_j_x)
  (:des_j_y
   (&optional __des_j_y)
   (if __des_j_y (setq _des_j_y __des_j_y)) _des_j_y)
  (:des_j_z
   (&optional __des_j_z)
   (if __des_j_z (setq _des_j_z __des_j_z)) _des_j_z)
  (:des_s_x
   (&optional __des_s_x)
   (if __des_s_x (setq _des_s_x __des_s_x)) _des_s_x)
  (:des_s_y
   (&optional __des_s_y)
   (if __des_s_y (setq _des_s_y __des_s_y)) _des_s_y)
  (:des_s_z
   (&optional __des_s_z)
   (if __des_s_z (setq _des_s_z __des_s_z)) _des_s_z)
  (:des_yaw
   (&optional __des_yaw)
   (if __des_yaw (setq _des_yaw __des_yaw)) _des_yaw)
  (:des_yaw_rate
   (&optional __des_yaw_rate)
   (if __des_yaw_rate (setq _des_yaw_rate __des_yaw_rate)) _des_yaw_rate)
  (:des_yaw_acc
   (&optional __des_yaw_acc)
   (if __des_yaw_acc (setq _des_yaw_acc __des_yaw_acc)) _des_yaw_acc)
  (:flatctrl_q_w
   (&optional __flatctrl_q_w)
   (if __flatctrl_q_w (setq _flatctrl_q_w __flatctrl_q_w)) _flatctrl_q_w)
  (:flatctrl_q_x
   (&optional __flatctrl_q_x)
   (if __flatctrl_q_x (setq _flatctrl_q_x __flatctrl_q_x)) _flatctrl_q_x)
  (:flatctrl_q_y
   (&optional __flatctrl_q_y)
   (if __flatctrl_q_y (setq _flatctrl_q_y __flatctrl_q_y)) _flatctrl_q_y)
  (:flatctrl_q_z
   (&optional __flatctrl_q_z)
   (if __flatctrl_q_z (setq _flatctrl_q_z __flatctrl_q_z)) _flatctrl_q_z)
  (:flatctrl_roll
   (&optional __flatctrl_roll)
   (if __flatctrl_roll (setq _flatctrl_roll __flatctrl_roll)) _flatctrl_roll)
  (:flatctrl_pitch
   (&optional __flatctrl_pitch)
   (if __flatctrl_pitch (setq _flatctrl_pitch __flatctrl_pitch)) _flatctrl_pitch)
  (:flatctrl_yaw
   (&optional __flatctrl_yaw)
   (if __flatctrl_yaw (setq _flatctrl_yaw __flatctrl_yaw)) _flatctrl_yaw)
  (:flatctrl_bodyrate_x
   (&optional __flatctrl_bodyrate_x)
   (if __flatctrl_bodyrate_x (setq _flatctrl_bodyrate_x __flatctrl_bodyrate_x)) _flatctrl_bodyrate_x)
  (:flatctrl_bodyrate_y
   (&optional __flatctrl_bodyrate_y)
   (if __flatctrl_bodyrate_y (setq _flatctrl_bodyrate_y __flatctrl_bodyrate_y)) _flatctrl_bodyrate_y)
  (:flatctrl_bodyrate_z
   (&optional __flatctrl_bodyrate_z)
   (if __flatctrl_bodyrate_z (setq _flatctrl_bodyrate_z __flatctrl_bodyrate_z)) _flatctrl_bodyrate_z)
  (:flatctrl_beta_x
   (&optional __flatctrl_beta_x)
   (if __flatctrl_beta_x (setq _flatctrl_beta_x __flatctrl_beta_x)) _flatctrl_beta_x)
  (:flatctrl_beta_y
   (&optional __flatctrl_beta_y)
   (if __flatctrl_beta_y (setq _flatctrl_beta_y __flatctrl_beta_y)) _flatctrl_beta_y)
  (:flatctrl_beta_z
   (&optional __flatctrl_beta_z)
   (if __flatctrl_beta_z (setq _flatctrl_beta_z __flatctrl_beta_z)) _flatctrl_beta_z)
  (:flatctrl_thrust
   (&optional __flatctrl_thrust)
   (if __flatctrl_thrust (setq _flatctrl_thrust __flatctrl_thrust)) _flatctrl_thrust)
  (:flatctrl_torque_x
   (&optional __flatctrl_torque_x)
   (if __flatctrl_torque_x (setq _flatctrl_torque_x __flatctrl_torque_x)) _flatctrl_torque_x)
  (:flatctrl_torque_y
   (&optional __flatctrl_torque_y)
   (if __flatctrl_torque_y (setq _flatctrl_torque_y __flatctrl_torque_y)) _flatctrl_torque_y)
  (:flatctrl_torque_z
   (&optional __flatctrl_torque_z)
   (if __flatctrl_torque_z (setq _flatctrl_torque_z __flatctrl_torque_z)) _flatctrl_torque_z)
  (:flatctrl_ge_acc_x
   (&optional __flatctrl_ge_acc_x)
   (if __flatctrl_ge_acc_x (setq _flatctrl_ge_acc_x __flatctrl_ge_acc_x)) _flatctrl_ge_acc_x)
  (:flatctrl_ge_acc_y
   (&optional __flatctrl_ge_acc_y)
   (if __flatctrl_ge_acc_y (setq _flatctrl_ge_acc_y __flatctrl_ge_acc_y)) _flatctrl_ge_acc_y)
  (:flatctrl_ge_acc_z
   (&optional __flatctrl_ge_acc_z)
   (if __flatctrl_ge_acc_z (setq _flatctrl_ge_acc_z __flatctrl_ge_acc_z)) _flatctrl_ge_acc_z)
  (:flatctrl_drag_acc_x
   (&optional __flatctrl_drag_acc_x)
   (if __flatctrl_drag_acc_x (setq _flatctrl_drag_acc_x __flatctrl_drag_acc_x)) _flatctrl_drag_acc_x)
  (:flatctrl_drag_acc_y
   (&optional __flatctrl_drag_acc_y)
   (if __flatctrl_drag_acc_y (setq _flatctrl_drag_acc_y __flatctrl_drag_acc_y)) _flatctrl_drag_acc_y)
  (:flatctrl_drag_acc_z
   (&optional __flatctrl_drag_acc_z)
   (if __flatctrl_drag_acc_z (setq _flatctrl_drag_acc_z __flatctrl_drag_acc_z)) _flatctrl_drag_acc_z)
  (:flatctrl_ext_acc_x
   (&optional __flatctrl_ext_acc_x)
   (if __flatctrl_ext_acc_x (setq _flatctrl_ext_acc_x __flatctrl_ext_acc_x)) _flatctrl_ext_acc_x)
  (:flatctrl_ext_acc_y
   (&optional __flatctrl_ext_acc_y)
   (if __flatctrl_ext_acc_y (setq _flatctrl_ext_acc_y __flatctrl_ext_acc_y)) _flatctrl_ext_acc_y)
  (:flatctrl_ext_acc_z
   (&optional __flatctrl_ext_acc_z)
   (if __flatctrl_ext_acc_z (setq _flatctrl_ext_acc_z __flatctrl_ext_acc_z)) _flatctrl_ext_acc_z)
  (:ge_limit_k
   (&optional __ge_limit_k)
   (if __ge_limit_k (setq _ge_limit_k __ge_limit_k)) _ge_limit_k)
  (:fb_vel_x
   (&optional __fb_vel_x)
   (if __fb_vel_x (setq _fb_vel_x __fb_vel_x)) _fb_vel_x)
  (:fb_vel_y
   (&optional __fb_vel_y)
   (if __fb_vel_y (setq _fb_vel_y __fb_vel_y)) _fb_vel_y)
  (:fb_vel_z
   (&optional __fb_vel_z)
   (if __fb_vel_z (setq _fb_vel_z __fb_vel_z)) _fb_vel_z)
  (:cmd_vel_x
   (&optional __cmd_vel_x)
   (if __cmd_vel_x (setq _cmd_vel_x __cmd_vel_x)) _cmd_vel_x)
  (:cmd_vel_y
   (&optional __cmd_vel_y)
   (if __cmd_vel_y (setq _cmd_vel_y __cmd_vel_y)) _cmd_vel_y)
  (:cmd_vel_z
   (&optional __cmd_vel_z)
   (if __cmd_vel_z (setq _cmd_vel_z __cmd_vel_z)) _cmd_vel_z)
  (:compensate_acc_x
   (&optional __compensate_acc_x)
   (if __compensate_acc_x (setq _compensate_acc_x __compensate_acc_x)) _compensate_acc_x)
  (:compensate_acc_y
   (&optional __compensate_acc_y)
   (if __compensate_acc_y (setq _compensate_acc_y __compensate_acc_y)) _compensate_acc_y)
  (:compensate_acc_z
   (&optional __compensate_acc_z)
   (if __compensate_acc_z (setq _compensate_acc_z __compensate_acc_z)) _compensate_acc_z)
  (:fb_acc_x
   (&optional __fb_acc_x)
   (if __fb_acc_x (setq _fb_acc_x __fb_acc_x)) _fb_acc_x)
  (:fb_acc_y
   (&optional __fb_acc_y)
   (if __fb_acc_y (setq _fb_acc_y __fb_acc_y)) _fb_acc_y)
  (:fb_acc_z
   (&optional __fb_acc_z)
   (if __fb_acc_z (setq _fb_acc_z __fb_acc_z)) _fb_acc_z)
  (:cmd_acc_x
   (&optional __cmd_acc_x)
   (if __cmd_acc_x (setq _cmd_acc_x __cmd_acc_x)) _cmd_acc_x)
  (:cmd_acc_y
   (&optional __cmd_acc_y)
   (if __cmd_acc_y (setq _cmd_acc_y __cmd_acc_y)) _cmd_acc_y)
  (:cmd_acc_z
   (&optional __cmd_acc_z)
   (if __cmd_acc_z (setq _cmd_acc_z __cmd_acc_z)) _cmd_acc_z)
  (:cmd_acc_norm
   (&optional __cmd_acc_norm)
   (if __cmd_acc_norm (setq _cmd_acc_norm __cmd_acc_norm)) _cmd_acc_norm)
  (:cmd_acc_norm_by_body
   (&optional __cmd_acc_norm_by_body)
   (if __cmd_acc_norm_by_body (setq _cmd_acc_norm_by_body __cmd_acc_norm_by_body)) _cmd_acc_norm_by_body)
  (:cmd_q_w
   (&optional __cmd_q_w)
   (if __cmd_q_w (setq _cmd_q_w __cmd_q_w)) _cmd_q_w)
  (:cmd_q_x
   (&optional __cmd_q_x)
   (if __cmd_q_x (setq _cmd_q_x __cmd_q_x)) _cmd_q_x)
  (:cmd_q_y
   (&optional __cmd_q_y)
   (if __cmd_q_y (setq _cmd_q_y __cmd_q_y)) _cmd_q_y)
  (:cmd_q_z
   (&optional __cmd_q_z)
   (if __cmd_q_z (setq _cmd_q_z __cmd_q_z)) _cmd_q_z)
  (:cmd_roll
   (&optional __cmd_roll)
   (if __cmd_roll (setq _cmd_roll __cmd_roll)) _cmd_roll)
  (:cmd_pitch
   (&optional __cmd_pitch)
   (if __cmd_pitch (setq _cmd_pitch __cmd_pitch)) _cmd_pitch)
  (:cmd_yaw
   (&optional __cmd_yaw)
   (if __cmd_yaw (setq _cmd_yaw __cmd_yaw)) _cmd_yaw)
  (:fb_bodyrate_x
   (&optional __fb_bodyrate_x)
   (if __fb_bodyrate_x (setq _fb_bodyrate_x __fb_bodyrate_x)) _fb_bodyrate_x)
  (:fb_bodyrate_y
   (&optional __fb_bodyrate_y)
   (if __fb_bodyrate_y (setq _fb_bodyrate_y __fb_bodyrate_y)) _fb_bodyrate_y)
  (:fb_bodyrate_z
   (&optional __fb_bodyrate_z)
   (if __fb_bodyrate_z (setq _fb_bodyrate_z __fb_bodyrate_z)) _fb_bodyrate_z)
  (:cmd_bodyrate_x
   (&optional __cmd_bodyrate_x)
   (if __cmd_bodyrate_x (setq _cmd_bodyrate_x __cmd_bodyrate_x)) _cmd_bodyrate_x)
  (:cmd_bodyrate_y
   (&optional __cmd_bodyrate_y)
   (if __cmd_bodyrate_y (setq _cmd_bodyrate_y __cmd_bodyrate_y)) _cmd_bodyrate_y)
  (:cmd_bodyrate_z
   (&optional __cmd_bodyrate_z)
   (if __cmd_bodyrate_z (setq _cmd_bodyrate_z __cmd_bodyrate_z)) _cmd_bodyrate_z)
  (:fb_beta_x
   (&optional __fb_beta_x)
   (if __fb_beta_x (setq _fb_beta_x __fb_beta_x)) _fb_beta_x)
  (:fb_beta_y
   (&optional __fb_beta_y)
   (if __fb_beta_y (setq _fb_beta_y __fb_beta_y)) _fb_beta_y)
  (:fb_beta_z
   (&optional __fb_beta_z)
   (if __fb_beta_z (setq _fb_beta_z __fb_beta_z)) _fb_beta_z)
  (:cmd_beta_x
   (&optional __cmd_beta_x)
   (if __cmd_beta_x (setq _cmd_beta_x __cmd_beta_x)) _cmd_beta_x)
  (:cmd_beta_y
   (&optional __cmd_beta_y)
   (if __cmd_beta_y (setq _cmd_beta_y __cmd_beta_y)) _cmd_beta_y)
  (:cmd_beta_z
   (&optional __cmd_beta_z)
   (if __cmd_beta_z (setq _cmd_beta_z __cmd_beta_z)) _cmd_beta_z)
  (:compensate_torque_x
   (&optional __compensate_torque_x)
   (if __compensate_torque_x (setq _compensate_torque_x __compensate_torque_x)) _compensate_torque_x)
  (:compensate_torque_y
   (&optional __compensate_torque_y)
   (if __compensate_torque_y (setq _compensate_torque_y __compensate_torque_y)) _compensate_torque_y)
  (:compensate_torque_z
   (&optional __compensate_torque_z)
   (if __compensate_torque_z (setq _compensate_torque_z __compensate_torque_z)) _compensate_torque_z)
  (:bodytorque_x
   (&optional __bodytorque_x)
   (if __bodytorque_x (setq _bodytorque_x __bodytorque_x)) _bodytorque_x)
  (:bodytorque_y
   (&optional __bodytorque_y)
   (if __bodytorque_y (setq _bodytorque_y __bodytorque_y)) _bodytorque_y)
  (:bodytorque_z
   (&optional __bodytorque_z)
   (if __bodytorque_z (setq _bodytorque_z __bodytorque_z)) _bodytorque_z)
  (:cmd_torque_body_x
   (&optional __cmd_torque_body_x)
   (if __cmd_torque_body_x (setq _cmd_torque_body_x __cmd_torque_body_x)) _cmd_torque_body_x)
  (:cmd_torque_body_y
   (&optional __cmd_torque_body_y)
   (if __cmd_torque_body_y (setq _cmd_torque_body_y __cmd_torque_body_y)) _cmd_torque_body_y)
  (:cmd_torque_body_z
   (&optional __cmd_torque_body_z)
   (if __cmd_torque_body_z (setq _cmd_torque_body_z __cmd_torque_body_z)) _cmd_torque_body_z)
  (:diff_indi_torque_x
   (&optional __diff_indi_torque_x)
   (if __diff_indi_torque_x (setq _diff_indi_torque_x __diff_indi_torque_x)) _diff_indi_torque_x)
  (:diff_indi_torque_y
   (&optional __diff_indi_torque_y)
   (if __diff_indi_torque_y (setq _diff_indi_torque_y __diff_indi_torque_y)) _diff_indi_torque_y)
  (:diff_indi_torque_z
   (&optional __diff_indi_torque_z)
   (if __diff_indi_torque_z (setq _diff_indi_torque_z __diff_indi_torque_z)) _diff_indi_torque_z)
  (:diff_torque_x
   (&optional __diff_torque_x)
   (if __diff_torque_x (setq _diff_torque_x __diff_torque_x)) _diff_torque_x)
  (:diff_torque_y
   (&optional __diff_torque_y)
   (if __diff_torque_y (setq _diff_torque_y __diff_torque_y)) _diff_torque_y)
  (:diff_torque_z
   (&optional __diff_torque_z)
   (if __diff_torque_z (setq _diff_torque_z __diff_torque_z)) _diff_torque_z)
  (:cmd_rpm1
   (&optional __cmd_rpm1)
   (if __cmd_rpm1 (setq _cmd_rpm1 __cmd_rpm1)) _cmd_rpm1)
  (:cmd_rpm2
   (&optional __cmd_rpm2)
   (if __cmd_rpm2 (setq _cmd_rpm2 __cmd_rpm2)) _cmd_rpm2)
  (:cmd_rpm3
   (&optional __cmd_rpm3)
   (if __cmd_rpm3 (setq _cmd_rpm3 __cmd_rpm3)) _cmd_rpm3)
  (:cmd_rpm4
   (&optional __cmd_rpm4)
   (if __cmd_rpm4 (setq _cmd_rpm4 __cmd_rpm4)) _cmd_rpm4)
  (:cmd_sumrpm2
   (&optional __cmd_sumrpm2)
   (if __cmd_sumrpm2 (setq _cmd_sumrpm2 __cmd_sumrpm2)) _cmd_sumrpm2)
  (:cmd_sumrpm2_to_acc
   (&optional __cmd_sumrpm2_to_acc)
   (if __cmd_sumrpm2_to_acc (setq _cmd_sumrpm2_to_acc __cmd_sumrpm2_to_acc)) _cmd_sumrpm2_to_acc)
  (:fb_thrust1
   (&optional __fb_thrust1)
   (if __fb_thrust1 (setq _fb_thrust1 __fb_thrust1)) _fb_thrust1)
  (:fb_thrust2
   (&optional __fb_thrust2)
   (if __fb_thrust2 (setq _fb_thrust2 __fb_thrust2)) _fb_thrust2)
  (:fb_thrust3
   (&optional __fb_thrust3)
   (if __fb_thrust3 (setq _fb_thrust3 __fb_thrust3)) _fb_thrust3)
  (:fb_thrust4
   (&optional __fb_thrust4)
   (if __fb_thrust4 (setq _fb_thrust4 __fb_thrust4)) _fb_thrust4)
  (:ref_thrust1
   (&optional __ref_thrust1)
   (if __ref_thrust1 (setq _ref_thrust1 __ref_thrust1)) _ref_thrust1)
  (:ref_thrust2
   (&optional __ref_thrust2)
   (if __ref_thrust2 (setq _ref_thrust2 __ref_thrust2)) _ref_thrust2)
  (:ref_thrust3
   (&optional __ref_thrust3)
   (if __ref_thrust3 (setq _ref_thrust3 __ref_thrust3)) _ref_thrust3)
  (:ref_thrust4
   (&optional __ref_thrust4)
   (if __ref_thrust4 (setq _ref_thrust4 __ref_thrust4)) _ref_thrust4)
  (:cmd_thrust1
   (&optional __cmd_thrust1)
   (if __cmd_thrust1 (setq _cmd_thrust1 __cmd_thrust1)) _cmd_thrust1)
  (:cmd_thrust2
   (&optional __cmd_thrust2)
   (if __cmd_thrust2 (setq _cmd_thrust2 __cmd_thrust2)) _cmd_thrust2)
  (:cmd_thrust3
   (&optional __cmd_thrust3)
   (if __cmd_thrust3 (setq _cmd_thrust3 __cmd_thrust3)) _cmd_thrust3)
  (:cmd_thrust4
   (&optional __cmd_thrust4)
   (if __cmd_thrust4 (setq _cmd_thrust4 __cmd_thrust4)) _cmd_thrust4)
  (:Fgh
   (&optional __Fgh)
   (if __Fgh (setq _Fgh __Fgh)) _Fgh)
  (:ref_thrust_acc
   (&optional __ref_thrust_acc)
   (if __ref_thrust_acc (setq _ref_thrust_acc __ref_thrust_acc)) _ref_thrust_acc)
  (:thrust_acc_fil_x
   (&optional __thrust_acc_fil_x)
   (if __thrust_acc_fil_x (setq _thrust_acc_fil_x __thrust_acc_fil_x)) _thrust_acc_fil_x)
  (:thrust_acc_fil_y
   (&optional __thrust_acc_fil_y)
   (if __thrust_acc_fil_y (setq _thrust_acc_fil_y __thrust_acc_fil_y)) _thrust_acc_fil_y)
  (:thrust_acc_fil_z
   (&optional __thrust_acc_fil_z)
   (if __thrust_acc_fil_z (setq _thrust_acc_fil_z __thrust_acc_fil_z)) _thrust_acc_fil_z)
  (:imu_acc_fil_x
   (&optional __imu_acc_fil_x)
   (if __imu_acc_fil_x (setq _imu_acc_fil_x __imu_acc_fil_x)) _imu_acc_fil_x)
  (:imu_acc_fil_y
   (&optional __imu_acc_fil_y)
   (if __imu_acc_fil_y (setq _imu_acc_fil_y __imu_acc_fil_y)) _imu_acc_fil_y)
  (:imu_acc_fil_z
   (&optional __imu_acc_fil_z)
   (if __imu_acc_fil_z (setq _imu_acc_fil_z __imu_acc_fil_z)) _imu_acc_fil_z)
  (:extforce_acc_x
   (&optional __extforce_acc_x)
   (if __extforce_acc_x (setq _extforce_acc_x __extforce_acc_x)) _extforce_acc_x)
  (:extforce_acc_y
   (&optional __extforce_acc_y)
   (if __extforce_acc_y (setq _extforce_acc_y __extforce_acc_y)) _extforce_acc_y)
  (:extforce_acc_z
   (&optional __extforce_acc_z)
   (if __extforce_acc_z (setq _extforce_acc_z __extforce_acc_z)) _extforce_acc_z)
  (:extforce_acc_fil_x
   (&optional __extforce_acc_fil_x)
   (if __extforce_acc_fil_x (setq _extforce_acc_fil_x __extforce_acc_fil_x)) _extforce_acc_fil_x)
  (:extforce_acc_fil_y
   (&optional __extforce_acc_fil_y)
   (if __extforce_acc_fil_y (setq _extforce_acc_fil_y __extforce_acc_fil_y)) _extforce_acc_fil_y)
  (:extforce_acc_fil_z
   (&optional __extforce_acc_fil_z)
   (if __extforce_acc_fil_z (setq _extforce_acc_fil_z __extforce_acc_fil_z)) _extforce_acc_fil_z)
  (:poly_thrust
   (&optional __poly_thrust)
   (if __poly_thrust (setq _poly_thrust __poly_thrust)) _poly_thrust)
  (:fb_thrust
   (&optional __fb_thrust)
   (if __fb_thrust (setq _fb_thrust __fb_thrust)) _fb_thrust)
  (:sum_thrust
   (&optional __sum_thrust)
   (if __sum_thrust (setq _sum_thrust __sum_thrust)) _sum_thrust)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _odom_roll
    8
    ;; float64 _odom_pitch
    8
    ;; float64 _odom_yaw
    8
    ;; float64 _odomC_roll
    8
    ;; float64 _odomC_pitch
    8
    ;; float64 _odomC_yaw
    8
    ;; float64 _ge_angle_roll
    8
    ;; float64 _ge_angle_pitch
    8
    ;; float64 _ge_angle_yaw
    8
    ;; float64 _imu_a_x
    8
    ;; float64 _imu_a_y
    8
    ;; float64 _imu_a_z
    8
    ;; float64 _imu_a_fil_x
    8
    ;; float64 _imu_a_fil_y
    8
    ;; float64 _imu_a_fil_z
    8
    ;; float64 _imu_w_x
    8
    ;; float64 _imu_w_y
    8
    ;; float64 _imu_w_z
    8
    ;; float64 _imu_w_fil_x
    8
    ;; float64 _imu_w_fil_y
    8
    ;; float64 _imu_w_fil_z
    8
    ;; float64 _imu_w_c_x
    8
    ;; float64 _imu_w_c_y
    8
    ;; float64 _imu_w_c_z
    8
    ;; float64 _imu_beta_fil_x
    8
    ;; float64 _imu_beta_fil_y
    8
    ;; float64 _imu_beta_fil_z
    8
    ;; float64 _rpm1
    8
    ;; float64 _rpm2
    8
    ;; float64 _rpm3
    8
    ;; float64 _rpm4
    8
    ;; float64 _rpm1_fil
    8
    ;; float64 _rpm2_fil
    8
    ;; float64 _rpm3_fil
    8
    ;; float64 _rpm4_fil
    8
    ;; float64 _sumrpm2
    8
    ;; float64 _thrust_force
    8
    ;; float64 _thrust_acc
    8
    ;; float64 _sumrpm2_fil
    8
    ;; float64 _thrust_force_fil
    8
    ;; float64 _thrust_acc_fil
    8
    ;; float64 _acc_world_x
    8
    ;; float64 _acc_world_y
    8
    ;; float64 _acc_world_z
    8
    ;; float64 _ge_acc_x
    8
    ;; float64 _ge_acc_y
    8
    ;; float64 _ge_acc_z
    8
    ;; float64 _ge_bodytorque_x
    8
    ;; float64 _ge_bodytorque_y
    8
    ;; float64 _ge_bodytorque_z
    8
    ;; float64 _des_ge_bodytorque_x
    8
    ;; float64 _des_ge_bodytorque_y
    8
    ;; float64 _des_ge_bodytorque_z
    8
    ;; float64 _d_ge_torque_x
    8
    ;; float64 _d_ge_torque_y
    8
    ;; float64 _d_ge_torque_z
    8
    ;; float64 _diff_ge_torque_x
    8
    ;; float64 _diff_ge_torque_y
    8
    ;; float64 _diff_ge_torque_z
    8
    ;; float64 _ext_torque_x
    8
    ;; float64 _ext_torque_y
    8
    ;; float64 _ext_torque_z
    8
    ;; float64 _predict_ext_torque_x
    8
    ;; float64 _predict_ext_torque_y
    8
    ;; float64 _predict_ext_torque_z
    8
    ;; float64 _des_p_x
    8
    ;; float64 _des_p_y
    8
    ;; float64 _des_p_z
    8
    ;; float64 _des_v_x
    8
    ;; float64 _des_v_y
    8
    ;; float64 _des_v_z
    8
    ;; float64 _des_a_x
    8
    ;; float64 _des_a_y
    8
    ;; float64 _des_a_z
    8
    ;; float64 _des_j_x
    8
    ;; float64 _des_j_y
    8
    ;; float64 _des_j_z
    8
    ;; float64 _des_s_x
    8
    ;; float64 _des_s_y
    8
    ;; float64 _des_s_z
    8
    ;; float64 _des_yaw
    8
    ;; float64 _des_yaw_rate
    8
    ;; float64 _des_yaw_acc
    8
    ;; float64 _flatctrl_q_w
    8
    ;; float64 _flatctrl_q_x
    8
    ;; float64 _flatctrl_q_y
    8
    ;; float64 _flatctrl_q_z
    8
    ;; float64 _flatctrl_roll
    8
    ;; float64 _flatctrl_pitch
    8
    ;; float64 _flatctrl_yaw
    8
    ;; float64 _flatctrl_bodyrate_x
    8
    ;; float64 _flatctrl_bodyrate_y
    8
    ;; float64 _flatctrl_bodyrate_z
    8
    ;; float64 _flatctrl_beta_x
    8
    ;; float64 _flatctrl_beta_y
    8
    ;; float64 _flatctrl_beta_z
    8
    ;; float64 _flatctrl_thrust
    8
    ;; float64 _flatctrl_torque_x
    8
    ;; float64 _flatctrl_torque_y
    8
    ;; float64 _flatctrl_torque_z
    8
    ;; float64 _flatctrl_ge_acc_x
    8
    ;; float64 _flatctrl_ge_acc_y
    8
    ;; float64 _flatctrl_ge_acc_z
    8
    ;; float64 _flatctrl_drag_acc_x
    8
    ;; float64 _flatctrl_drag_acc_y
    8
    ;; float64 _flatctrl_drag_acc_z
    8
    ;; float64 _flatctrl_ext_acc_x
    8
    ;; float64 _flatctrl_ext_acc_y
    8
    ;; float64 _flatctrl_ext_acc_z
    8
    ;; float64 _ge_limit_k
    8
    ;; float64 _fb_vel_x
    8
    ;; float64 _fb_vel_y
    8
    ;; float64 _fb_vel_z
    8
    ;; float64 _cmd_vel_x
    8
    ;; float64 _cmd_vel_y
    8
    ;; float64 _cmd_vel_z
    8
    ;; float64 _compensate_acc_x
    8
    ;; float64 _compensate_acc_y
    8
    ;; float64 _compensate_acc_z
    8
    ;; float64 _fb_acc_x
    8
    ;; float64 _fb_acc_y
    8
    ;; float64 _fb_acc_z
    8
    ;; float64 _cmd_acc_x
    8
    ;; float64 _cmd_acc_y
    8
    ;; float64 _cmd_acc_z
    8
    ;; float64 _cmd_acc_norm
    8
    ;; float64 _cmd_acc_norm_by_body
    8
    ;; float64 _cmd_q_w
    8
    ;; float64 _cmd_q_x
    8
    ;; float64 _cmd_q_y
    8
    ;; float64 _cmd_q_z
    8
    ;; float64 _cmd_roll
    8
    ;; float64 _cmd_pitch
    8
    ;; float64 _cmd_yaw
    8
    ;; float64 _fb_bodyrate_x
    8
    ;; float64 _fb_bodyrate_y
    8
    ;; float64 _fb_bodyrate_z
    8
    ;; float64 _cmd_bodyrate_x
    8
    ;; float64 _cmd_bodyrate_y
    8
    ;; float64 _cmd_bodyrate_z
    8
    ;; float64 _fb_beta_x
    8
    ;; float64 _fb_beta_y
    8
    ;; float64 _fb_beta_z
    8
    ;; float64 _cmd_beta_x
    8
    ;; float64 _cmd_beta_y
    8
    ;; float64 _cmd_beta_z
    8
    ;; float64 _compensate_torque_x
    8
    ;; float64 _compensate_torque_y
    8
    ;; float64 _compensate_torque_z
    8
    ;; float64 _bodytorque_x
    8
    ;; float64 _bodytorque_y
    8
    ;; float64 _bodytorque_z
    8
    ;; float64 _cmd_torque_body_x
    8
    ;; float64 _cmd_torque_body_y
    8
    ;; float64 _cmd_torque_body_z
    8
    ;; float64 _diff_indi_torque_x
    8
    ;; float64 _diff_indi_torque_y
    8
    ;; float64 _diff_indi_torque_z
    8
    ;; float64 _diff_torque_x
    8
    ;; float64 _diff_torque_y
    8
    ;; float64 _diff_torque_z
    8
    ;; float64 _cmd_rpm1
    8
    ;; float64 _cmd_rpm2
    8
    ;; float64 _cmd_rpm3
    8
    ;; float64 _cmd_rpm4
    8
    ;; float64 _cmd_sumrpm2
    8
    ;; float64 _cmd_sumrpm2_to_acc
    8
    ;; float64 _fb_thrust1
    8
    ;; float64 _fb_thrust2
    8
    ;; float64 _fb_thrust3
    8
    ;; float64 _fb_thrust4
    8
    ;; float64 _ref_thrust1
    8
    ;; float64 _ref_thrust2
    8
    ;; float64 _ref_thrust3
    8
    ;; float64 _ref_thrust4
    8
    ;; float64 _cmd_thrust1
    8
    ;; float64 _cmd_thrust2
    8
    ;; float64 _cmd_thrust3
    8
    ;; float64 _cmd_thrust4
    8
    ;; float64 _Fgh
    8
    ;; float64 _ref_thrust_acc
    8
    ;; float64 _thrust_acc_fil_x
    8
    ;; float64 _thrust_acc_fil_y
    8
    ;; float64 _thrust_acc_fil_z
    8
    ;; float64 _imu_acc_fil_x
    8
    ;; float64 _imu_acc_fil_y
    8
    ;; float64 _imu_acc_fil_z
    8
    ;; float64 _extforce_acc_x
    8
    ;; float64 _extforce_acc_y
    8
    ;; float64 _extforce_acc_z
    8
    ;; float64 _extforce_acc_fil_x
    8
    ;; float64 _extforce_acc_fil_y
    8
    ;; float64 _extforce_acc_fil_z
    8
    ;; float64 _poly_thrust
    8
    ;; float64 _fb_thrust
    8
    ;; float64 _sum_thrust
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _odom_roll
       (sys::poke _odom_roll (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _odom_pitch
       (sys::poke _odom_pitch (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _odom_yaw
       (sys::poke _odom_yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _odomC_roll
       (sys::poke _odomC_roll (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _odomC_pitch
       (sys::poke _odomC_pitch (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _odomC_yaw
       (sys::poke _odomC_yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ge_angle_roll
       (sys::poke _ge_angle_roll (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ge_angle_pitch
       (sys::poke _ge_angle_pitch (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ge_angle_yaw
       (sys::poke _ge_angle_yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _imu_a_x
       (sys::poke _imu_a_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _imu_a_y
       (sys::poke _imu_a_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _imu_a_z
       (sys::poke _imu_a_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _imu_a_fil_x
       (sys::poke _imu_a_fil_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _imu_a_fil_y
       (sys::poke _imu_a_fil_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _imu_a_fil_z
       (sys::poke _imu_a_fil_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _imu_w_x
       (sys::poke _imu_w_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _imu_w_y
       (sys::poke _imu_w_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _imu_w_z
       (sys::poke _imu_w_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _imu_w_fil_x
       (sys::poke _imu_w_fil_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _imu_w_fil_y
       (sys::poke _imu_w_fil_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _imu_w_fil_z
       (sys::poke _imu_w_fil_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _imu_w_c_x
       (sys::poke _imu_w_c_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _imu_w_c_y
       (sys::poke _imu_w_c_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _imu_w_c_z
       (sys::poke _imu_w_c_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _imu_beta_fil_x
       (sys::poke _imu_beta_fil_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _imu_beta_fil_y
       (sys::poke _imu_beta_fil_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _imu_beta_fil_z
       (sys::poke _imu_beta_fil_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rpm1
       (sys::poke _rpm1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rpm2
       (sys::poke _rpm2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rpm3
       (sys::poke _rpm3 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rpm4
       (sys::poke _rpm4 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rpm1_fil
       (sys::poke _rpm1_fil (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rpm2_fil
       (sys::poke _rpm2_fil (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rpm3_fil
       (sys::poke _rpm3_fil (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rpm4_fil
       (sys::poke _rpm4_fil (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _sumrpm2
       (sys::poke _sumrpm2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _thrust_force
       (sys::poke _thrust_force (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _thrust_acc
       (sys::poke _thrust_acc (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _sumrpm2_fil
       (sys::poke _sumrpm2_fil (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _thrust_force_fil
       (sys::poke _thrust_force_fil (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _thrust_acc_fil
       (sys::poke _thrust_acc_fil (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _acc_world_x
       (sys::poke _acc_world_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _acc_world_y
       (sys::poke _acc_world_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _acc_world_z
       (sys::poke _acc_world_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ge_acc_x
       (sys::poke _ge_acc_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ge_acc_y
       (sys::poke _ge_acc_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ge_acc_z
       (sys::poke _ge_acc_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ge_bodytorque_x
       (sys::poke _ge_bodytorque_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ge_bodytorque_y
       (sys::poke _ge_bodytorque_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ge_bodytorque_z
       (sys::poke _ge_bodytorque_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _des_ge_bodytorque_x
       (sys::poke _des_ge_bodytorque_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _des_ge_bodytorque_y
       (sys::poke _des_ge_bodytorque_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _des_ge_bodytorque_z
       (sys::poke _des_ge_bodytorque_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _d_ge_torque_x
       (sys::poke _d_ge_torque_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _d_ge_torque_y
       (sys::poke _d_ge_torque_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _d_ge_torque_z
       (sys::poke _d_ge_torque_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _diff_ge_torque_x
       (sys::poke _diff_ge_torque_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _diff_ge_torque_y
       (sys::poke _diff_ge_torque_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _diff_ge_torque_z
       (sys::poke _diff_ge_torque_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ext_torque_x
       (sys::poke _ext_torque_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ext_torque_y
       (sys::poke _ext_torque_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ext_torque_z
       (sys::poke _ext_torque_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _predict_ext_torque_x
       (sys::poke _predict_ext_torque_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _predict_ext_torque_y
       (sys::poke _predict_ext_torque_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _predict_ext_torque_z
       (sys::poke _predict_ext_torque_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _des_p_x
       (sys::poke _des_p_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _des_p_y
       (sys::poke _des_p_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _des_p_z
       (sys::poke _des_p_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _des_v_x
       (sys::poke _des_v_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _des_v_y
       (sys::poke _des_v_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _des_v_z
       (sys::poke _des_v_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _des_a_x
       (sys::poke _des_a_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _des_a_y
       (sys::poke _des_a_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _des_a_z
       (sys::poke _des_a_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _des_j_x
       (sys::poke _des_j_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _des_j_y
       (sys::poke _des_j_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _des_j_z
       (sys::poke _des_j_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _des_s_x
       (sys::poke _des_s_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _des_s_y
       (sys::poke _des_s_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _des_s_z
       (sys::poke _des_s_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _des_yaw
       (sys::poke _des_yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _des_yaw_rate
       (sys::poke _des_yaw_rate (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _des_yaw_acc
       (sys::poke _des_yaw_acc (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _flatctrl_q_w
       (sys::poke _flatctrl_q_w (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _flatctrl_q_x
       (sys::poke _flatctrl_q_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _flatctrl_q_y
       (sys::poke _flatctrl_q_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _flatctrl_q_z
       (sys::poke _flatctrl_q_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _flatctrl_roll
       (sys::poke _flatctrl_roll (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _flatctrl_pitch
       (sys::poke _flatctrl_pitch (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _flatctrl_yaw
       (sys::poke _flatctrl_yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _flatctrl_bodyrate_x
       (sys::poke _flatctrl_bodyrate_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _flatctrl_bodyrate_y
       (sys::poke _flatctrl_bodyrate_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _flatctrl_bodyrate_z
       (sys::poke _flatctrl_bodyrate_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _flatctrl_beta_x
       (sys::poke _flatctrl_beta_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _flatctrl_beta_y
       (sys::poke _flatctrl_beta_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _flatctrl_beta_z
       (sys::poke _flatctrl_beta_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _flatctrl_thrust
       (sys::poke _flatctrl_thrust (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _flatctrl_torque_x
       (sys::poke _flatctrl_torque_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _flatctrl_torque_y
       (sys::poke _flatctrl_torque_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _flatctrl_torque_z
       (sys::poke _flatctrl_torque_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _flatctrl_ge_acc_x
       (sys::poke _flatctrl_ge_acc_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _flatctrl_ge_acc_y
       (sys::poke _flatctrl_ge_acc_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _flatctrl_ge_acc_z
       (sys::poke _flatctrl_ge_acc_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _flatctrl_drag_acc_x
       (sys::poke _flatctrl_drag_acc_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _flatctrl_drag_acc_y
       (sys::poke _flatctrl_drag_acc_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _flatctrl_drag_acc_z
       (sys::poke _flatctrl_drag_acc_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _flatctrl_ext_acc_x
       (sys::poke _flatctrl_ext_acc_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _flatctrl_ext_acc_y
       (sys::poke _flatctrl_ext_acc_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _flatctrl_ext_acc_z
       (sys::poke _flatctrl_ext_acc_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ge_limit_k
       (sys::poke _ge_limit_k (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _fb_vel_x
       (sys::poke _fb_vel_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _fb_vel_y
       (sys::poke _fb_vel_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _fb_vel_z
       (sys::poke _fb_vel_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _cmd_vel_x
       (sys::poke _cmd_vel_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _cmd_vel_y
       (sys::poke _cmd_vel_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _cmd_vel_z
       (sys::poke _cmd_vel_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _compensate_acc_x
       (sys::poke _compensate_acc_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _compensate_acc_y
       (sys::poke _compensate_acc_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _compensate_acc_z
       (sys::poke _compensate_acc_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _fb_acc_x
       (sys::poke _fb_acc_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _fb_acc_y
       (sys::poke _fb_acc_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _fb_acc_z
       (sys::poke _fb_acc_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _cmd_acc_x
       (sys::poke _cmd_acc_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _cmd_acc_y
       (sys::poke _cmd_acc_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _cmd_acc_z
       (sys::poke _cmd_acc_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _cmd_acc_norm
       (sys::poke _cmd_acc_norm (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _cmd_acc_norm_by_body
       (sys::poke _cmd_acc_norm_by_body (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _cmd_q_w
       (sys::poke _cmd_q_w (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _cmd_q_x
       (sys::poke _cmd_q_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _cmd_q_y
       (sys::poke _cmd_q_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _cmd_q_z
       (sys::poke _cmd_q_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _cmd_roll
       (sys::poke _cmd_roll (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _cmd_pitch
       (sys::poke _cmd_pitch (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _cmd_yaw
       (sys::poke _cmd_yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _fb_bodyrate_x
       (sys::poke _fb_bodyrate_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _fb_bodyrate_y
       (sys::poke _fb_bodyrate_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _fb_bodyrate_z
       (sys::poke _fb_bodyrate_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _cmd_bodyrate_x
       (sys::poke _cmd_bodyrate_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _cmd_bodyrate_y
       (sys::poke _cmd_bodyrate_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _cmd_bodyrate_z
       (sys::poke _cmd_bodyrate_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _fb_beta_x
       (sys::poke _fb_beta_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _fb_beta_y
       (sys::poke _fb_beta_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _fb_beta_z
       (sys::poke _fb_beta_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _cmd_beta_x
       (sys::poke _cmd_beta_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _cmd_beta_y
       (sys::poke _cmd_beta_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _cmd_beta_z
       (sys::poke _cmd_beta_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _compensate_torque_x
       (sys::poke _compensate_torque_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _compensate_torque_y
       (sys::poke _compensate_torque_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _compensate_torque_z
       (sys::poke _compensate_torque_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _bodytorque_x
       (sys::poke _bodytorque_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _bodytorque_y
       (sys::poke _bodytorque_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _bodytorque_z
       (sys::poke _bodytorque_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _cmd_torque_body_x
       (sys::poke _cmd_torque_body_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _cmd_torque_body_y
       (sys::poke _cmd_torque_body_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _cmd_torque_body_z
       (sys::poke _cmd_torque_body_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _diff_indi_torque_x
       (sys::poke _diff_indi_torque_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _diff_indi_torque_y
       (sys::poke _diff_indi_torque_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _diff_indi_torque_z
       (sys::poke _diff_indi_torque_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _diff_torque_x
       (sys::poke _diff_torque_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _diff_torque_y
       (sys::poke _diff_torque_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _diff_torque_z
       (sys::poke _diff_torque_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _cmd_rpm1
       (sys::poke _cmd_rpm1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _cmd_rpm2
       (sys::poke _cmd_rpm2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _cmd_rpm3
       (sys::poke _cmd_rpm3 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _cmd_rpm4
       (sys::poke _cmd_rpm4 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _cmd_sumrpm2
       (sys::poke _cmd_sumrpm2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _cmd_sumrpm2_to_acc
       (sys::poke _cmd_sumrpm2_to_acc (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _fb_thrust1
       (sys::poke _fb_thrust1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _fb_thrust2
       (sys::poke _fb_thrust2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _fb_thrust3
       (sys::poke _fb_thrust3 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _fb_thrust4
       (sys::poke _fb_thrust4 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ref_thrust1
       (sys::poke _ref_thrust1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ref_thrust2
       (sys::poke _ref_thrust2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ref_thrust3
       (sys::poke _ref_thrust3 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ref_thrust4
       (sys::poke _ref_thrust4 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _cmd_thrust1
       (sys::poke _cmd_thrust1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _cmd_thrust2
       (sys::poke _cmd_thrust2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _cmd_thrust3
       (sys::poke _cmd_thrust3 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _cmd_thrust4
       (sys::poke _cmd_thrust4 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Fgh
       (sys::poke _Fgh (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ref_thrust_acc
       (sys::poke _ref_thrust_acc (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _thrust_acc_fil_x
       (sys::poke _thrust_acc_fil_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _thrust_acc_fil_y
       (sys::poke _thrust_acc_fil_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _thrust_acc_fil_z
       (sys::poke _thrust_acc_fil_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _imu_acc_fil_x
       (sys::poke _imu_acc_fil_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _imu_acc_fil_y
       (sys::poke _imu_acc_fil_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _imu_acc_fil_z
       (sys::poke _imu_acc_fil_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _extforce_acc_x
       (sys::poke _extforce_acc_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _extforce_acc_y
       (sys::poke _extforce_acc_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _extforce_acc_z
       (sys::poke _extforce_acc_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _extforce_acc_fil_x
       (sys::poke _extforce_acc_fil_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _extforce_acc_fil_y
       (sys::poke _extforce_acc_fil_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _extforce_acc_fil_z
       (sys::poke _extforce_acc_fil_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _poly_thrust
       (sys::poke _poly_thrust (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _fb_thrust
       (sys::poke _fb_thrust (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _sum_thrust
       (sys::poke _sum_thrust (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _odom_roll
     (setq _odom_roll (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _odom_pitch
     (setq _odom_pitch (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _odom_yaw
     (setq _odom_yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _odomC_roll
     (setq _odomC_roll (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _odomC_pitch
     (setq _odomC_pitch (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _odomC_yaw
     (setq _odomC_yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ge_angle_roll
     (setq _ge_angle_roll (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ge_angle_pitch
     (setq _ge_angle_pitch (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ge_angle_yaw
     (setq _ge_angle_yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _imu_a_x
     (setq _imu_a_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _imu_a_y
     (setq _imu_a_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _imu_a_z
     (setq _imu_a_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _imu_a_fil_x
     (setq _imu_a_fil_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _imu_a_fil_y
     (setq _imu_a_fil_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _imu_a_fil_z
     (setq _imu_a_fil_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _imu_w_x
     (setq _imu_w_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _imu_w_y
     (setq _imu_w_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _imu_w_z
     (setq _imu_w_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _imu_w_fil_x
     (setq _imu_w_fil_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _imu_w_fil_y
     (setq _imu_w_fil_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _imu_w_fil_z
     (setq _imu_w_fil_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _imu_w_c_x
     (setq _imu_w_c_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _imu_w_c_y
     (setq _imu_w_c_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _imu_w_c_z
     (setq _imu_w_c_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _imu_beta_fil_x
     (setq _imu_beta_fil_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _imu_beta_fil_y
     (setq _imu_beta_fil_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _imu_beta_fil_z
     (setq _imu_beta_fil_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rpm1
     (setq _rpm1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rpm2
     (setq _rpm2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rpm3
     (setq _rpm3 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rpm4
     (setq _rpm4 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rpm1_fil
     (setq _rpm1_fil (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rpm2_fil
     (setq _rpm2_fil (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rpm3_fil
     (setq _rpm3_fil (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rpm4_fil
     (setq _rpm4_fil (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _sumrpm2
     (setq _sumrpm2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _thrust_force
     (setq _thrust_force (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _thrust_acc
     (setq _thrust_acc (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _sumrpm2_fil
     (setq _sumrpm2_fil (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _thrust_force_fil
     (setq _thrust_force_fil (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _thrust_acc_fil
     (setq _thrust_acc_fil (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _acc_world_x
     (setq _acc_world_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _acc_world_y
     (setq _acc_world_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _acc_world_z
     (setq _acc_world_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ge_acc_x
     (setq _ge_acc_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ge_acc_y
     (setq _ge_acc_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ge_acc_z
     (setq _ge_acc_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ge_bodytorque_x
     (setq _ge_bodytorque_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ge_bodytorque_y
     (setq _ge_bodytorque_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ge_bodytorque_z
     (setq _ge_bodytorque_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _des_ge_bodytorque_x
     (setq _des_ge_bodytorque_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _des_ge_bodytorque_y
     (setq _des_ge_bodytorque_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _des_ge_bodytorque_z
     (setq _des_ge_bodytorque_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _d_ge_torque_x
     (setq _d_ge_torque_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _d_ge_torque_y
     (setq _d_ge_torque_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _d_ge_torque_z
     (setq _d_ge_torque_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _diff_ge_torque_x
     (setq _diff_ge_torque_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _diff_ge_torque_y
     (setq _diff_ge_torque_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _diff_ge_torque_z
     (setq _diff_ge_torque_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ext_torque_x
     (setq _ext_torque_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ext_torque_y
     (setq _ext_torque_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ext_torque_z
     (setq _ext_torque_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _predict_ext_torque_x
     (setq _predict_ext_torque_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _predict_ext_torque_y
     (setq _predict_ext_torque_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _predict_ext_torque_z
     (setq _predict_ext_torque_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _des_p_x
     (setq _des_p_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _des_p_y
     (setq _des_p_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _des_p_z
     (setq _des_p_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _des_v_x
     (setq _des_v_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _des_v_y
     (setq _des_v_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _des_v_z
     (setq _des_v_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _des_a_x
     (setq _des_a_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _des_a_y
     (setq _des_a_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _des_a_z
     (setq _des_a_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _des_j_x
     (setq _des_j_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _des_j_y
     (setq _des_j_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _des_j_z
     (setq _des_j_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _des_s_x
     (setq _des_s_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _des_s_y
     (setq _des_s_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _des_s_z
     (setq _des_s_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _des_yaw
     (setq _des_yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _des_yaw_rate
     (setq _des_yaw_rate (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _des_yaw_acc
     (setq _des_yaw_acc (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _flatctrl_q_w
     (setq _flatctrl_q_w (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _flatctrl_q_x
     (setq _flatctrl_q_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _flatctrl_q_y
     (setq _flatctrl_q_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _flatctrl_q_z
     (setq _flatctrl_q_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _flatctrl_roll
     (setq _flatctrl_roll (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _flatctrl_pitch
     (setq _flatctrl_pitch (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _flatctrl_yaw
     (setq _flatctrl_yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _flatctrl_bodyrate_x
     (setq _flatctrl_bodyrate_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _flatctrl_bodyrate_y
     (setq _flatctrl_bodyrate_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _flatctrl_bodyrate_z
     (setq _flatctrl_bodyrate_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _flatctrl_beta_x
     (setq _flatctrl_beta_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _flatctrl_beta_y
     (setq _flatctrl_beta_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _flatctrl_beta_z
     (setq _flatctrl_beta_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _flatctrl_thrust
     (setq _flatctrl_thrust (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _flatctrl_torque_x
     (setq _flatctrl_torque_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _flatctrl_torque_y
     (setq _flatctrl_torque_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _flatctrl_torque_z
     (setq _flatctrl_torque_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _flatctrl_ge_acc_x
     (setq _flatctrl_ge_acc_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _flatctrl_ge_acc_y
     (setq _flatctrl_ge_acc_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _flatctrl_ge_acc_z
     (setq _flatctrl_ge_acc_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _flatctrl_drag_acc_x
     (setq _flatctrl_drag_acc_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _flatctrl_drag_acc_y
     (setq _flatctrl_drag_acc_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _flatctrl_drag_acc_z
     (setq _flatctrl_drag_acc_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _flatctrl_ext_acc_x
     (setq _flatctrl_ext_acc_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _flatctrl_ext_acc_y
     (setq _flatctrl_ext_acc_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _flatctrl_ext_acc_z
     (setq _flatctrl_ext_acc_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ge_limit_k
     (setq _ge_limit_k (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _fb_vel_x
     (setq _fb_vel_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _fb_vel_y
     (setq _fb_vel_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _fb_vel_z
     (setq _fb_vel_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _cmd_vel_x
     (setq _cmd_vel_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _cmd_vel_y
     (setq _cmd_vel_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _cmd_vel_z
     (setq _cmd_vel_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _compensate_acc_x
     (setq _compensate_acc_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _compensate_acc_y
     (setq _compensate_acc_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _compensate_acc_z
     (setq _compensate_acc_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _fb_acc_x
     (setq _fb_acc_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _fb_acc_y
     (setq _fb_acc_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _fb_acc_z
     (setq _fb_acc_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _cmd_acc_x
     (setq _cmd_acc_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _cmd_acc_y
     (setq _cmd_acc_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _cmd_acc_z
     (setq _cmd_acc_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _cmd_acc_norm
     (setq _cmd_acc_norm (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _cmd_acc_norm_by_body
     (setq _cmd_acc_norm_by_body (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _cmd_q_w
     (setq _cmd_q_w (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _cmd_q_x
     (setq _cmd_q_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _cmd_q_y
     (setq _cmd_q_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _cmd_q_z
     (setq _cmd_q_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _cmd_roll
     (setq _cmd_roll (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _cmd_pitch
     (setq _cmd_pitch (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _cmd_yaw
     (setq _cmd_yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _fb_bodyrate_x
     (setq _fb_bodyrate_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _fb_bodyrate_y
     (setq _fb_bodyrate_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _fb_bodyrate_z
     (setq _fb_bodyrate_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _cmd_bodyrate_x
     (setq _cmd_bodyrate_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _cmd_bodyrate_y
     (setq _cmd_bodyrate_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _cmd_bodyrate_z
     (setq _cmd_bodyrate_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _fb_beta_x
     (setq _fb_beta_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _fb_beta_y
     (setq _fb_beta_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _fb_beta_z
     (setq _fb_beta_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _cmd_beta_x
     (setq _cmd_beta_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _cmd_beta_y
     (setq _cmd_beta_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _cmd_beta_z
     (setq _cmd_beta_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _compensate_torque_x
     (setq _compensate_torque_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _compensate_torque_y
     (setq _compensate_torque_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _compensate_torque_z
     (setq _compensate_torque_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _bodytorque_x
     (setq _bodytorque_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _bodytorque_y
     (setq _bodytorque_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _bodytorque_z
     (setq _bodytorque_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _cmd_torque_body_x
     (setq _cmd_torque_body_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _cmd_torque_body_y
     (setq _cmd_torque_body_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _cmd_torque_body_z
     (setq _cmd_torque_body_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _diff_indi_torque_x
     (setq _diff_indi_torque_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _diff_indi_torque_y
     (setq _diff_indi_torque_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _diff_indi_torque_z
     (setq _diff_indi_torque_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _diff_torque_x
     (setq _diff_torque_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _diff_torque_y
     (setq _diff_torque_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _diff_torque_z
     (setq _diff_torque_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _cmd_rpm1
     (setq _cmd_rpm1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _cmd_rpm2
     (setq _cmd_rpm2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _cmd_rpm3
     (setq _cmd_rpm3 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _cmd_rpm4
     (setq _cmd_rpm4 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _cmd_sumrpm2
     (setq _cmd_sumrpm2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _cmd_sumrpm2_to_acc
     (setq _cmd_sumrpm2_to_acc (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _fb_thrust1
     (setq _fb_thrust1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _fb_thrust2
     (setq _fb_thrust2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _fb_thrust3
     (setq _fb_thrust3 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _fb_thrust4
     (setq _fb_thrust4 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ref_thrust1
     (setq _ref_thrust1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ref_thrust2
     (setq _ref_thrust2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ref_thrust3
     (setq _ref_thrust3 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ref_thrust4
     (setq _ref_thrust4 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _cmd_thrust1
     (setq _cmd_thrust1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _cmd_thrust2
     (setq _cmd_thrust2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _cmd_thrust3
     (setq _cmd_thrust3 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _cmd_thrust4
     (setq _cmd_thrust4 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Fgh
     (setq _Fgh (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ref_thrust_acc
     (setq _ref_thrust_acc (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _thrust_acc_fil_x
     (setq _thrust_acc_fil_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _thrust_acc_fil_y
     (setq _thrust_acc_fil_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _thrust_acc_fil_z
     (setq _thrust_acc_fil_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _imu_acc_fil_x
     (setq _imu_acc_fil_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _imu_acc_fil_y
     (setq _imu_acc_fil_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _imu_acc_fil_z
     (setq _imu_acc_fil_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _extforce_acc_x
     (setq _extforce_acc_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _extforce_acc_y
     (setq _extforce_acc_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _extforce_acc_z
     (setq _extforce_acc_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _extforce_acc_fil_x
     (setq _extforce_acc_fil_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _extforce_acc_fil_y
     (setq _extforce_acc_fil_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _extforce_acc_fil_z
     (setq _extforce_acc_fil_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _poly_thrust
     (setq _poly_thrust (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _fb_thrust
     (setq _fb_thrust (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _sum_thrust
     (setq _sum_thrust (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get quadrotor_msgs::geDebug :md5sum-) "488d08f267b0b36a062742ffec509736")
(setf (get quadrotor_msgs::geDebug :datatype-) "quadrotor_msgs/geDebug")
(setf (get quadrotor_msgs::geDebug :definition-)
      "Header header

# sensors-------------------------------------------------

float64 odom_roll
float64 odom_pitch
float64 odom_yaw

float64 odomC_roll
float64 odomC_pitch
float64 odomC_yaw

float64 ge_angle_roll
float64 ge_angle_pitch
float64 ge_angle_yaw

float64 imu_a_x
float64 imu_a_y
float64 imu_a_z

float64 imu_a_fil_x
float64 imu_a_fil_y
float64 imu_a_fil_z

float64 imu_w_x
float64 imu_w_y
float64 imu_w_z

float64 imu_w_fil_x
float64 imu_w_fil_y
float64 imu_w_fil_z

float64 imu_w_c_x
float64 imu_w_c_y
float64 imu_w_c_z

float64 imu_beta_fil_x
float64 imu_beta_fil_y
float64 imu_beta_fil_z

float64 rpm1
float64 rpm2
float64 rpm3
float64 rpm4

float64 rpm1_fil
float64 rpm2_fil
float64 rpm3_fil
float64 rpm4_fil

float64 sumrpm2 #实际转速平方和
float64 thrust_force #实际推力
float64 thrust_acc #实际推力加速度

float64 sumrpm2_fil #实际转速平方和，滤波后
float64 thrust_force_fil #实际推力，滤波后
float64 thrust_acc_fil #实际推力加速度，滤波后

float64 acc_world_x
float64 acc_world_y
float64 acc_world_z

float64 ge_acc_x #按照地效模型，实际的地效额外推力加速度
float64 ge_acc_y
float64 ge_acc_z

float64 ge_bodytorque_x #按照地效模型的反扭矩
float64 ge_bodytorque_y
float64 ge_bodytorque_z

float64 des_ge_bodytorque_x #按照地效模型的反扭矩
float64 des_ge_bodytorque_y
float64 des_ge_bodytorque_z

float64 d_ge_torque_x #按照地效模型的反扭矩的导数
float64 d_ge_torque_y
float64 d_ge_torque_z

float64 diff_ge_torque_x #扭矩变化量
float64 diff_ge_torque_y
float64 diff_ge_torque_z

float64 ext_torque_x
float64 ext_torque_y
float64 ext_torque_z

float64 predict_ext_torque_x
float64 predict_ext_torque_y
float64 predict_ext_torque_z

# 控制器接收的指令，来自traj server-------------------------------------------------
float64 des_p_x
float64 des_p_y
float64 des_p_z

float64 des_v_x
float64 des_v_y
float64 des_v_z

float64 des_a_x
float64 des_a_y
float64 des_a_z

float64 des_j_x
float64 des_j_y
float64 des_j_z

float64 des_s_x
float64 des_s_y
float64 des_s_z

float64 des_yaw
float64 des_yaw_rate
float64 des_yaw_acc


# flatness-------------------------------------------------------------------------------
float64 flatctrl_q_w
float64 flatctrl_q_x
float64 flatctrl_q_y
float64 flatctrl_q_z

float64 flatctrl_roll
float64 flatctrl_pitch
float64 flatctrl_yaw

float64 flatctrl_bodyrate_x
float64 flatctrl_bodyrate_y
float64 flatctrl_bodyrate_z

float64 flatctrl_beta_x
float64 flatctrl_beta_y
float64 flatctrl_beta_z

float64 flatctrl_thrust
float64 flatctrl_torque_x
float64 flatctrl_torque_y
float64 flatctrl_torque_z

# 根据平坦模型：地面效应带来的额外推力加速度
float64 flatctrl_ge_acc_x
float64 flatctrl_ge_acc_y
float64 flatctrl_ge_acc_z

# 根据平坦模型：阻力加速度
float64 flatctrl_drag_acc_x
float64 flatctrl_drag_acc_y
float64 flatctrl_drag_acc_z

# 根据平坦模型：合外力加速度
float64 flatctrl_ext_acc_x
float64 flatctrl_ext_acc_y
float64 flatctrl_ext_acc_z

float64 ge_limit_k

# 加速度环，由误差、外力等输出期望加速度 --------------------------------------------------------------------

float64 fb_vel_x
float64 fb_vel_y
float64 fb_vel_z
float64 cmd_vel_x
float64 cmd_vel_y
float64 cmd_vel_z


float64 compensate_acc_x #补偿给控制器的加速度
float64 compensate_acc_y
float64 compensate_acc_z
float64 fb_acc_x # 由位置和速度误差得到的反馈加速度
float64 fb_acc_y
float64 fb_acc_z
float64 cmd_acc_x # 需要推力提供的加速度
float64 cmd_acc_y
float64 cmd_acc_z
float64 cmd_acc_norm # 需要推力提供的加速度的模
float64 cmd_acc_norm_by_body # 需要推力提供的加速度的模，考虑当前姿态


# 加速度控制 输出 姿态+推力、角速度+推力，扭矩+推力、转速 ------------------------------------------------

# cmd-----------------------------

float64 cmd_q_w
float64 cmd_q_x
float64 cmd_q_y
float64 cmd_q_z

float64 cmd_roll
float64 cmd_pitch
float64 cmd_yaw


float64 fb_bodyrate_x
float64 fb_bodyrate_y
float64 fb_bodyrate_z
float64 cmd_bodyrate_x
float64 cmd_bodyrate_y
float64 cmd_bodyrate_z

float64 fb_beta_x
float64 fb_beta_y
float64 fb_beta_z
float64 cmd_beta_x
float64 cmd_beta_y
float64 cmd_beta_z

#补偿给控制器的扭矩
float64 compensate_torque_x
float64 compensate_torque_y
float64 compensate_torque_z

float64 bodytorque_x
float64 bodytorque_y
float64 bodytorque_z
float64 cmd_torque_body_x
float64 cmd_torque_body_y
float64 cmd_torque_body_z

float64 diff_indi_torque_x #INDI方法的力矩增量
float64 diff_indi_torque_y
float64 diff_indi_torque_z

float64 diff_torque_x #INDI和模型力矩增量
float64 diff_torque_y
float64 diff_torque_z

float64 cmd_rpm1
float64 cmd_rpm2
float64 cmd_rpm3
float64 cmd_rpm4
float64 cmd_sumrpm2
float64 cmd_sumrpm2_to_acc


# 转速误差引入的推力
float64 fb_thrust1
float64 fb_thrust2
float64 fb_thrust3
float64 fb_thrust4

# 油门曲线前馈推力
float64 ref_thrust1
float64 ref_thrust2
float64 ref_thrust3
float64 ref_thrust4

# 实际推力
float64 cmd_thrust1
float64 cmd_thrust2
float64 cmd_thrust3
float64 cmd_thrust4

# OLD MSGS ----------------------------------------------------------------------------------------------------------
# ref forces
float64 Fgh



# 根据平坦模型：推力加速度
float64 ref_thrust_acc



#实际作用在world系上的推力加速度，滤波后
float64 thrust_acc_fil_x 
float64 thrust_acc_fil_y
float64 thrust_acc_fil_z

# force estimate

# 滤波后的IMU加速度数据
float64 imu_acc_fil_x
float64 imu_acc_fil_y
float64 imu_acc_fil_z

#外力估计器估计的实际加速度
float64 extforce_acc_x
float64 extforce_acc_y
float64 extforce_acc_z

#外力估计器估计的实际加速度, 滤波后
float64 extforce_acc_fil_x
float64 extforce_acc_fil_y
float64 extforce_acc_fil_z








float64 poly_thrust # 根据 油门~转速 模型得到的0~1的前馈油门
float64 fb_thrust # 根据转速差PID反馈得到的补偿油门差
float64 sum_thrust # 前馈油门+反馈油门








================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :quadrotor_msgs/geDebug "488d08f267b0b36a062742ffec509736")


