;; Auto-generated. Do not edit!


(when (boundp 'quadrotor_msgs::Px4ctrlDebug)
  (if (not (find-package "QUADROTOR_MSGS"))
    (make-package "QUADROTOR_MSGS"))
  (shadow 'Px4ctrlDebug (find-package "QUADROTOR_MSGS")))
(unless (find-package "QUADROTOR_MSGS::PX4CTRLDEBUG")
  (make-package "QUADROTOR_MSGS::PX4CTRLDEBUG"))

(in-package "ROS")
;;//! \htmlinclude Px4ctrlDebug.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass quadrotor_msgs::Px4ctrlDebug
  :super ros::object
  :slots (_header _fb_a_x _fb_a_y _fb_a_z _des_p_x _des_p_y _des_p_z _des_v_x _des_v_y _des_v_z _des_a_x _des_a_y _des_a_z _des_q_x _des_q_y _des_q_z _des_q_w _est_r _est_p _est_y _ref_r _ref_p _ref_y _des_r _des_p _des_y _exec_err_axisang_x _exec_err_axisang_y _exec_err_axisang_z _exec_err_axisang_ang _fb_axisang_x _fb_axisang_y _fb_axisang_z _fb_axisang_ang _fb_rate_x _fb_rate_y _fb_rate_z _des_bodyrates_x _des_bodyrates_y _des_bodyrates_z _des_bodyaccs_x _des_bodyaccs_y _des_bodyaccs_z _imu_af_x _imu_af_y _imu_af_z _imu_wf_x _imu_wf_y _imu_wf_z _imu_dw_x _imu_dw_y _imu_dw_z _rpm_f1 _rpm_f2 _rpm_f3 _rpm_f4 _cmd_rpm1 _cmd_rpm2 _cmd_rpm3 _cmd_rpm4 _ref_thrust1 _ref_thrust2 _ref_thrust3 _ref_thrust4 _des_rpm_ave _rpm_ave _des_yaw _des_yaw_rate _des_yaw_acc _thro1 _thro2 _thro3 _thro4 _delta_q_ang _des_q_ang _des_F _indi_F _hover_percentage _thr_scale_compensate _voltage _ref_v_x _ref_v_y _ref_v_z _ref_a_x _ref_a_y _ref_a_z _ref_j_x _ref_j_y _ref_j_z _ref_s_x _ref_s_y _ref_s_z _x_pos_error _y_pos_error _z_pos_error _x_vel_error _y_vel_error _z_vel_error _ref_thr _des_thr _est_thr _des_torque_x _des_torque_y _des_torque_z _cont_torque_x _cont_torque_y _cont_torque_z _z_jwj _fbp_thrust1 _fbi_thrust1 _fbp_thrust2 _fbi_thrust2 _fbp_thrust3 _fbi_thrust3 _fbp_thrust4 _fbi_thrust4 _fbp_thrust _fbi_thrust _fb_thrust _rpm_error1 _rpm_error_sum1 _rpm_error2 _rpm_error_sum2 _rpm_error3 _rpm_error_sum3 _rpm_error4 _rpm_error_sum4 _rate_error_z _rate_error_sum_z _fbp_bodyacc_z _fbi_bodyacc_z _des_est_bodyrates_x _des_est_bodyrates_y _des_est_bodyrates_z _acc_error1 _acc_error2 _acc_error3 _acc_error4 _acc_errorsum1 _acc_errorsum2 _acc_errorsum3 _acc_errorsum4 _window_ave1 _window_ave2 _window_ave3 _window_ave4 _pos_error_all _pos_error_xy _pos_error_rmse _vel_error_all _des_v_all _ref_bodyrates_x _ref_bodyrates_y _ref_bodyrates_z _extTotalAccIndi_x _extTotalAccIndi_y _extTotalAccIndi_z _aw_x _aw_y _aw_z _fb_a_x_fil _fb_a_y_fil _fb_a_z_fil _extF_psi _extF_theta _des_Fq_psi _des_Fq_theta _indi_q_err_ang _fb_F_x _fb_F_y _fb_F_z _flag _indi_acc_q_error_x _indi_acc_q_error_y _indi_acc_q_error_z _F_error _indi_acc_F_error_x _indi_acc_F_error_y _indi_acc_F_error_z _indiF_x _indiF_y _indiF_z _desFq_x _desFq_y _desFq_z _fb_pv_x _fb_pv_y _fb_pv_z _fb_q_x _fb_q_y _fb_q_z _fb_Fq_x _fb_Fq_y _fb_Fq_z _v_modi_x _v_modi_y _v_modi_z _fb_Fq_error_fil_x _fb_Fq_error_fil_y _fb_Fq_error_fil_z _FUpper _FLower _ref_rpm1 _ref_rpm2 _ref_rpm3 _ref_rpm4 _ref_torque_x _ref_torque_y _ref_torque_z _indi_F_Limit ))

(defmethod quadrotor_msgs::Px4ctrlDebug
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:fb_a_x __fb_a_x) 0.0)
    ((:fb_a_y __fb_a_y) 0.0)
    ((:fb_a_z __fb_a_z) 0.0)
    ((:des_p_x __des_p_x) 0.0)
    ((:des_p_y __des_p_y) 0.0)
    ((:des_p_z __des_p_z) 0.0)
    ((:des_v_x __des_v_x) 0.0)
    ((:des_v_y __des_v_y) 0.0)
    ((:des_v_z __des_v_z) 0.0)
    ((:des_a_x __des_a_x) 0.0)
    ((:des_a_y __des_a_y) 0.0)
    ((:des_a_z __des_a_z) 0.0)
    ((:des_q_x __des_q_x) 0.0)
    ((:des_q_y __des_q_y) 0.0)
    ((:des_q_z __des_q_z) 0.0)
    ((:des_q_w __des_q_w) 0.0)
    ((:est_r __est_r) 0.0)
    ((:est_p __est_p) 0.0)
    ((:est_y __est_y) 0.0)
    ((:ref_r __ref_r) 0.0)
    ((:ref_p __ref_p) 0.0)
    ((:ref_y __ref_y) 0.0)
    ((:des_r __des_r) 0.0)
    ((:des_p __des_p) 0.0)
    ((:des_y __des_y) 0.0)
    ((:exec_err_axisang_x __exec_err_axisang_x) 0.0)
    ((:exec_err_axisang_y __exec_err_axisang_y) 0.0)
    ((:exec_err_axisang_z __exec_err_axisang_z) 0.0)
    ((:exec_err_axisang_ang __exec_err_axisang_ang) 0.0)
    ((:fb_axisang_x __fb_axisang_x) 0.0)
    ((:fb_axisang_y __fb_axisang_y) 0.0)
    ((:fb_axisang_z __fb_axisang_z) 0.0)
    ((:fb_axisang_ang __fb_axisang_ang) 0.0)
    ((:fb_rate_x __fb_rate_x) 0.0)
    ((:fb_rate_y __fb_rate_y) 0.0)
    ((:fb_rate_z __fb_rate_z) 0.0)
    ((:des_bodyrates_x __des_bodyrates_x) 0.0)
    ((:des_bodyrates_y __des_bodyrates_y) 0.0)
    ((:des_bodyrates_z __des_bodyrates_z) 0.0)
    ((:des_bodyaccs_x __des_bodyaccs_x) 0.0)
    ((:des_bodyaccs_y __des_bodyaccs_y) 0.0)
    ((:des_bodyaccs_z __des_bodyaccs_z) 0.0)
    ((:imu_af_x __imu_af_x) 0.0)
    ((:imu_af_y __imu_af_y) 0.0)
    ((:imu_af_z __imu_af_z) 0.0)
    ((:imu_wf_x __imu_wf_x) 0.0)
    ((:imu_wf_y __imu_wf_y) 0.0)
    ((:imu_wf_z __imu_wf_z) 0.0)
    ((:imu_dw_x __imu_dw_x) 0.0)
    ((:imu_dw_y __imu_dw_y) 0.0)
    ((:imu_dw_z __imu_dw_z) 0.0)
    ((:rpm_f1 __rpm_f1) 0.0)
    ((:rpm_f2 __rpm_f2) 0.0)
    ((:rpm_f3 __rpm_f3) 0.0)
    ((:rpm_f4 __rpm_f4) 0.0)
    ((:cmd_rpm1 __cmd_rpm1) 0.0)
    ((:cmd_rpm2 __cmd_rpm2) 0.0)
    ((:cmd_rpm3 __cmd_rpm3) 0.0)
    ((:cmd_rpm4 __cmd_rpm4) 0.0)
    ((:ref_thrust1 __ref_thrust1) 0.0)
    ((:ref_thrust2 __ref_thrust2) 0.0)
    ((:ref_thrust3 __ref_thrust3) 0.0)
    ((:ref_thrust4 __ref_thrust4) 0.0)
    ((:des_rpm_ave __des_rpm_ave) 0.0)
    ((:rpm_ave __rpm_ave) 0.0)
    ((:des_yaw __des_yaw) 0.0)
    ((:des_yaw_rate __des_yaw_rate) 0.0)
    ((:des_yaw_acc __des_yaw_acc) 0.0)
    ((:thro1 __thro1) 0.0)
    ((:thro2 __thro2) 0.0)
    ((:thro3 __thro3) 0.0)
    ((:thro4 __thro4) 0.0)
    ((:delta_q_ang __delta_q_ang) 0.0)
    ((:des_q_ang __des_q_ang) 0.0)
    ((:des_F __des_F) 0.0)
    ((:indi_F __indi_F) 0.0)
    ((:hover_percentage __hover_percentage) 0.0)
    ((:thr_scale_compensate __thr_scale_compensate) 0.0)
    ((:voltage __voltage) 0.0)
    ((:ref_v_x __ref_v_x) 0.0)
    ((:ref_v_y __ref_v_y) 0.0)
    ((:ref_v_z __ref_v_z) 0.0)
    ((:ref_a_x __ref_a_x) 0.0)
    ((:ref_a_y __ref_a_y) 0.0)
    ((:ref_a_z __ref_a_z) 0.0)
    ((:ref_j_x __ref_j_x) 0.0)
    ((:ref_j_y __ref_j_y) 0.0)
    ((:ref_j_z __ref_j_z) 0.0)
    ((:ref_s_x __ref_s_x) 0.0)
    ((:ref_s_y __ref_s_y) 0.0)
    ((:ref_s_z __ref_s_z) 0.0)
    ((:x_pos_error __x_pos_error) 0.0)
    ((:y_pos_error __y_pos_error) 0.0)
    ((:z_pos_error __z_pos_error) 0.0)
    ((:x_vel_error __x_vel_error) 0.0)
    ((:y_vel_error __y_vel_error) 0.0)
    ((:z_vel_error __z_vel_error) 0.0)
    ((:ref_thr __ref_thr) 0.0)
    ((:des_thr __des_thr) 0.0)
    ((:est_thr __est_thr) 0.0)
    ((:des_torque_x __des_torque_x) 0.0)
    ((:des_torque_y __des_torque_y) 0.0)
    ((:des_torque_z __des_torque_z) 0.0)
    ((:cont_torque_x __cont_torque_x) 0.0)
    ((:cont_torque_y __cont_torque_y) 0.0)
    ((:cont_torque_z __cont_torque_z) 0.0)
    ((:z_jwj __z_jwj) 0.0)
    ((:fbp_thrust1 __fbp_thrust1) 0.0)
    ((:fbi_thrust1 __fbi_thrust1) 0.0)
    ((:fbp_thrust2 __fbp_thrust2) 0.0)
    ((:fbi_thrust2 __fbi_thrust2) 0.0)
    ((:fbp_thrust3 __fbp_thrust3) 0.0)
    ((:fbi_thrust3 __fbi_thrust3) 0.0)
    ((:fbp_thrust4 __fbp_thrust4) 0.0)
    ((:fbi_thrust4 __fbi_thrust4) 0.0)
    ((:fbp_thrust __fbp_thrust) 0.0)
    ((:fbi_thrust __fbi_thrust) 0.0)
    ((:fb_thrust __fb_thrust) 0.0)
    ((:rpm_error1 __rpm_error1) 0.0)
    ((:rpm_error_sum1 __rpm_error_sum1) 0.0)
    ((:rpm_error2 __rpm_error2) 0.0)
    ((:rpm_error_sum2 __rpm_error_sum2) 0.0)
    ((:rpm_error3 __rpm_error3) 0.0)
    ((:rpm_error_sum3 __rpm_error_sum3) 0.0)
    ((:rpm_error4 __rpm_error4) 0.0)
    ((:rpm_error_sum4 __rpm_error_sum4) 0.0)
    ((:rate_error_z __rate_error_z) 0.0)
    ((:rate_error_sum_z __rate_error_sum_z) 0.0)
    ((:fbp_bodyacc_z __fbp_bodyacc_z) 0.0)
    ((:fbi_bodyacc_z __fbi_bodyacc_z) 0.0)
    ((:des_est_bodyrates_x __des_est_bodyrates_x) 0.0)
    ((:des_est_bodyrates_y __des_est_bodyrates_y) 0.0)
    ((:des_est_bodyrates_z __des_est_bodyrates_z) 0.0)
    ((:acc_error1 __acc_error1) 0.0)
    ((:acc_error2 __acc_error2) 0.0)
    ((:acc_error3 __acc_error3) 0.0)
    ((:acc_error4 __acc_error4) 0.0)
    ((:acc_errorsum1 __acc_errorsum1) 0.0)
    ((:acc_errorsum2 __acc_errorsum2) 0.0)
    ((:acc_errorsum3 __acc_errorsum3) 0.0)
    ((:acc_errorsum4 __acc_errorsum4) 0.0)
    ((:window_ave1 __window_ave1) 0.0)
    ((:window_ave2 __window_ave2) 0.0)
    ((:window_ave3 __window_ave3) 0.0)
    ((:window_ave4 __window_ave4) 0.0)
    ((:pos_error_all __pos_error_all) 0.0)
    ((:pos_error_xy __pos_error_xy) 0.0)
    ((:pos_error_rmse __pos_error_rmse) 0.0)
    ((:vel_error_all __vel_error_all) 0.0)
    ((:des_v_all __des_v_all) 0.0)
    ((:ref_bodyrates_x __ref_bodyrates_x) 0.0)
    ((:ref_bodyrates_y __ref_bodyrates_y) 0.0)
    ((:ref_bodyrates_z __ref_bodyrates_z) 0.0)
    ((:extTotalAccIndi_x __extTotalAccIndi_x) 0.0)
    ((:extTotalAccIndi_y __extTotalAccIndi_y) 0.0)
    ((:extTotalAccIndi_z __extTotalAccIndi_z) 0.0)
    ((:aw_x __aw_x) 0.0)
    ((:aw_y __aw_y) 0.0)
    ((:aw_z __aw_z) 0.0)
    ((:fb_a_x_fil __fb_a_x_fil) 0.0)
    ((:fb_a_y_fil __fb_a_y_fil) 0.0)
    ((:fb_a_z_fil __fb_a_z_fil) 0.0)
    ((:extF_psi __extF_psi) 0.0)
    ((:extF_theta __extF_theta) 0.0)
    ((:des_Fq_psi __des_Fq_psi) 0.0)
    ((:des_Fq_theta __des_Fq_theta) 0.0)
    ((:indi_q_err_ang __indi_q_err_ang) 0.0)
    ((:fb_F_x __fb_F_x) 0.0)
    ((:fb_F_y __fb_F_y) 0.0)
    ((:fb_F_z __fb_F_z) 0.0)
    ((:flag __flag) 0)
    ((:indi_acc_q_error_x __indi_acc_q_error_x) 0.0)
    ((:indi_acc_q_error_y __indi_acc_q_error_y) 0.0)
    ((:indi_acc_q_error_z __indi_acc_q_error_z) 0.0)
    ((:F_error __F_error) 0.0)
    ((:indi_acc_F_error_x __indi_acc_F_error_x) 0.0)
    ((:indi_acc_F_error_y __indi_acc_F_error_y) 0.0)
    ((:indi_acc_F_error_z __indi_acc_F_error_z) 0.0)
    ((:indiF_x __indiF_x) 0.0)
    ((:indiF_y __indiF_y) 0.0)
    ((:indiF_z __indiF_z) 0.0)
    ((:desFq_x __desFq_x) 0.0)
    ((:desFq_y __desFq_y) 0.0)
    ((:desFq_z __desFq_z) 0.0)
    ((:fb_pv_x __fb_pv_x) 0.0)
    ((:fb_pv_y __fb_pv_y) 0.0)
    ((:fb_pv_z __fb_pv_z) 0.0)
    ((:fb_q_x __fb_q_x) 0.0)
    ((:fb_q_y __fb_q_y) 0.0)
    ((:fb_q_z __fb_q_z) 0.0)
    ((:fb_Fq_x __fb_Fq_x) 0.0)
    ((:fb_Fq_y __fb_Fq_y) 0.0)
    ((:fb_Fq_z __fb_Fq_z) 0.0)
    ((:v_modi_x __v_modi_x) 0.0)
    ((:v_modi_y __v_modi_y) 0.0)
    ((:v_modi_z __v_modi_z) 0.0)
    ((:fb_Fq_error_fil_x __fb_Fq_error_fil_x) 0.0)
    ((:fb_Fq_error_fil_y __fb_Fq_error_fil_y) 0.0)
    ((:fb_Fq_error_fil_z __fb_Fq_error_fil_z) 0.0)
    ((:FUpper __FUpper) 0.0)
    ((:FLower __FLower) 0.0)
    ((:ref_rpm1 __ref_rpm1) 0.0)
    ((:ref_rpm2 __ref_rpm2) 0.0)
    ((:ref_rpm3 __ref_rpm3) 0.0)
    ((:ref_rpm4 __ref_rpm4) 0.0)
    ((:ref_torque_x __ref_torque_x) 0.0)
    ((:ref_torque_y __ref_torque_y) 0.0)
    ((:ref_torque_z __ref_torque_z) 0.0)
    ((:indi_F_Limit __indi_F_Limit) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _fb_a_x (float __fb_a_x))
   (setq _fb_a_y (float __fb_a_y))
   (setq _fb_a_z (float __fb_a_z))
   (setq _des_p_x (float __des_p_x))
   (setq _des_p_y (float __des_p_y))
   (setq _des_p_z (float __des_p_z))
   (setq _des_v_x (float __des_v_x))
   (setq _des_v_y (float __des_v_y))
   (setq _des_v_z (float __des_v_z))
   (setq _des_a_x (float __des_a_x))
   (setq _des_a_y (float __des_a_y))
   (setq _des_a_z (float __des_a_z))
   (setq _des_q_x (float __des_q_x))
   (setq _des_q_y (float __des_q_y))
   (setq _des_q_z (float __des_q_z))
   (setq _des_q_w (float __des_q_w))
   (setq _est_r (float __est_r))
   (setq _est_p (float __est_p))
   (setq _est_y (float __est_y))
   (setq _ref_r (float __ref_r))
   (setq _ref_p (float __ref_p))
   (setq _ref_y (float __ref_y))
   (setq _des_r (float __des_r))
   (setq _des_p (float __des_p))
   (setq _des_y (float __des_y))
   (setq _exec_err_axisang_x (float __exec_err_axisang_x))
   (setq _exec_err_axisang_y (float __exec_err_axisang_y))
   (setq _exec_err_axisang_z (float __exec_err_axisang_z))
   (setq _exec_err_axisang_ang (float __exec_err_axisang_ang))
   (setq _fb_axisang_x (float __fb_axisang_x))
   (setq _fb_axisang_y (float __fb_axisang_y))
   (setq _fb_axisang_z (float __fb_axisang_z))
   (setq _fb_axisang_ang (float __fb_axisang_ang))
   (setq _fb_rate_x (float __fb_rate_x))
   (setq _fb_rate_y (float __fb_rate_y))
   (setq _fb_rate_z (float __fb_rate_z))
   (setq _des_bodyrates_x (float __des_bodyrates_x))
   (setq _des_bodyrates_y (float __des_bodyrates_y))
   (setq _des_bodyrates_z (float __des_bodyrates_z))
   (setq _des_bodyaccs_x (float __des_bodyaccs_x))
   (setq _des_bodyaccs_y (float __des_bodyaccs_y))
   (setq _des_bodyaccs_z (float __des_bodyaccs_z))
   (setq _imu_af_x (float __imu_af_x))
   (setq _imu_af_y (float __imu_af_y))
   (setq _imu_af_z (float __imu_af_z))
   (setq _imu_wf_x (float __imu_wf_x))
   (setq _imu_wf_y (float __imu_wf_y))
   (setq _imu_wf_z (float __imu_wf_z))
   (setq _imu_dw_x (float __imu_dw_x))
   (setq _imu_dw_y (float __imu_dw_y))
   (setq _imu_dw_z (float __imu_dw_z))
   (setq _rpm_f1 (float __rpm_f1))
   (setq _rpm_f2 (float __rpm_f2))
   (setq _rpm_f3 (float __rpm_f3))
   (setq _rpm_f4 (float __rpm_f4))
   (setq _cmd_rpm1 (float __cmd_rpm1))
   (setq _cmd_rpm2 (float __cmd_rpm2))
   (setq _cmd_rpm3 (float __cmd_rpm3))
   (setq _cmd_rpm4 (float __cmd_rpm4))
   (setq _ref_thrust1 (float __ref_thrust1))
   (setq _ref_thrust2 (float __ref_thrust2))
   (setq _ref_thrust3 (float __ref_thrust3))
   (setq _ref_thrust4 (float __ref_thrust4))
   (setq _des_rpm_ave (float __des_rpm_ave))
   (setq _rpm_ave (float __rpm_ave))
   (setq _des_yaw (float __des_yaw))
   (setq _des_yaw_rate (float __des_yaw_rate))
   (setq _des_yaw_acc (float __des_yaw_acc))
   (setq _thro1 (float __thro1))
   (setq _thro2 (float __thro2))
   (setq _thro3 (float __thro3))
   (setq _thro4 (float __thro4))
   (setq _delta_q_ang (float __delta_q_ang))
   (setq _des_q_ang (float __des_q_ang))
   (setq _des_F (float __des_F))
   (setq _indi_F (float __indi_F))
   (setq _hover_percentage (float __hover_percentage))
   (setq _thr_scale_compensate (float __thr_scale_compensate))
   (setq _voltage (float __voltage))
   (setq _ref_v_x (float __ref_v_x))
   (setq _ref_v_y (float __ref_v_y))
   (setq _ref_v_z (float __ref_v_z))
   (setq _ref_a_x (float __ref_a_x))
   (setq _ref_a_y (float __ref_a_y))
   (setq _ref_a_z (float __ref_a_z))
   (setq _ref_j_x (float __ref_j_x))
   (setq _ref_j_y (float __ref_j_y))
   (setq _ref_j_z (float __ref_j_z))
   (setq _ref_s_x (float __ref_s_x))
   (setq _ref_s_y (float __ref_s_y))
   (setq _ref_s_z (float __ref_s_z))
   (setq _x_pos_error (float __x_pos_error))
   (setq _y_pos_error (float __y_pos_error))
   (setq _z_pos_error (float __z_pos_error))
   (setq _x_vel_error (float __x_vel_error))
   (setq _y_vel_error (float __y_vel_error))
   (setq _z_vel_error (float __z_vel_error))
   (setq _ref_thr (float __ref_thr))
   (setq _des_thr (float __des_thr))
   (setq _est_thr (float __est_thr))
   (setq _des_torque_x (float __des_torque_x))
   (setq _des_torque_y (float __des_torque_y))
   (setq _des_torque_z (float __des_torque_z))
   (setq _cont_torque_x (float __cont_torque_x))
   (setq _cont_torque_y (float __cont_torque_y))
   (setq _cont_torque_z (float __cont_torque_z))
   (setq _z_jwj (float __z_jwj))
   (setq _fbp_thrust1 (float __fbp_thrust1))
   (setq _fbi_thrust1 (float __fbi_thrust1))
   (setq _fbp_thrust2 (float __fbp_thrust2))
   (setq _fbi_thrust2 (float __fbi_thrust2))
   (setq _fbp_thrust3 (float __fbp_thrust3))
   (setq _fbi_thrust3 (float __fbi_thrust3))
   (setq _fbp_thrust4 (float __fbp_thrust4))
   (setq _fbi_thrust4 (float __fbi_thrust4))
   (setq _fbp_thrust (float __fbp_thrust))
   (setq _fbi_thrust (float __fbi_thrust))
   (setq _fb_thrust (float __fb_thrust))
   (setq _rpm_error1 (float __rpm_error1))
   (setq _rpm_error_sum1 (float __rpm_error_sum1))
   (setq _rpm_error2 (float __rpm_error2))
   (setq _rpm_error_sum2 (float __rpm_error_sum2))
   (setq _rpm_error3 (float __rpm_error3))
   (setq _rpm_error_sum3 (float __rpm_error_sum3))
   (setq _rpm_error4 (float __rpm_error4))
   (setq _rpm_error_sum4 (float __rpm_error_sum4))
   (setq _rate_error_z (float __rate_error_z))
   (setq _rate_error_sum_z (float __rate_error_sum_z))
   (setq _fbp_bodyacc_z (float __fbp_bodyacc_z))
   (setq _fbi_bodyacc_z (float __fbi_bodyacc_z))
   (setq _des_est_bodyrates_x (float __des_est_bodyrates_x))
   (setq _des_est_bodyrates_y (float __des_est_bodyrates_y))
   (setq _des_est_bodyrates_z (float __des_est_bodyrates_z))
   (setq _acc_error1 (float __acc_error1))
   (setq _acc_error2 (float __acc_error2))
   (setq _acc_error3 (float __acc_error3))
   (setq _acc_error4 (float __acc_error4))
   (setq _acc_errorsum1 (float __acc_errorsum1))
   (setq _acc_errorsum2 (float __acc_errorsum2))
   (setq _acc_errorsum3 (float __acc_errorsum3))
   (setq _acc_errorsum4 (float __acc_errorsum4))
   (setq _window_ave1 (float __window_ave1))
   (setq _window_ave2 (float __window_ave2))
   (setq _window_ave3 (float __window_ave3))
   (setq _window_ave4 (float __window_ave4))
   (setq _pos_error_all (float __pos_error_all))
   (setq _pos_error_xy (float __pos_error_xy))
   (setq _pos_error_rmse (float __pos_error_rmse))
   (setq _vel_error_all (float __vel_error_all))
   (setq _des_v_all (float __des_v_all))
   (setq _ref_bodyrates_x (float __ref_bodyrates_x))
   (setq _ref_bodyrates_y (float __ref_bodyrates_y))
   (setq _ref_bodyrates_z (float __ref_bodyrates_z))
   (setq _extTotalAccIndi_x (float __extTotalAccIndi_x))
   (setq _extTotalAccIndi_y (float __extTotalAccIndi_y))
   (setq _extTotalAccIndi_z (float __extTotalAccIndi_z))
   (setq _aw_x (float __aw_x))
   (setq _aw_y (float __aw_y))
   (setq _aw_z (float __aw_z))
   (setq _fb_a_x_fil (float __fb_a_x_fil))
   (setq _fb_a_y_fil (float __fb_a_y_fil))
   (setq _fb_a_z_fil (float __fb_a_z_fil))
   (setq _extF_psi (float __extF_psi))
   (setq _extF_theta (float __extF_theta))
   (setq _des_Fq_psi (float __des_Fq_psi))
   (setq _des_Fq_theta (float __des_Fq_theta))
   (setq _indi_q_err_ang (float __indi_q_err_ang))
   (setq _fb_F_x (float __fb_F_x))
   (setq _fb_F_y (float __fb_F_y))
   (setq _fb_F_z (float __fb_F_z))
   (setq _flag (round __flag))
   (setq _indi_acc_q_error_x (float __indi_acc_q_error_x))
   (setq _indi_acc_q_error_y (float __indi_acc_q_error_y))
   (setq _indi_acc_q_error_z (float __indi_acc_q_error_z))
   (setq _F_error (float __F_error))
   (setq _indi_acc_F_error_x (float __indi_acc_F_error_x))
   (setq _indi_acc_F_error_y (float __indi_acc_F_error_y))
   (setq _indi_acc_F_error_z (float __indi_acc_F_error_z))
   (setq _indiF_x (float __indiF_x))
   (setq _indiF_y (float __indiF_y))
   (setq _indiF_z (float __indiF_z))
   (setq _desFq_x (float __desFq_x))
   (setq _desFq_y (float __desFq_y))
   (setq _desFq_z (float __desFq_z))
   (setq _fb_pv_x (float __fb_pv_x))
   (setq _fb_pv_y (float __fb_pv_y))
   (setq _fb_pv_z (float __fb_pv_z))
   (setq _fb_q_x (float __fb_q_x))
   (setq _fb_q_y (float __fb_q_y))
   (setq _fb_q_z (float __fb_q_z))
   (setq _fb_Fq_x (float __fb_Fq_x))
   (setq _fb_Fq_y (float __fb_Fq_y))
   (setq _fb_Fq_z (float __fb_Fq_z))
   (setq _v_modi_x (float __v_modi_x))
   (setq _v_modi_y (float __v_modi_y))
   (setq _v_modi_z (float __v_modi_z))
   (setq _fb_Fq_error_fil_x (float __fb_Fq_error_fil_x))
   (setq _fb_Fq_error_fil_y (float __fb_Fq_error_fil_y))
   (setq _fb_Fq_error_fil_z (float __fb_Fq_error_fil_z))
   (setq _FUpper (float __FUpper))
   (setq _FLower (float __FLower))
   (setq _ref_rpm1 (float __ref_rpm1))
   (setq _ref_rpm2 (float __ref_rpm2))
   (setq _ref_rpm3 (float __ref_rpm3))
   (setq _ref_rpm4 (float __ref_rpm4))
   (setq _ref_torque_x (float __ref_torque_x))
   (setq _ref_torque_y (float __ref_torque_y))
   (setq _ref_torque_z (float __ref_torque_z))
   (setq _indi_F_Limit (float __indi_F_Limit))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:fb_a_x
   (&optional __fb_a_x)
   (if __fb_a_x (setq _fb_a_x __fb_a_x)) _fb_a_x)
  (:fb_a_y
   (&optional __fb_a_y)
   (if __fb_a_y (setq _fb_a_y __fb_a_y)) _fb_a_y)
  (:fb_a_z
   (&optional __fb_a_z)
   (if __fb_a_z (setq _fb_a_z __fb_a_z)) _fb_a_z)
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
  (:des_q_x
   (&optional __des_q_x)
   (if __des_q_x (setq _des_q_x __des_q_x)) _des_q_x)
  (:des_q_y
   (&optional __des_q_y)
   (if __des_q_y (setq _des_q_y __des_q_y)) _des_q_y)
  (:des_q_z
   (&optional __des_q_z)
   (if __des_q_z (setq _des_q_z __des_q_z)) _des_q_z)
  (:des_q_w
   (&optional __des_q_w)
   (if __des_q_w (setq _des_q_w __des_q_w)) _des_q_w)
  (:est_r
   (&optional __est_r)
   (if __est_r (setq _est_r __est_r)) _est_r)
  (:est_p
   (&optional __est_p)
   (if __est_p (setq _est_p __est_p)) _est_p)
  (:est_y
   (&optional __est_y)
   (if __est_y (setq _est_y __est_y)) _est_y)
  (:ref_r
   (&optional __ref_r)
   (if __ref_r (setq _ref_r __ref_r)) _ref_r)
  (:ref_p
   (&optional __ref_p)
   (if __ref_p (setq _ref_p __ref_p)) _ref_p)
  (:ref_y
   (&optional __ref_y)
   (if __ref_y (setq _ref_y __ref_y)) _ref_y)
  (:des_r
   (&optional __des_r)
   (if __des_r (setq _des_r __des_r)) _des_r)
  (:des_p
   (&optional __des_p)
   (if __des_p (setq _des_p __des_p)) _des_p)
  (:des_y
   (&optional __des_y)
   (if __des_y (setq _des_y __des_y)) _des_y)
  (:exec_err_axisang_x
   (&optional __exec_err_axisang_x)
   (if __exec_err_axisang_x (setq _exec_err_axisang_x __exec_err_axisang_x)) _exec_err_axisang_x)
  (:exec_err_axisang_y
   (&optional __exec_err_axisang_y)
   (if __exec_err_axisang_y (setq _exec_err_axisang_y __exec_err_axisang_y)) _exec_err_axisang_y)
  (:exec_err_axisang_z
   (&optional __exec_err_axisang_z)
   (if __exec_err_axisang_z (setq _exec_err_axisang_z __exec_err_axisang_z)) _exec_err_axisang_z)
  (:exec_err_axisang_ang
   (&optional __exec_err_axisang_ang)
   (if __exec_err_axisang_ang (setq _exec_err_axisang_ang __exec_err_axisang_ang)) _exec_err_axisang_ang)
  (:fb_axisang_x
   (&optional __fb_axisang_x)
   (if __fb_axisang_x (setq _fb_axisang_x __fb_axisang_x)) _fb_axisang_x)
  (:fb_axisang_y
   (&optional __fb_axisang_y)
   (if __fb_axisang_y (setq _fb_axisang_y __fb_axisang_y)) _fb_axisang_y)
  (:fb_axisang_z
   (&optional __fb_axisang_z)
   (if __fb_axisang_z (setq _fb_axisang_z __fb_axisang_z)) _fb_axisang_z)
  (:fb_axisang_ang
   (&optional __fb_axisang_ang)
   (if __fb_axisang_ang (setq _fb_axisang_ang __fb_axisang_ang)) _fb_axisang_ang)
  (:fb_rate_x
   (&optional __fb_rate_x)
   (if __fb_rate_x (setq _fb_rate_x __fb_rate_x)) _fb_rate_x)
  (:fb_rate_y
   (&optional __fb_rate_y)
   (if __fb_rate_y (setq _fb_rate_y __fb_rate_y)) _fb_rate_y)
  (:fb_rate_z
   (&optional __fb_rate_z)
   (if __fb_rate_z (setq _fb_rate_z __fb_rate_z)) _fb_rate_z)
  (:des_bodyrates_x
   (&optional __des_bodyrates_x)
   (if __des_bodyrates_x (setq _des_bodyrates_x __des_bodyrates_x)) _des_bodyrates_x)
  (:des_bodyrates_y
   (&optional __des_bodyrates_y)
   (if __des_bodyrates_y (setq _des_bodyrates_y __des_bodyrates_y)) _des_bodyrates_y)
  (:des_bodyrates_z
   (&optional __des_bodyrates_z)
   (if __des_bodyrates_z (setq _des_bodyrates_z __des_bodyrates_z)) _des_bodyrates_z)
  (:des_bodyaccs_x
   (&optional __des_bodyaccs_x)
   (if __des_bodyaccs_x (setq _des_bodyaccs_x __des_bodyaccs_x)) _des_bodyaccs_x)
  (:des_bodyaccs_y
   (&optional __des_bodyaccs_y)
   (if __des_bodyaccs_y (setq _des_bodyaccs_y __des_bodyaccs_y)) _des_bodyaccs_y)
  (:des_bodyaccs_z
   (&optional __des_bodyaccs_z)
   (if __des_bodyaccs_z (setq _des_bodyaccs_z __des_bodyaccs_z)) _des_bodyaccs_z)
  (:imu_af_x
   (&optional __imu_af_x)
   (if __imu_af_x (setq _imu_af_x __imu_af_x)) _imu_af_x)
  (:imu_af_y
   (&optional __imu_af_y)
   (if __imu_af_y (setq _imu_af_y __imu_af_y)) _imu_af_y)
  (:imu_af_z
   (&optional __imu_af_z)
   (if __imu_af_z (setq _imu_af_z __imu_af_z)) _imu_af_z)
  (:imu_wf_x
   (&optional __imu_wf_x)
   (if __imu_wf_x (setq _imu_wf_x __imu_wf_x)) _imu_wf_x)
  (:imu_wf_y
   (&optional __imu_wf_y)
   (if __imu_wf_y (setq _imu_wf_y __imu_wf_y)) _imu_wf_y)
  (:imu_wf_z
   (&optional __imu_wf_z)
   (if __imu_wf_z (setq _imu_wf_z __imu_wf_z)) _imu_wf_z)
  (:imu_dw_x
   (&optional __imu_dw_x)
   (if __imu_dw_x (setq _imu_dw_x __imu_dw_x)) _imu_dw_x)
  (:imu_dw_y
   (&optional __imu_dw_y)
   (if __imu_dw_y (setq _imu_dw_y __imu_dw_y)) _imu_dw_y)
  (:imu_dw_z
   (&optional __imu_dw_z)
   (if __imu_dw_z (setq _imu_dw_z __imu_dw_z)) _imu_dw_z)
  (:rpm_f1
   (&optional __rpm_f1)
   (if __rpm_f1 (setq _rpm_f1 __rpm_f1)) _rpm_f1)
  (:rpm_f2
   (&optional __rpm_f2)
   (if __rpm_f2 (setq _rpm_f2 __rpm_f2)) _rpm_f2)
  (:rpm_f3
   (&optional __rpm_f3)
   (if __rpm_f3 (setq _rpm_f3 __rpm_f3)) _rpm_f3)
  (:rpm_f4
   (&optional __rpm_f4)
   (if __rpm_f4 (setq _rpm_f4 __rpm_f4)) _rpm_f4)
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
  (:des_rpm_ave
   (&optional __des_rpm_ave)
   (if __des_rpm_ave (setq _des_rpm_ave __des_rpm_ave)) _des_rpm_ave)
  (:rpm_ave
   (&optional __rpm_ave)
   (if __rpm_ave (setq _rpm_ave __rpm_ave)) _rpm_ave)
  (:des_yaw
   (&optional __des_yaw)
   (if __des_yaw (setq _des_yaw __des_yaw)) _des_yaw)
  (:des_yaw_rate
   (&optional __des_yaw_rate)
   (if __des_yaw_rate (setq _des_yaw_rate __des_yaw_rate)) _des_yaw_rate)
  (:des_yaw_acc
   (&optional __des_yaw_acc)
   (if __des_yaw_acc (setq _des_yaw_acc __des_yaw_acc)) _des_yaw_acc)
  (:thro1
   (&optional __thro1)
   (if __thro1 (setq _thro1 __thro1)) _thro1)
  (:thro2
   (&optional __thro2)
   (if __thro2 (setq _thro2 __thro2)) _thro2)
  (:thro3
   (&optional __thro3)
   (if __thro3 (setq _thro3 __thro3)) _thro3)
  (:thro4
   (&optional __thro4)
   (if __thro4 (setq _thro4 __thro4)) _thro4)
  (:delta_q_ang
   (&optional __delta_q_ang)
   (if __delta_q_ang (setq _delta_q_ang __delta_q_ang)) _delta_q_ang)
  (:des_q_ang
   (&optional __des_q_ang)
   (if __des_q_ang (setq _des_q_ang __des_q_ang)) _des_q_ang)
  (:des_F
   (&optional __des_F)
   (if __des_F (setq _des_F __des_F)) _des_F)
  (:indi_F
   (&optional __indi_F)
   (if __indi_F (setq _indi_F __indi_F)) _indi_F)
  (:hover_percentage
   (&optional __hover_percentage)
   (if __hover_percentage (setq _hover_percentage __hover_percentage)) _hover_percentage)
  (:thr_scale_compensate
   (&optional __thr_scale_compensate)
   (if __thr_scale_compensate (setq _thr_scale_compensate __thr_scale_compensate)) _thr_scale_compensate)
  (:voltage
   (&optional __voltage)
   (if __voltage (setq _voltage __voltage)) _voltage)
  (:ref_v_x
   (&optional __ref_v_x)
   (if __ref_v_x (setq _ref_v_x __ref_v_x)) _ref_v_x)
  (:ref_v_y
   (&optional __ref_v_y)
   (if __ref_v_y (setq _ref_v_y __ref_v_y)) _ref_v_y)
  (:ref_v_z
   (&optional __ref_v_z)
   (if __ref_v_z (setq _ref_v_z __ref_v_z)) _ref_v_z)
  (:ref_a_x
   (&optional __ref_a_x)
   (if __ref_a_x (setq _ref_a_x __ref_a_x)) _ref_a_x)
  (:ref_a_y
   (&optional __ref_a_y)
   (if __ref_a_y (setq _ref_a_y __ref_a_y)) _ref_a_y)
  (:ref_a_z
   (&optional __ref_a_z)
   (if __ref_a_z (setq _ref_a_z __ref_a_z)) _ref_a_z)
  (:ref_j_x
   (&optional __ref_j_x)
   (if __ref_j_x (setq _ref_j_x __ref_j_x)) _ref_j_x)
  (:ref_j_y
   (&optional __ref_j_y)
   (if __ref_j_y (setq _ref_j_y __ref_j_y)) _ref_j_y)
  (:ref_j_z
   (&optional __ref_j_z)
   (if __ref_j_z (setq _ref_j_z __ref_j_z)) _ref_j_z)
  (:ref_s_x
   (&optional __ref_s_x)
   (if __ref_s_x (setq _ref_s_x __ref_s_x)) _ref_s_x)
  (:ref_s_y
   (&optional __ref_s_y)
   (if __ref_s_y (setq _ref_s_y __ref_s_y)) _ref_s_y)
  (:ref_s_z
   (&optional __ref_s_z)
   (if __ref_s_z (setq _ref_s_z __ref_s_z)) _ref_s_z)
  (:x_pos_error
   (&optional __x_pos_error)
   (if __x_pos_error (setq _x_pos_error __x_pos_error)) _x_pos_error)
  (:y_pos_error
   (&optional __y_pos_error)
   (if __y_pos_error (setq _y_pos_error __y_pos_error)) _y_pos_error)
  (:z_pos_error
   (&optional __z_pos_error)
   (if __z_pos_error (setq _z_pos_error __z_pos_error)) _z_pos_error)
  (:x_vel_error
   (&optional __x_vel_error)
   (if __x_vel_error (setq _x_vel_error __x_vel_error)) _x_vel_error)
  (:y_vel_error
   (&optional __y_vel_error)
   (if __y_vel_error (setq _y_vel_error __y_vel_error)) _y_vel_error)
  (:z_vel_error
   (&optional __z_vel_error)
   (if __z_vel_error (setq _z_vel_error __z_vel_error)) _z_vel_error)
  (:ref_thr
   (&optional __ref_thr)
   (if __ref_thr (setq _ref_thr __ref_thr)) _ref_thr)
  (:des_thr
   (&optional __des_thr)
   (if __des_thr (setq _des_thr __des_thr)) _des_thr)
  (:est_thr
   (&optional __est_thr)
   (if __est_thr (setq _est_thr __est_thr)) _est_thr)
  (:des_torque_x
   (&optional __des_torque_x)
   (if __des_torque_x (setq _des_torque_x __des_torque_x)) _des_torque_x)
  (:des_torque_y
   (&optional __des_torque_y)
   (if __des_torque_y (setq _des_torque_y __des_torque_y)) _des_torque_y)
  (:des_torque_z
   (&optional __des_torque_z)
   (if __des_torque_z (setq _des_torque_z __des_torque_z)) _des_torque_z)
  (:cont_torque_x
   (&optional __cont_torque_x)
   (if __cont_torque_x (setq _cont_torque_x __cont_torque_x)) _cont_torque_x)
  (:cont_torque_y
   (&optional __cont_torque_y)
   (if __cont_torque_y (setq _cont_torque_y __cont_torque_y)) _cont_torque_y)
  (:cont_torque_z
   (&optional __cont_torque_z)
   (if __cont_torque_z (setq _cont_torque_z __cont_torque_z)) _cont_torque_z)
  (:z_jwj
   (&optional __z_jwj)
   (if __z_jwj (setq _z_jwj __z_jwj)) _z_jwj)
  (:fbp_thrust1
   (&optional __fbp_thrust1)
   (if __fbp_thrust1 (setq _fbp_thrust1 __fbp_thrust1)) _fbp_thrust1)
  (:fbi_thrust1
   (&optional __fbi_thrust1)
   (if __fbi_thrust1 (setq _fbi_thrust1 __fbi_thrust1)) _fbi_thrust1)
  (:fbp_thrust2
   (&optional __fbp_thrust2)
   (if __fbp_thrust2 (setq _fbp_thrust2 __fbp_thrust2)) _fbp_thrust2)
  (:fbi_thrust2
   (&optional __fbi_thrust2)
   (if __fbi_thrust2 (setq _fbi_thrust2 __fbi_thrust2)) _fbi_thrust2)
  (:fbp_thrust3
   (&optional __fbp_thrust3)
   (if __fbp_thrust3 (setq _fbp_thrust3 __fbp_thrust3)) _fbp_thrust3)
  (:fbi_thrust3
   (&optional __fbi_thrust3)
   (if __fbi_thrust3 (setq _fbi_thrust3 __fbi_thrust3)) _fbi_thrust3)
  (:fbp_thrust4
   (&optional __fbp_thrust4)
   (if __fbp_thrust4 (setq _fbp_thrust4 __fbp_thrust4)) _fbp_thrust4)
  (:fbi_thrust4
   (&optional __fbi_thrust4)
   (if __fbi_thrust4 (setq _fbi_thrust4 __fbi_thrust4)) _fbi_thrust4)
  (:fbp_thrust
   (&optional __fbp_thrust)
   (if __fbp_thrust (setq _fbp_thrust __fbp_thrust)) _fbp_thrust)
  (:fbi_thrust
   (&optional __fbi_thrust)
   (if __fbi_thrust (setq _fbi_thrust __fbi_thrust)) _fbi_thrust)
  (:fb_thrust
   (&optional __fb_thrust)
   (if __fb_thrust (setq _fb_thrust __fb_thrust)) _fb_thrust)
  (:rpm_error1
   (&optional __rpm_error1)
   (if __rpm_error1 (setq _rpm_error1 __rpm_error1)) _rpm_error1)
  (:rpm_error_sum1
   (&optional __rpm_error_sum1)
   (if __rpm_error_sum1 (setq _rpm_error_sum1 __rpm_error_sum1)) _rpm_error_sum1)
  (:rpm_error2
   (&optional __rpm_error2)
   (if __rpm_error2 (setq _rpm_error2 __rpm_error2)) _rpm_error2)
  (:rpm_error_sum2
   (&optional __rpm_error_sum2)
   (if __rpm_error_sum2 (setq _rpm_error_sum2 __rpm_error_sum2)) _rpm_error_sum2)
  (:rpm_error3
   (&optional __rpm_error3)
   (if __rpm_error3 (setq _rpm_error3 __rpm_error3)) _rpm_error3)
  (:rpm_error_sum3
   (&optional __rpm_error_sum3)
   (if __rpm_error_sum3 (setq _rpm_error_sum3 __rpm_error_sum3)) _rpm_error_sum3)
  (:rpm_error4
   (&optional __rpm_error4)
   (if __rpm_error4 (setq _rpm_error4 __rpm_error4)) _rpm_error4)
  (:rpm_error_sum4
   (&optional __rpm_error_sum4)
   (if __rpm_error_sum4 (setq _rpm_error_sum4 __rpm_error_sum4)) _rpm_error_sum4)
  (:rate_error_z
   (&optional __rate_error_z)
   (if __rate_error_z (setq _rate_error_z __rate_error_z)) _rate_error_z)
  (:rate_error_sum_z
   (&optional __rate_error_sum_z)
   (if __rate_error_sum_z (setq _rate_error_sum_z __rate_error_sum_z)) _rate_error_sum_z)
  (:fbp_bodyacc_z
   (&optional __fbp_bodyacc_z)
   (if __fbp_bodyacc_z (setq _fbp_bodyacc_z __fbp_bodyacc_z)) _fbp_bodyacc_z)
  (:fbi_bodyacc_z
   (&optional __fbi_bodyacc_z)
   (if __fbi_bodyacc_z (setq _fbi_bodyacc_z __fbi_bodyacc_z)) _fbi_bodyacc_z)
  (:des_est_bodyrates_x
   (&optional __des_est_bodyrates_x)
   (if __des_est_bodyrates_x (setq _des_est_bodyrates_x __des_est_bodyrates_x)) _des_est_bodyrates_x)
  (:des_est_bodyrates_y
   (&optional __des_est_bodyrates_y)
   (if __des_est_bodyrates_y (setq _des_est_bodyrates_y __des_est_bodyrates_y)) _des_est_bodyrates_y)
  (:des_est_bodyrates_z
   (&optional __des_est_bodyrates_z)
   (if __des_est_bodyrates_z (setq _des_est_bodyrates_z __des_est_bodyrates_z)) _des_est_bodyrates_z)
  (:acc_error1
   (&optional __acc_error1)
   (if __acc_error1 (setq _acc_error1 __acc_error1)) _acc_error1)
  (:acc_error2
   (&optional __acc_error2)
   (if __acc_error2 (setq _acc_error2 __acc_error2)) _acc_error2)
  (:acc_error3
   (&optional __acc_error3)
   (if __acc_error3 (setq _acc_error3 __acc_error3)) _acc_error3)
  (:acc_error4
   (&optional __acc_error4)
   (if __acc_error4 (setq _acc_error4 __acc_error4)) _acc_error4)
  (:acc_errorsum1
   (&optional __acc_errorsum1)
   (if __acc_errorsum1 (setq _acc_errorsum1 __acc_errorsum1)) _acc_errorsum1)
  (:acc_errorsum2
   (&optional __acc_errorsum2)
   (if __acc_errorsum2 (setq _acc_errorsum2 __acc_errorsum2)) _acc_errorsum2)
  (:acc_errorsum3
   (&optional __acc_errorsum3)
   (if __acc_errorsum3 (setq _acc_errorsum3 __acc_errorsum3)) _acc_errorsum3)
  (:acc_errorsum4
   (&optional __acc_errorsum4)
   (if __acc_errorsum4 (setq _acc_errorsum4 __acc_errorsum4)) _acc_errorsum4)
  (:window_ave1
   (&optional __window_ave1)
   (if __window_ave1 (setq _window_ave1 __window_ave1)) _window_ave1)
  (:window_ave2
   (&optional __window_ave2)
   (if __window_ave2 (setq _window_ave2 __window_ave2)) _window_ave2)
  (:window_ave3
   (&optional __window_ave3)
   (if __window_ave3 (setq _window_ave3 __window_ave3)) _window_ave3)
  (:window_ave4
   (&optional __window_ave4)
   (if __window_ave4 (setq _window_ave4 __window_ave4)) _window_ave4)
  (:pos_error_all
   (&optional __pos_error_all)
   (if __pos_error_all (setq _pos_error_all __pos_error_all)) _pos_error_all)
  (:pos_error_xy
   (&optional __pos_error_xy)
   (if __pos_error_xy (setq _pos_error_xy __pos_error_xy)) _pos_error_xy)
  (:pos_error_rmse
   (&optional __pos_error_rmse)
   (if __pos_error_rmse (setq _pos_error_rmse __pos_error_rmse)) _pos_error_rmse)
  (:vel_error_all
   (&optional __vel_error_all)
   (if __vel_error_all (setq _vel_error_all __vel_error_all)) _vel_error_all)
  (:des_v_all
   (&optional __des_v_all)
   (if __des_v_all (setq _des_v_all __des_v_all)) _des_v_all)
  (:ref_bodyrates_x
   (&optional __ref_bodyrates_x)
   (if __ref_bodyrates_x (setq _ref_bodyrates_x __ref_bodyrates_x)) _ref_bodyrates_x)
  (:ref_bodyrates_y
   (&optional __ref_bodyrates_y)
   (if __ref_bodyrates_y (setq _ref_bodyrates_y __ref_bodyrates_y)) _ref_bodyrates_y)
  (:ref_bodyrates_z
   (&optional __ref_bodyrates_z)
   (if __ref_bodyrates_z (setq _ref_bodyrates_z __ref_bodyrates_z)) _ref_bodyrates_z)
  (:extTotalAccIndi_x
   (&optional __extTotalAccIndi_x)
   (if __extTotalAccIndi_x (setq _extTotalAccIndi_x __extTotalAccIndi_x)) _extTotalAccIndi_x)
  (:extTotalAccIndi_y
   (&optional __extTotalAccIndi_y)
   (if __extTotalAccIndi_y (setq _extTotalAccIndi_y __extTotalAccIndi_y)) _extTotalAccIndi_y)
  (:extTotalAccIndi_z
   (&optional __extTotalAccIndi_z)
   (if __extTotalAccIndi_z (setq _extTotalAccIndi_z __extTotalAccIndi_z)) _extTotalAccIndi_z)
  (:aw_x
   (&optional __aw_x)
   (if __aw_x (setq _aw_x __aw_x)) _aw_x)
  (:aw_y
   (&optional __aw_y)
   (if __aw_y (setq _aw_y __aw_y)) _aw_y)
  (:aw_z
   (&optional __aw_z)
   (if __aw_z (setq _aw_z __aw_z)) _aw_z)
  (:fb_a_x_fil
   (&optional __fb_a_x_fil)
   (if __fb_a_x_fil (setq _fb_a_x_fil __fb_a_x_fil)) _fb_a_x_fil)
  (:fb_a_y_fil
   (&optional __fb_a_y_fil)
   (if __fb_a_y_fil (setq _fb_a_y_fil __fb_a_y_fil)) _fb_a_y_fil)
  (:fb_a_z_fil
   (&optional __fb_a_z_fil)
   (if __fb_a_z_fil (setq _fb_a_z_fil __fb_a_z_fil)) _fb_a_z_fil)
  (:extF_psi
   (&optional __extF_psi)
   (if __extF_psi (setq _extF_psi __extF_psi)) _extF_psi)
  (:extF_theta
   (&optional __extF_theta)
   (if __extF_theta (setq _extF_theta __extF_theta)) _extF_theta)
  (:des_Fq_psi
   (&optional __des_Fq_psi)
   (if __des_Fq_psi (setq _des_Fq_psi __des_Fq_psi)) _des_Fq_psi)
  (:des_Fq_theta
   (&optional __des_Fq_theta)
   (if __des_Fq_theta (setq _des_Fq_theta __des_Fq_theta)) _des_Fq_theta)
  (:indi_q_err_ang
   (&optional __indi_q_err_ang)
   (if __indi_q_err_ang (setq _indi_q_err_ang __indi_q_err_ang)) _indi_q_err_ang)
  (:fb_F_x
   (&optional __fb_F_x)
   (if __fb_F_x (setq _fb_F_x __fb_F_x)) _fb_F_x)
  (:fb_F_y
   (&optional __fb_F_y)
   (if __fb_F_y (setq _fb_F_y __fb_F_y)) _fb_F_y)
  (:fb_F_z
   (&optional __fb_F_z)
   (if __fb_F_z (setq _fb_F_z __fb_F_z)) _fb_F_z)
  (:flag
   (&optional __flag)
   (if __flag (setq _flag __flag)) _flag)
  (:indi_acc_q_error_x
   (&optional __indi_acc_q_error_x)
   (if __indi_acc_q_error_x (setq _indi_acc_q_error_x __indi_acc_q_error_x)) _indi_acc_q_error_x)
  (:indi_acc_q_error_y
   (&optional __indi_acc_q_error_y)
   (if __indi_acc_q_error_y (setq _indi_acc_q_error_y __indi_acc_q_error_y)) _indi_acc_q_error_y)
  (:indi_acc_q_error_z
   (&optional __indi_acc_q_error_z)
   (if __indi_acc_q_error_z (setq _indi_acc_q_error_z __indi_acc_q_error_z)) _indi_acc_q_error_z)
  (:F_error
   (&optional __F_error)
   (if __F_error (setq _F_error __F_error)) _F_error)
  (:indi_acc_F_error_x
   (&optional __indi_acc_F_error_x)
   (if __indi_acc_F_error_x (setq _indi_acc_F_error_x __indi_acc_F_error_x)) _indi_acc_F_error_x)
  (:indi_acc_F_error_y
   (&optional __indi_acc_F_error_y)
   (if __indi_acc_F_error_y (setq _indi_acc_F_error_y __indi_acc_F_error_y)) _indi_acc_F_error_y)
  (:indi_acc_F_error_z
   (&optional __indi_acc_F_error_z)
   (if __indi_acc_F_error_z (setq _indi_acc_F_error_z __indi_acc_F_error_z)) _indi_acc_F_error_z)
  (:indiF_x
   (&optional __indiF_x)
   (if __indiF_x (setq _indiF_x __indiF_x)) _indiF_x)
  (:indiF_y
   (&optional __indiF_y)
   (if __indiF_y (setq _indiF_y __indiF_y)) _indiF_y)
  (:indiF_z
   (&optional __indiF_z)
   (if __indiF_z (setq _indiF_z __indiF_z)) _indiF_z)
  (:desFq_x
   (&optional __desFq_x)
   (if __desFq_x (setq _desFq_x __desFq_x)) _desFq_x)
  (:desFq_y
   (&optional __desFq_y)
   (if __desFq_y (setq _desFq_y __desFq_y)) _desFq_y)
  (:desFq_z
   (&optional __desFq_z)
   (if __desFq_z (setq _desFq_z __desFq_z)) _desFq_z)
  (:fb_pv_x
   (&optional __fb_pv_x)
   (if __fb_pv_x (setq _fb_pv_x __fb_pv_x)) _fb_pv_x)
  (:fb_pv_y
   (&optional __fb_pv_y)
   (if __fb_pv_y (setq _fb_pv_y __fb_pv_y)) _fb_pv_y)
  (:fb_pv_z
   (&optional __fb_pv_z)
   (if __fb_pv_z (setq _fb_pv_z __fb_pv_z)) _fb_pv_z)
  (:fb_q_x
   (&optional __fb_q_x)
   (if __fb_q_x (setq _fb_q_x __fb_q_x)) _fb_q_x)
  (:fb_q_y
   (&optional __fb_q_y)
   (if __fb_q_y (setq _fb_q_y __fb_q_y)) _fb_q_y)
  (:fb_q_z
   (&optional __fb_q_z)
   (if __fb_q_z (setq _fb_q_z __fb_q_z)) _fb_q_z)
  (:fb_Fq_x
   (&optional __fb_Fq_x)
   (if __fb_Fq_x (setq _fb_Fq_x __fb_Fq_x)) _fb_Fq_x)
  (:fb_Fq_y
   (&optional __fb_Fq_y)
   (if __fb_Fq_y (setq _fb_Fq_y __fb_Fq_y)) _fb_Fq_y)
  (:fb_Fq_z
   (&optional __fb_Fq_z)
   (if __fb_Fq_z (setq _fb_Fq_z __fb_Fq_z)) _fb_Fq_z)
  (:v_modi_x
   (&optional __v_modi_x)
   (if __v_modi_x (setq _v_modi_x __v_modi_x)) _v_modi_x)
  (:v_modi_y
   (&optional __v_modi_y)
   (if __v_modi_y (setq _v_modi_y __v_modi_y)) _v_modi_y)
  (:v_modi_z
   (&optional __v_modi_z)
   (if __v_modi_z (setq _v_modi_z __v_modi_z)) _v_modi_z)
  (:fb_Fq_error_fil_x
   (&optional __fb_Fq_error_fil_x)
   (if __fb_Fq_error_fil_x (setq _fb_Fq_error_fil_x __fb_Fq_error_fil_x)) _fb_Fq_error_fil_x)
  (:fb_Fq_error_fil_y
   (&optional __fb_Fq_error_fil_y)
   (if __fb_Fq_error_fil_y (setq _fb_Fq_error_fil_y __fb_Fq_error_fil_y)) _fb_Fq_error_fil_y)
  (:fb_Fq_error_fil_z
   (&optional __fb_Fq_error_fil_z)
   (if __fb_Fq_error_fil_z (setq _fb_Fq_error_fil_z __fb_Fq_error_fil_z)) _fb_Fq_error_fil_z)
  (:FUpper
   (&optional __FUpper)
   (if __FUpper (setq _FUpper __FUpper)) _FUpper)
  (:FLower
   (&optional __FLower)
   (if __FLower (setq _FLower __FLower)) _FLower)
  (:ref_rpm1
   (&optional __ref_rpm1)
   (if __ref_rpm1 (setq _ref_rpm1 __ref_rpm1)) _ref_rpm1)
  (:ref_rpm2
   (&optional __ref_rpm2)
   (if __ref_rpm2 (setq _ref_rpm2 __ref_rpm2)) _ref_rpm2)
  (:ref_rpm3
   (&optional __ref_rpm3)
   (if __ref_rpm3 (setq _ref_rpm3 __ref_rpm3)) _ref_rpm3)
  (:ref_rpm4
   (&optional __ref_rpm4)
   (if __ref_rpm4 (setq _ref_rpm4 __ref_rpm4)) _ref_rpm4)
  (:ref_torque_x
   (&optional __ref_torque_x)
   (if __ref_torque_x (setq _ref_torque_x __ref_torque_x)) _ref_torque_x)
  (:ref_torque_y
   (&optional __ref_torque_y)
   (if __ref_torque_y (setq _ref_torque_y __ref_torque_y)) _ref_torque_y)
  (:ref_torque_z
   (&optional __ref_torque_z)
   (if __ref_torque_z (setq _ref_torque_z __ref_torque_z)) _ref_torque_z)
  (:indi_F_Limit
   (&optional __indi_F_Limit)
   (if __indi_F_Limit (setq _indi_F_Limit __indi_F_Limit)) _indi_F_Limit)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _fb_a_x
    8
    ;; float64 _fb_a_y
    8
    ;; float64 _fb_a_z
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
    ;; float64 _des_q_x
    8
    ;; float64 _des_q_y
    8
    ;; float64 _des_q_z
    8
    ;; float64 _des_q_w
    8
    ;; float64 _est_r
    8
    ;; float64 _est_p
    8
    ;; float64 _est_y
    8
    ;; float64 _ref_r
    8
    ;; float64 _ref_p
    8
    ;; float64 _ref_y
    8
    ;; float64 _des_r
    8
    ;; float64 _des_p
    8
    ;; float64 _des_y
    8
    ;; float64 _exec_err_axisang_x
    8
    ;; float64 _exec_err_axisang_y
    8
    ;; float64 _exec_err_axisang_z
    8
    ;; float64 _exec_err_axisang_ang
    8
    ;; float64 _fb_axisang_x
    8
    ;; float64 _fb_axisang_y
    8
    ;; float64 _fb_axisang_z
    8
    ;; float64 _fb_axisang_ang
    8
    ;; float64 _fb_rate_x
    8
    ;; float64 _fb_rate_y
    8
    ;; float64 _fb_rate_z
    8
    ;; float64 _des_bodyrates_x
    8
    ;; float64 _des_bodyrates_y
    8
    ;; float64 _des_bodyrates_z
    8
    ;; float64 _des_bodyaccs_x
    8
    ;; float64 _des_bodyaccs_y
    8
    ;; float64 _des_bodyaccs_z
    8
    ;; float64 _imu_af_x
    8
    ;; float64 _imu_af_y
    8
    ;; float64 _imu_af_z
    8
    ;; float64 _imu_wf_x
    8
    ;; float64 _imu_wf_y
    8
    ;; float64 _imu_wf_z
    8
    ;; float64 _imu_dw_x
    8
    ;; float64 _imu_dw_y
    8
    ;; float64 _imu_dw_z
    8
    ;; float64 _rpm_f1
    8
    ;; float64 _rpm_f2
    8
    ;; float64 _rpm_f3
    8
    ;; float64 _rpm_f4
    8
    ;; float64 _cmd_rpm1
    8
    ;; float64 _cmd_rpm2
    8
    ;; float64 _cmd_rpm3
    8
    ;; float64 _cmd_rpm4
    8
    ;; float64 _ref_thrust1
    8
    ;; float64 _ref_thrust2
    8
    ;; float64 _ref_thrust3
    8
    ;; float64 _ref_thrust4
    8
    ;; float64 _des_rpm_ave
    8
    ;; float64 _rpm_ave
    8
    ;; float64 _des_yaw
    8
    ;; float64 _des_yaw_rate
    8
    ;; float64 _des_yaw_acc
    8
    ;; float64 _thro1
    8
    ;; float64 _thro2
    8
    ;; float64 _thro3
    8
    ;; float64 _thro4
    8
    ;; float64 _delta_q_ang
    8
    ;; float64 _des_q_ang
    8
    ;; float64 _des_F
    8
    ;; float64 _indi_F
    8
    ;; float64 _hover_percentage
    8
    ;; float64 _thr_scale_compensate
    8
    ;; float64 _voltage
    8
    ;; float64 _ref_v_x
    8
    ;; float64 _ref_v_y
    8
    ;; float64 _ref_v_z
    8
    ;; float64 _ref_a_x
    8
    ;; float64 _ref_a_y
    8
    ;; float64 _ref_a_z
    8
    ;; float64 _ref_j_x
    8
    ;; float64 _ref_j_y
    8
    ;; float64 _ref_j_z
    8
    ;; float64 _ref_s_x
    8
    ;; float64 _ref_s_y
    8
    ;; float64 _ref_s_z
    8
    ;; float64 _x_pos_error
    8
    ;; float64 _y_pos_error
    8
    ;; float64 _z_pos_error
    8
    ;; float64 _x_vel_error
    8
    ;; float64 _y_vel_error
    8
    ;; float64 _z_vel_error
    8
    ;; float64 _ref_thr
    8
    ;; float64 _des_thr
    8
    ;; float64 _est_thr
    8
    ;; float64 _des_torque_x
    8
    ;; float64 _des_torque_y
    8
    ;; float64 _des_torque_z
    8
    ;; float64 _cont_torque_x
    8
    ;; float64 _cont_torque_y
    8
    ;; float64 _cont_torque_z
    8
    ;; float64 _z_jwj
    8
    ;; float64 _fbp_thrust1
    8
    ;; float64 _fbi_thrust1
    8
    ;; float64 _fbp_thrust2
    8
    ;; float64 _fbi_thrust2
    8
    ;; float64 _fbp_thrust3
    8
    ;; float64 _fbi_thrust3
    8
    ;; float64 _fbp_thrust4
    8
    ;; float64 _fbi_thrust4
    8
    ;; float64 _fbp_thrust
    8
    ;; float64 _fbi_thrust
    8
    ;; float64 _fb_thrust
    8
    ;; float64 _rpm_error1
    8
    ;; float64 _rpm_error_sum1
    8
    ;; float64 _rpm_error2
    8
    ;; float64 _rpm_error_sum2
    8
    ;; float64 _rpm_error3
    8
    ;; float64 _rpm_error_sum3
    8
    ;; float64 _rpm_error4
    8
    ;; float64 _rpm_error_sum4
    8
    ;; float64 _rate_error_z
    8
    ;; float64 _rate_error_sum_z
    8
    ;; float64 _fbp_bodyacc_z
    8
    ;; float64 _fbi_bodyacc_z
    8
    ;; float64 _des_est_bodyrates_x
    8
    ;; float64 _des_est_bodyrates_y
    8
    ;; float64 _des_est_bodyrates_z
    8
    ;; float64 _acc_error1
    8
    ;; float64 _acc_error2
    8
    ;; float64 _acc_error3
    8
    ;; float64 _acc_error4
    8
    ;; float64 _acc_errorsum1
    8
    ;; float64 _acc_errorsum2
    8
    ;; float64 _acc_errorsum3
    8
    ;; float64 _acc_errorsum4
    8
    ;; float64 _window_ave1
    8
    ;; float64 _window_ave2
    8
    ;; float64 _window_ave3
    8
    ;; float64 _window_ave4
    8
    ;; float64 _pos_error_all
    8
    ;; float64 _pos_error_xy
    8
    ;; float64 _pos_error_rmse
    8
    ;; float64 _vel_error_all
    8
    ;; float64 _des_v_all
    8
    ;; float64 _ref_bodyrates_x
    8
    ;; float64 _ref_bodyrates_y
    8
    ;; float64 _ref_bodyrates_z
    8
    ;; float64 _extTotalAccIndi_x
    8
    ;; float64 _extTotalAccIndi_y
    8
    ;; float64 _extTotalAccIndi_z
    8
    ;; float64 _aw_x
    8
    ;; float64 _aw_y
    8
    ;; float64 _aw_z
    8
    ;; float64 _fb_a_x_fil
    8
    ;; float64 _fb_a_y_fil
    8
    ;; float64 _fb_a_z_fil
    8
    ;; float64 _extF_psi
    8
    ;; float64 _extF_theta
    8
    ;; float64 _des_Fq_psi
    8
    ;; float64 _des_Fq_theta
    8
    ;; float64 _indi_q_err_ang
    8
    ;; float64 _fb_F_x
    8
    ;; float64 _fb_F_y
    8
    ;; float64 _fb_F_z
    8
    ;; uint8 _flag
    1
    ;; float64 _indi_acc_q_error_x
    8
    ;; float64 _indi_acc_q_error_y
    8
    ;; float64 _indi_acc_q_error_z
    8
    ;; float64 _F_error
    8
    ;; float64 _indi_acc_F_error_x
    8
    ;; float64 _indi_acc_F_error_y
    8
    ;; float64 _indi_acc_F_error_z
    8
    ;; float64 _indiF_x
    8
    ;; float64 _indiF_y
    8
    ;; float64 _indiF_z
    8
    ;; float64 _desFq_x
    8
    ;; float64 _desFq_y
    8
    ;; float64 _desFq_z
    8
    ;; float64 _fb_pv_x
    8
    ;; float64 _fb_pv_y
    8
    ;; float64 _fb_pv_z
    8
    ;; float64 _fb_q_x
    8
    ;; float64 _fb_q_y
    8
    ;; float64 _fb_q_z
    8
    ;; float64 _fb_Fq_x
    8
    ;; float64 _fb_Fq_y
    8
    ;; float64 _fb_Fq_z
    8
    ;; float64 _v_modi_x
    8
    ;; float64 _v_modi_y
    8
    ;; float64 _v_modi_z
    8
    ;; float64 _fb_Fq_error_fil_x
    8
    ;; float64 _fb_Fq_error_fil_y
    8
    ;; float64 _fb_Fq_error_fil_z
    8
    ;; float64 _FUpper
    8
    ;; float64 _FLower
    8
    ;; float64 _ref_rpm1
    8
    ;; float64 _ref_rpm2
    8
    ;; float64 _ref_rpm3
    8
    ;; float64 _ref_rpm4
    8
    ;; float64 _ref_torque_x
    8
    ;; float64 _ref_torque_y
    8
    ;; float64 _ref_torque_z
    8
    ;; float64 _indi_F_Limit
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _fb_a_x
       (sys::poke _fb_a_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _fb_a_y
       (sys::poke _fb_a_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _fb_a_z
       (sys::poke _fb_a_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
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
     ;; float64 _des_q_x
       (sys::poke _des_q_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _des_q_y
       (sys::poke _des_q_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _des_q_z
       (sys::poke _des_q_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _des_q_w
       (sys::poke _des_q_w (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _est_r
       (sys::poke _est_r (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _est_p
       (sys::poke _est_p (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _est_y
       (sys::poke _est_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ref_r
       (sys::poke _ref_r (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ref_p
       (sys::poke _ref_p (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ref_y
       (sys::poke _ref_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _des_r
       (sys::poke _des_r (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _des_p
       (sys::poke _des_p (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _des_y
       (sys::poke _des_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _exec_err_axisang_x
       (sys::poke _exec_err_axisang_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _exec_err_axisang_y
       (sys::poke _exec_err_axisang_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _exec_err_axisang_z
       (sys::poke _exec_err_axisang_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _exec_err_axisang_ang
       (sys::poke _exec_err_axisang_ang (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _fb_axisang_x
       (sys::poke _fb_axisang_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _fb_axisang_y
       (sys::poke _fb_axisang_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _fb_axisang_z
       (sys::poke _fb_axisang_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _fb_axisang_ang
       (sys::poke _fb_axisang_ang (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _fb_rate_x
       (sys::poke _fb_rate_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _fb_rate_y
       (sys::poke _fb_rate_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _fb_rate_z
       (sys::poke _fb_rate_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _des_bodyrates_x
       (sys::poke _des_bodyrates_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _des_bodyrates_y
       (sys::poke _des_bodyrates_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _des_bodyrates_z
       (sys::poke _des_bodyrates_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _des_bodyaccs_x
       (sys::poke _des_bodyaccs_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _des_bodyaccs_y
       (sys::poke _des_bodyaccs_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _des_bodyaccs_z
       (sys::poke _des_bodyaccs_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _imu_af_x
       (sys::poke _imu_af_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _imu_af_y
       (sys::poke _imu_af_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _imu_af_z
       (sys::poke _imu_af_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _imu_wf_x
       (sys::poke _imu_wf_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _imu_wf_y
       (sys::poke _imu_wf_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _imu_wf_z
       (sys::poke _imu_wf_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _imu_dw_x
       (sys::poke _imu_dw_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _imu_dw_y
       (sys::poke _imu_dw_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _imu_dw_z
       (sys::poke _imu_dw_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rpm_f1
       (sys::poke _rpm_f1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rpm_f2
       (sys::poke _rpm_f2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rpm_f3
       (sys::poke _rpm_f3 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rpm_f4
       (sys::poke _rpm_f4 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _cmd_rpm1
       (sys::poke _cmd_rpm1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _cmd_rpm2
       (sys::poke _cmd_rpm2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _cmd_rpm3
       (sys::poke _cmd_rpm3 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _cmd_rpm4
       (sys::poke _cmd_rpm4 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ref_thrust1
       (sys::poke _ref_thrust1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ref_thrust2
       (sys::poke _ref_thrust2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ref_thrust3
       (sys::poke _ref_thrust3 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ref_thrust4
       (sys::poke _ref_thrust4 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _des_rpm_ave
       (sys::poke _des_rpm_ave (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rpm_ave
       (sys::poke _rpm_ave (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _des_yaw
       (sys::poke _des_yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _des_yaw_rate
       (sys::poke _des_yaw_rate (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _des_yaw_acc
       (sys::poke _des_yaw_acc (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _thro1
       (sys::poke _thro1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _thro2
       (sys::poke _thro2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _thro3
       (sys::poke _thro3 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _thro4
       (sys::poke _thro4 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _delta_q_ang
       (sys::poke _delta_q_ang (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _des_q_ang
       (sys::poke _des_q_ang (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _des_F
       (sys::poke _des_F (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _indi_F
       (sys::poke _indi_F (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _hover_percentage
       (sys::poke _hover_percentage (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _thr_scale_compensate
       (sys::poke _thr_scale_compensate (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _voltage
       (sys::poke _voltage (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ref_v_x
       (sys::poke _ref_v_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ref_v_y
       (sys::poke _ref_v_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ref_v_z
       (sys::poke _ref_v_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ref_a_x
       (sys::poke _ref_a_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ref_a_y
       (sys::poke _ref_a_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ref_a_z
       (sys::poke _ref_a_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ref_j_x
       (sys::poke _ref_j_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ref_j_y
       (sys::poke _ref_j_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ref_j_z
       (sys::poke _ref_j_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ref_s_x
       (sys::poke _ref_s_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ref_s_y
       (sys::poke _ref_s_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ref_s_z
       (sys::poke _ref_s_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _x_pos_error
       (sys::poke _x_pos_error (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y_pos_error
       (sys::poke _y_pos_error (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z_pos_error
       (sys::poke _z_pos_error (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _x_vel_error
       (sys::poke _x_vel_error (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y_vel_error
       (sys::poke _y_vel_error (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z_vel_error
       (sys::poke _z_vel_error (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ref_thr
       (sys::poke _ref_thr (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _des_thr
       (sys::poke _des_thr (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _est_thr
       (sys::poke _est_thr (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _des_torque_x
       (sys::poke _des_torque_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _des_torque_y
       (sys::poke _des_torque_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _des_torque_z
       (sys::poke _des_torque_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _cont_torque_x
       (sys::poke _cont_torque_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _cont_torque_y
       (sys::poke _cont_torque_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _cont_torque_z
       (sys::poke _cont_torque_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z_jwj
       (sys::poke _z_jwj (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _fbp_thrust1
       (sys::poke _fbp_thrust1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _fbi_thrust1
       (sys::poke _fbi_thrust1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _fbp_thrust2
       (sys::poke _fbp_thrust2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _fbi_thrust2
       (sys::poke _fbi_thrust2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _fbp_thrust3
       (sys::poke _fbp_thrust3 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _fbi_thrust3
       (sys::poke _fbi_thrust3 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _fbp_thrust4
       (sys::poke _fbp_thrust4 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _fbi_thrust4
       (sys::poke _fbi_thrust4 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _fbp_thrust
       (sys::poke _fbp_thrust (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _fbi_thrust
       (sys::poke _fbi_thrust (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _fb_thrust
       (sys::poke _fb_thrust (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rpm_error1
       (sys::poke _rpm_error1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rpm_error_sum1
       (sys::poke _rpm_error_sum1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rpm_error2
       (sys::poke _rpm_error2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rpm_error_sum2
       (sys::poke _rpm_error_sum2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rpm_error3
       (sys::poke _rpm_error3 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rpm_error_sum3
       (sys::poke _rpm_error_sum3 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rpm_error4
       (sys::poke _rpm_error4 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rpm_error_sum4
       (sys::poke _rpm_error_sum4 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rate_error_z
       (sys::poke _rate_error_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rate_error_sum_z
       (sys::poke _rate_error_sum_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _fbp_bodyacc_z
       (sys::poke _fbp_bodyacc_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _fbi_bodyacc_z
       (sys::poke _fbi_bodyacc_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _des_est_bodyrates_x
       (sys::poke _des_est_bodyrates_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _des_est_bodyrates_y
       (sys::poke _des_est_bodyrates_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _des_est_bodyrates_z
       (sys::poke _des_est_bodyrates_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _acc_error1
       (sys::poke _acc_error1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _acc_error2
       (sys::poke _acc_error2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _acc_error3
       (sys::poke _acc_error3 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _acc_error4
       (sys::poke _acc_error4 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _acc_errorsum1
       (sys::poke _acc_errorsum1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _acc_errorsum2
       (sys::poke _acc_errorsum2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _acc_errorsum3
       (sys::poke _acc_errorsum3 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _acc_errorsum4
       (sys::poke _acc_errorsum4 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _window_ave1
       (sys::poke _window_ave1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _window_ave2
       (sys::poke _window_ave2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _window_ave3
       (sys::poke _window_ave3 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _window_ave4
       (sys::poke _window_ave4 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pos_error_all
       (sys::poke _pos_error_all (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pos_error_xy
       (sys::poke _pos_error_xy (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pos_error_rmse
       (sys::poke _pos_error_rmse (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vel_error_all
       (sys::poke _vel_error_all (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _des_v_all
       (sys::poke _des_v_all (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ref_bodyrates_x
       (sys::poke _ref_bodyrates_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ref_bodyrates_y
       (sys::poke _ref_bodyrates_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ref_bodyrates_z
       (sys::poke _ref_bodyrates_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _extTotalAccIndi_x
       (sys::poke _extTotalAccIndi_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _extTotalAccIndi_y
       (sys::poke _extTotalAccIndi_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _extTotalAccIndi_z
       (sys::poke _extTotalAccIndi_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _aw_x
       (sys::poke _aw_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _aw_y
       (sys::poke _aw_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _aw_z
       (sys::poke _aw_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _fb_a_x_fil
       (sys::poke _fb_a_x_fil (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _fb_a_y_fil
       (sys::poke _fb_a_y_fil (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _fb_a_z_fil
       (sys::poke _fb_a_z_fil (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _extF_psi
       (sys::poke _extF_psi (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _extF_theta
       (sys::poke _extF_theta (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _des_Fq_psi
       (sys::poke _des_Fq_psi (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _des_Fq_theta
       (sys::poke _des_Fq_theta (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _indi_q_err_ang
       (sys::poke _indi_q_err_ang (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _fb_F_x
       (sys::poke _fb_F_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _fb_F_y
       (sys::poke _fb_F_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _fb_F_z
       (sys::poke _fb_F_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _flag
       (write-byte _flag s)
     ;; float64 _indi_acc_q_error_x
       (sys::poke _indi_acc_q_error_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _indi_acc_q_error_y
       (sys::poke _indi_acc_q_error_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _indi_acc_q_error_z
       (sys::poke _indi_acc_q_error_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _F_error
       (sys::poke _F_error (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _indi_acc_F_error_x
       (sys::poke _indi_acc_F_error_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _indi_acc_F_error_y
       (sys::poke _indi_acc_F_error_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _indi_acc_F_error_z
       (sys::poke _indi_acc_F_error_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _indiF_x
       (sys::poke _indiF_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _indiF_y
       (sys::poke _indiF_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _indiF_z
       (sys::poke _indiF_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _desFq_x
       (sys::poke _desFq_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _desFq_y
       (sys::poke _desFq_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _desFq_z
       (sys::poke _desFq_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _fb_pv_x
       (sys::poke _fb_pv_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _fb_pv_y
       (sys::poke _fb_pv_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _fb_pv_z
       (sys::poke _fb_pv_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _fb_q_x
       (sys::poke _fb_q_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _fb_q_y
       (sys::poke _fb_q_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _fb_q_z
       (sys::poke _fb_q_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _fb_Fq_x
       (sys::poke _fb_Fq_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _fb_Fq_y
       (sys::poke _fb_Fq_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _fb_Fq_z
       (sys::poke _fb_Fq_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _v_modi_x
       (sys::poke _v_modi_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _v_modi_y
       (sys::poke _v_modi_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _v_modi_z
       (sys::poke _v_modi_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _fb_Fq_error_fil_x
       (sys::poke _fb_Fq_error_fil_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _fb_Fq_error_fil_y
       (sys::poke _fb_Fq_error_fil_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _fb_Fq_error_fil_z
       (sys::poke _fb_Fq_error_fil_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _FUpper
       (sys::poke _FUpper (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _FLower
       (sys::poke _FLower (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ref_rpm1
       (sys::poke _ref_rpm1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ref_rpm2
       (sys::poke _ref_rpm2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ref_rpm3
       (sys::poke _ref_rpm3 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ref_rpm4
       (sys::poke _ref_rpm4 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ref_torque_x
       (sys::poke _ref_torque_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ref_torque_y
       (sys::poke _ref_torque_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ref_torque_z
       (sys::poke _ref_torque_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _indi_F_Limit
       (sys::poke _indi_F_Limit (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _fb_a_x
     (setq _fb_a_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _fb_a_y
     (setq _fb_a_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _fb_a_z
     (setq _fb_a_z (sys::peek buf ptr- :double)) (incf ptr- 8)
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
   ;; float64 _des_q_x
     (setq _des_q_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _des_q_y
     (setq _des_q_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _des_q_z
     (setq _des_q_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _des_q_w
     (setq _des_q_w (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _est_r
     (setq _est_r (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _est_p
     (setq _est_p (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _est_y
     (setq _est_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ref_r
     (setq _ref_r (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ref_p
     (setq _ref_p (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ref_y
     (setq _ref_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _des_r
     (setq _des_r (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _des_p
     (setq _des_p (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _des_y
     (setq _des_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _exec_err_axisang_x
     (setq _exec_err_axisang_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _exec_err_axisang_y
     (setq _exec_err_axisang_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _exec_err_axisang_z
     (setq _exec_err_axisang_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _exec_err_axisang_ang
     (setq _exec_err_axisang_ang (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _fb_axisang_x
     (setq _fb_axisang_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _fb_axisang_y
     (setq _fb_axisang_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _fb_axisang_z
     (setq _fb_axisang_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _fb_axisang_ang
     (setq _fb_axisang_ang (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _fb_rate_x
     (setq _fb_rate_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _fb_rate_y
     (setq _fb_rate_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _fb_rate_z
     (setq _fb_rate_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _des_bodyrates_x
     (setq _des_bodyrates_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _des_bodyrates_y
     (setq _des_bodyrates_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _des_bodyrates_z
     (setq _des_bodyrates_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _des_bodyaccs_x
     (setq _des_bodyaccs_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _des_bodyaccs_y
     (setq _des_bodyaccs_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _des_bodyaccs_z
     (setq _des_bodyaccs_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _imu_af_x
     (setq _imu_af_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _imu_af_y
     (setq _imu_af_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _imu_af_z
     (setq _imu_af_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _imu_wf_x
     (setq _imu_wf_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _imu_wf_y
     (setq _imu_wf_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _imu_wf_z
     (setq _imu_wf_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _imu_dw_x
     (setq _imu_dw_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _imu_dw_y
     (setq _imu_dw_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _imu_dw_z
     (setq _imu_dw_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rpm_f1
     (setq _rpm_f1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rpm_f2
     (setq _rpm_f2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rpm_f3
     (setq _rpm_f3 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rpm_f4
     (setq _rpm_f4 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _cmd_rpm1
     (setq _cmd_rpm1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _cmd_rpm2
     (setq _cmd_rpm2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _cmd_rpm3
     (setq _cmd_rpm3 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _cmd_rpm4
     (setq _cmd_rpm4 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ref_thrust1
     (setq _ref_thrust1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ref_thrust2
     (setq _ref_thrust2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ref_thrust3
     (setq _ref_thrust3 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ref_thrust4
     (setq _ref_thrust4 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _des_rpm_ave
     (setq _des_rpm_ave (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rpm_ave
     (setq _rpm_ave (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _des_yaw
     (setq _des_yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _des_yaw_rate
     (setq _des_yaw_rate (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _des_yaw_acc
     (setq _des_yaw_acc (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _thro1
     (setq _thro1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _thro2
     (setq _thro2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _thro3
     (setq _thro3 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _thro4
     (setq _thro4 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _delta_q_ang
     (setq _delta_q_ang (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _des_q_ang
     (setq _des_q_ang (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _des_F
     (setq _des_F (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _indi_F
     (setq _indi_F (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _hover_percentage
     (setq _hover_percentage (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _thr_scale_compensate
     (setq _thr_scale_compensate (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _voltage
     (setq _voltage (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ref_v_x
     (setq _ref_v_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ref_v_y
     (setq _ref_v_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ref_v_z
     (setq _ref_v_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ref_a_x
     (setq _ref_a_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ref_a_y
     (setq _ref_a_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ref_a_z
     (setq _ref_a_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ref_j_x
     (setq _ref_j_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ref_j_y
     (setq _ref_j_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ref_j_z
     (setq _ref_j_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ref_s_x
     (setq _ref_s_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ref_s_y
     (setq _ref_s_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ref_s_z
     (setq _ref_s_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _x_pos_error
     (setq _x_pos_error (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y_pos_error
     (setq _y_pos_error (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z_pos_error
     (setq _z_pos_error (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _x_vel_error
     (setq _x_vel_error (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y_vel_error
     (setq _y_vel_error (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z_vel_error
     (setq _z_vel_error (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ref_thr
     (setq _ref_thr (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _des_thr
     (setq _des_thr (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _est_thr
     (setq _est_thr (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _des_torque_x
     (setq _des_torque_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _des_torque_y
     (setq _des_torque_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _des_torque_z
     (setq _des_torque_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _cont_torque_x
     (setq _cont_torque_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _cont_torque_y
     (setq _cont_torque_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _cont_torque_z
     (setq _cont_torque_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z_jwj
     (setq _z_jwj (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _fbp_thrust1
     (setq _fbp_thrust1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _fbi_thrust1
     (setq _fbi_thrust1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _fbp_thrust2
     (setq _fbp_thrust2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _fbi_thrust2
     (setq _fbi_thrust2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _fbp_thrust3
     (setq _fbp_thrust3 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _fbi_thrust3
     (setq _fbi_thrust3 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _fbp_thrust4
     (setq _fbp_thrust4 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _fbi_thrust4
     (setq _fbi_thrust4 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _fbp_thrust
     (setq _fbp_thrust (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _fbi_thrust
     (setq _fbi_thrust (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _fb_thrust
     (setq _fb_thrust (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rpm_error1
     (setq _rpm_error1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rpm_error_sum1
     (setq _rpm_error_sum1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rpm_error2
     (setq _rpm_error2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rpm_error_sum2
     (setq _rpm_error_sum2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rpm_error3
     (setq _rpm_error3 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rpm_error_sum3
     (setq _rpm_error_sum3 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rpm_error4
     (setq _rpm_error4 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rpm_error_sum4
     (setq _rpm_error_sum4 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rate_error_z
     (setq _rate_error_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rate_error_sum_z
     (setq _rate_error_sum_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _fbp_bodyacc_z
     (setq _fbp_bodyacc_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _fbi_bodyacc_z
     (setq _fbi_bodyacc_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _des_est_bodyrates_x
     (setq _des_est_bodyrates_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _des_est_bodyrates_y
     (setq _des_est_bodyrates_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _des_est_bodyrates_z
     (setq _des_est_bodyrates_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _acc_error1
     (setq _acc_error1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _acc_error2
     (setq _acc_error2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _acc_error3
     (setq _acc_error3 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _acc_error4
     (setq _acc_error4 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _acc_errorsum1
     (setq _acc_errorsum1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _acc_errorsum2
     (setq _acc_errorsum2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _acc_errorsum3
     (setq _acc_errorsum3 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _acc_errorsum4
     (setq _acc_errorsum4 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _window_ave1
     (setq _window_ave1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _window_ave2
     (setq _window_ave2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _window_ave3
     (setq _window_ave3 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _window_ave4
     (setq _window_ave4 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pos_error_all
     (setq _pos_error_all (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pos_error_xy
     (setq _pos_error_xy (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pos_error_rmse
     (setq _pos_error_rmse (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vel_error_all
     (setq _vel_error_all (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _des_v_all
     (setq _des_v_all (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ref_bodyrates_x
     (setq _ref_bodyrates_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ref_bodyrates_y
     (setq _ref_bodyrates_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ref_bodyrates_z
     (setq _ref_bodyrates_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _extTotalAccIndi_x
     (setq _extTotalAccIndi_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _extTotalAccIndi_y
     (setq _extTotalAccIndi_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _extTotalAccIndi_z
     (setq _extTotalAccIndi_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _aw_x
     (setq _aw_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _aw_y
     (setq _aw_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _aw_z
     (setq _aw_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _fb_a_x_fil
     (setq _fb_a_x_fil (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _fb_a_y_fil
     (setq _fb_a_y_fil (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _fb_a_z_fil
     (setq _fb_a_z_fil (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _extF_psi
     (setq _extF_psi (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _extF_theta
     (setq _extF_theta (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _des_Fq_psi
     (setq _des_Fq_psi (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _des_Fq_theta
     (setq _des_Fq_theta (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _indi_q_err_ang
     (setq _indi_q_err_ang (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _fb_F_x
     (setq _fb_F_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _fb_F_y
     (setq _fb_F_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _fb_F_z
     (setq _fb_F_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _flag
     (setq _flag (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _indi_acc_q_error_x
     (setq _indi_acc_q_error_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _indi_acc_q_error_y
     (setq _indi_acc_q_error_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _indi_acc_q_error_z
     (setq _indi_acc_q_error_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _F_error
     (setq _F_error (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _indi_acc_F_error_x
     (setq _indi_acc_F_error_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _indi_acc_F_error_y
     (setq _indi_acc_F_error_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _indi_acc_F_error_z
     (setq _indi_acc_F_error_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _indiF_x
     (setq _indiF_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _indiF_y
     (setq _indiF_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _indiF_z
     (setq _indiF_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _desFq_x
     (setq _desFq_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _desFq_y
     (setq _desFq_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _desFq_z
     (setq _desFq_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _fb_pv_x
     (setq _fb_pv_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _fb_pv_y
     (setq _fb_pv_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _fb_pv_z
     (setq _fb_pv_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _fb_q_x
     (setq _fb_q_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _fb_q_y
     (setq _fb_q_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _fb_q_z
     (setq _fb_q_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _fb_Fq_x
     (setq _fb_Fq_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _fb_Fq_y
     (setq _fb_Fq_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _fb_Fq_z
     (setq _fb_Fq_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _v_modi_x
     (setq _v_modi_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _v_modi_y
     (setq _v_modi_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _v_modi_z
     (setq _v_modi_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _fb_Fq_error_fil_x
     (setq _fb_Fq_error_fil_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _fb_Fq_error_fil_y
     (setq _fb_Fq_error_fil_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _fb_Fq_error_fil_z
     (setq _fb_Fq_error_fil_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _FUpper
     (setq _FUpper (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _FLower
     (setq _FLower (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ref_rpm1
     (setq _ref_rpm1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ref_rpm2
     (setq _ref_rpm2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ref_rpm3
     (setq _ref_rpm3 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ref_rpm4
     (setq _ref_rpm4 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ref_torque_x
     (setq _ref_torque_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ref_torque_y
     (setq _ref_torque_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ref_torque_z
     (setq _ref_torque_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _indi_F_Limit
     (setq _indi_F_Limit (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get quadrotor_msgs::Px4ctrlDebug :md5sum-) "167f6f78f3c36c3f21cf2931478abb8f")
(setf (get quadrotor_msgs::Px4ctrlDebug :datatype-) "quadrotor_msgs/Px4ctrlDebug")
(setf (get quadrotor_msgs::Px4ctrlDebug :definition-)
      "Header header



float64 fb_a_x
float64 fb_a_y
float64 fb_a_z

float64 des_p_x
float64 des_p_y
float64 des_p_z

float64 des_v_x
float64 des_v_y
float64 des_v_z

float64 des_a_x
float64 des_a_y
float64 des_a_z


float64 des_q_x
float64 des_q_y
float64 des_q_z
float64 des_q_w

float64 est_r
float64 est_p
float64 est_y

float64 ref_r
float64 ref_p
float64 ref_y

float64 des_r
float64 des_p
float64 des_y

float64 exec_err_axisang_x
float64 exec_err_axisang_y
float64 exec_err_axisang_z
float64 exec_err_axisang_ang

float64 fb_axisang_x
float64 fb_axisang_y
float64 fb_axisang_z
float64 fb_axisang_ang

float64 fb_rate_x
float64 fb_rate_y
float64 fb_rate_z

float64 des_bodyrates_x
float64 des_bodyrates_y
float64 des_bodyrates_z

float64 des_bodyaccs_x
float64 des_bodyaccs_y
float64 des_bodyaccs_z

float64 imu_af_x
float64 imu_af_y
float64 imu_af_z

float64 imu_wf_x
float64 imu_wf_y
float64 imu_wf_z

float64 imu_dw_x
float64 imu_dw_y
float64 imu_dw_z

float64 rpm_f1
float64 rpm_f2
float64 rpm_f3
float64 rpm_f4

float64 cmd_rpm1
float64 cmd_rpm2
float64 cmd_rpm3
float64 cmd_rpm4

float64 ref_thrust1
float64 ref_thrust2
float64 ref_thrust3
float64 ref_thrust4

float64 des_rpm_ave
float64 rpm_ave

float64 des_yaw
float64 des_yaw_rate
float64 des_yaw_acc

float64 thro1
float64 thro2
float64 thro3
float64 thro4

float64 delta_q_ang
float64 des_q_ang
float64 des_F
float64 indi_F
float64 hover_percentage
float64 thr_scale_compensate
float64 voltage

float64 ref_v_x
float64 ref_v_y
float64 ref_v_z

float64 ref_a_x
float64 ref_a_y
float64 ref_a_z

float64 ref_j_x
float64 ref_j_y
float64 ref_j_z

float64 ref_s_x
float64 ref_s_y
float64 ref_s_z

float64 x_pos_error
float64 y_pos_error 
float64 z_pos_error 
float64 x_vel_error 
float64 y_vel_error 
float64 z_vel_error 
float64 ref_thr
float64 des_thr
float64 est_thr
float64 des_torque_x
float64 des_torque_y
float64 des_torque_z
float64 cont_torque_x
float64 cont_torque_y
float64 cont_torque_z
float64 z_jwj

float64 fbp_thrust1
float64 fbi_thrust1
float64 fbp_thrust2
float64 fbi_thrust2
float64 fbp_thrust3
float64 fbi_thrust3
float64 fbp_thrust4
float64 fbi_thrust4

float64 fbp_thrust
float64 fbi_thrust
float64 fb_thrust

float64 rpm_error1
float64 rpm_error_sum1
float64 rpm_error2
float64 rpm_error_sum2
float64 rpm_error3
float64 rpm_error_sum3
float64 rpm_error4
float64 rpm_error_sum4

float64 rate_error_z
float64 rate_error_sum_z

float64 fbp_bodyacc_z
float64 fbi_bodyacc_z

float64 des_est_bodyrates_x
float64 des_est_bodyrates_y
float64 des_est_bodyrates_z


float64 acc_error1
float64 acc_error2
float64 acc_error3
float64 acc_error4

float64 acc_errorsum1
float64 acc_errorsum2
float64 acc_errorsum3
float64 acc_errorsum4

float64 window_ave1
float64 window_ave2
float64 window_ave3
float64 window_ave4

float64 pos_error_all
float64 pos_error_xy
float64 pos_error_rmse
float64 vel_error_all
float64 des_v_all

float64 ref_bodyrates_x
float64 ref_bodyrates_y
float64 ref_bodyrates_z

float64 extTotalAccIndi_x
float64 extTotalAccIndi_y
float64 extTotalAccIndi_z

float64 aw_x
float64 aw_y
float64 aw_z

float64 fb_a_x_fil
float64 fb_a_y_fil
float64 fb_a_z_fil

float64 extF_psi
float64 extF_theta

float64 des_Fq_psi
float64 des_Fq_theta

float64 indi_q_err_ang

float64 fb_F_x
float64 fb_F_y
float64 fb_F_z

uint8 flag

float64 indi_acc_q_error_x
float64 indi_acc_q_error_y
float64 indi_acc_q_error_z
float64 F_error

float64 indi_acc_F_error_x
float64 indi_acc_F_error_y
float64 indi_acc_F_error_z

float64 indiF_x
float64 indiF_y
float64 indiF_z

float64 desFq_x
float64 desFq_y
float64 desFq_z

float64 fb_pv_x
float64 fb_pv_y
float64 fb_pv_z

float64 fb_q_x
float64 fb_q_y
float64 fb_q_z

float64 fb_Fq_x
float64 fb_Fq_y
float64 fb_Fq_z

float64 v_modi_x
float64 v_modi_y
float64 v_modi_z

float64 fb_Fq_error_fil_x
float64 fb_Fq_error_fil_y
float64 fb_Fq_error_fil_z

float64 FUpper
float64 FLower
float64 ref_rpm1
float64 ref_rpm2
float64 ref_rpm3
float64 ref_rpm4
float64 ref_torque_x
float64 ref_torque_y
float64 ref_torque_z
float64 indi_F_Limit

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



(provide :quadrotor_msgs/Px4ctrlDebug "167f6f78f3c36c3f21cf2931478abb8f")


