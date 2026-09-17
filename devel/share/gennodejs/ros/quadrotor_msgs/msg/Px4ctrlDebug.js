// Auto-generated. Do not edit!

// (in-package quadrotor_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Px4ctrlDebug {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.fb_a_x = null;
      this.fb_a_y = null;
      this.fb_a_z = null;
      this.des_p_x = null;
      this.des_p_y = null;
      this.des_p_z = null;
      this.des_v_x = null;
      this.des_v_y = null;
      this.des_v_z = null;
      this.des_a_x = null;
      this.des_a_y = null;
      this.des_a_z = null;
      this.des_q_x = null;
      this.des_q_y = null;
      this.des_q_z = null;
      this.des_q_w = null;
      this.est_r = null;
      this.est_p = null;
      this.est_y = null;
      this.ref_r = null;
      this.ref_p = null;
      this.ref_y = null;
      this.des_r = null;
      this.des_p = null;
      this.des_y = null;
      this.exec_err_axisang_x = null;
      this.exec_err_axisang_y = null;
      this.exec_err_axisang_z = null;
      this.exec_err_axisang_ang = null;
      this.fb_axisang_x = null;
      this.fb_axisang_y = null;
      this.fb_axisang_z = null;
      this.fb_axisang_ang = null;
      this.fb_rate_x = null;
      this.fb_rate_y = null;
      this.fb_rate_z = null;
      this.des_bodyrates_x = null;
      this.des_bodyrates_y = null;
      this.des_bodyrates_z = null;
      this.des_bodyaccs_x = null;
      this.des_bodyaccs_y = null;
      this.des_bodyaccs_z = null;
      this.imu_af_x = null;
      this.imu_af_y = null;
      this.imu_af_z = null;
      this.imu_wf_x = null;
      this.imu_wf_y = null;
      this.imu_wf_z = null;
      this.imu_dw_x = null;
      this.imu_dw_y = null;
      this.imu_dw_z = null;
      this.rpm_f1 = null;
      this.rpm_f2 = null;
      this.rpm_f3 = null;
      this.rpm_f4 = null;
      this.cmd_rpm1 = null;
      this.cmd_rpm2 = null;
      this.cmd_rpm3 = null;
      this.cmd_rpm4 = null;
      this.ref_thrust1 = null;
      this.ref_thrust2 = null;
      this.ref_thrust3 = null;
      this.ref_thrust4 = null;
      this.des_rpm_ave = null;
      this.rpm_ave = null;
      this.des_yaw = null;
      this.des_yaw_rate = null;
      this.des_yaw_acc = null;
      this.thro1 = null;
      this.thro2 = null;
      this.thro3 = null;
      this.thro4 = null;
      this.delta_q_ang = null;
      this.des_q_ang = null;
      this.des_F = null;
      this.indi_F = null;
      this.hover_percentage = null;
      this.thr_scale_compensate = null;
      this.voltage = null;
      this.ref_v_x = null;
      this.ref_v_y = null;
      this.ref_v_z = null;
      this.ref_a_x = null;
      this.ref_a_y = null;
      this.ref_a_z = null;
      this.ref_j_x = null;
      this.ref_j_y = null;
      this.ref_j_z = null;
      this.ref_s_x = null;
      this.ref_s_y = null;
      this.ref_s_z = null;
      this.x_pos_error = null;
      this.y_pos_error = null;
      this.z_pos_error = null;
      this.x_vel_error = null;
      this.y_vel_error = null;
      this.z_vel_error = null;
      this.ref_thr = null;
      this.des_thr = null;
      this.est_thr = null;
      this.des_torque_x = null;
      this.des_torque_y = null;
      this.des_torque_z = null;
      this.cont_torque_x = null;
      this.cont_torque_y = null;
      this.cont_torque_z = null;
      this.z_jwj = null;
      this.fbp_thrust1 = null;
      this.fbi_thrust1 = null;
      this.fbp_thrust2 = null;
      this.fbi_thrust2 = null;
      this.fbp_thrust3 = null;
      this.fbi_thrust3 = null;
      this.fbp_thrust4 = null;
      this.fbi_thrust4 = null;
      this.fbp_thrust = null;
      this.fbi_thrust = null;
      this.fb_thrust = null;
      this.rpm_error1 = null;
      this.rpm_error_sum1 = null;
      this.rpm_error2 = null;
      this.rpm_error_sum2 = null;
      this.rpm_error3 = null;
      this.rpm_error_sum3 = null;
      this.rpm_error4 = null;
      this.rpm_error_sum4 = null;
      this.rate_error_z = null;
      this.rate_error_sum_z = null;
      this.fbp_bodyacc_z = null;
      this.fbi_bodyacc_z = null;
      this.des_est_bodyrates_x = null;
      this.des_est_bodyrates_y = null;
      this.des_est_bodyrates_z = null;
      this.acc_error1 = null;
      this.acc_error2 = null;
      this.acc_error3 = null;
      this.acc_error4 = null;
      this.acc_errorsum1 = null;
      this.acc_errorsum2 = null;
      this.acc_errorsum3 = null;
      this.acc_errorsum4 = null;
      this.window_ave1 = null;
      this.window_ave2 = null;
      this.window_ave3 = null;
      this.window_ave4 = null;
      this.pos_error_all = null;
      this.pos_error_xy = null;
      this.pos_error_rmse = null;
      this.vel_error_all = null;
      this.des_v_all = null;
      this.ref_bodyrates_x = null;
      this.ref_bodyrates_y = null;
      this.ref_bodyrates_z = null;
      this.extTotalAccIndi_x = null;
      this.extTotalAccIndi_y = null;
      this.extTotalAccIndi_z = null;
      this.aw_x = null;
      this.aw_y = null;
      this.aw_z = null;
      this.fb_a_x_fil = null;
      this.fb_a_y_fil = null;
      this.fb_a_z_fil = null;
      this.extF_psi = null;
      this.extF_theta = null;
      this.des_Fq_psi = null;
      this.des_Fq_theta = null;
      this.indi_q_err_ang = null;
      this.fb_F_x = null;
      this.fb_F_y = null;
      this.fb_F_z = null;
      this.flag = null;
      this.indi_acc_q_error_x = null;
      this.indi_acc_q_error_y = null;
      this.indi_acc_q_error_z = null;
      this.F_error = null;
      this.indi_acc_F_error_x = null;
      this.indi_acc_F_error_y = null;
      this.indi_acc_F_error_z = null;
      this.indiF_x = null;
      this.indiF_y = null;
      this.indiF_z = null;
      this.desFq_x = null;
      this.desFq_y = null;
      this.desFq_z = null;
      this.fb_pv_x = null;
      this.fb_pv_y = null;
      this.fb_pv_z = null;
      this.fb_q_x = null;
      this.fb_q_y = null;
      this.fb_q_z = null;
      this.fb_Fq_x = null;
      this.fb_Fq_y = null;
      this.fb_Fq_z = null;
      this.v_modi_x = null;
      this.v_modi_y = null;
      this.v_modi_z = null;
      this.fb_Fq_error_fil_x = null;
      this.fb_Fq_error_fil_y = null;
      this.fb_Fq_error_fil_z = null;
      this.FUpper = null;
      this.FLower = null;
      this.ref_rpm1 = null;
      this.ref_rpm2 = null;
      this.ref_rpm3 = null;
      this.ref_rpm4 = null;
      this.ref_torque_x = null;
      this.ref_torque_y = null;
      this.ref_torque_z = null;
      this.indi_F_Limit = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('fb_a_x')) {
        this.fb_a_x = initObj.fb_a_x
      }
      else {
        this.fb_a_x = 0.0;
      }
      if (initObj.hasOwnProperty('fb_a_y')) {
        this.fb_a_y = initObj.fb_a_y
      }
      else {
        this.fb_a_y = 0.0;
      }
      if (initObj.hasOwnProperty('fb_a_z')) {
        this.fb_a_z = initObj.fb_a_z
      }
      else {
        this.fb_a_z = 0.0;
      }
      if (initObj.hasOwnProperty('des_p_x')) {
        this.des_p_x = initObj.des_p_x
      }
      else {
        this.des_p_x = 0.0;
      }
      if (initObj.hasOwnProperty('des_p_y')) {
        this.des_p_y = initObj.des_p_y
      }
      else {
        this.des_p_y = 0.0;
      }
      if (initObj.hasOwnProperty('des_p_z')) {
        this.des_p_z = initObj.des_p_z
      }
      else {
        this.des_p_z = 0.0;
      }
      if (initObj.hasOwnProperty('des_v_x')) {
        this.des_v_x = initObj.des_v_x
      }
      else {
        this.des_v_x = 0.0;
      }
      if (initObj.hasOwnProperty('des_v_y')) {
        this.des_v_y = initObj.des_v_y
      }
      else {
        this.des_v_y = 0.0;
      }
      if (initObj.hasOwnProperty('des_v_z')) {
        this.des_v_z = initObj.des_v_z
      }
      else {
        this.des_v_z = 0.0;
      }
      if (initObj.hasOwnProperty('des_a_x')) {
        this.des_a_x = initObj.des_a_x
      }
      else {
        this.des_a_x = 0.0;
      }
      if (initObj.hasOwnProperty('des_a_y')) {
        this.des_a_y = initObj.des_a_y
      }
      else {
        this.des_a_y = 0.0;
      }
      if (initObj.hasOwnProperty('des_a_z')) {
        this.des_a_z = initObj.des_a_z
      }
      else {
        this.des_a_z = 0.0;
      }
      if (initObj.hasOwnProperty('des_q_x')) {
        this.des_q_x = initObj.des_q_x
      }
      else {
        this.des_q_x = 0.0;
      }
      if (initObj.hasOwnProperty('des_q_y')) {
        this.des_q_y = initObj.des_q_y
      }
      else {
        this.des_q_y = 0.0;
      }
      if (initObj.hasOwnProperty('des_q_z')) {
        this.des_q_z = initObj.des_q_z
      }
      else {
        this.des_q_z = 0.0;
      }
      if (initObj.hasOwnProperty('des_q_w')) {
        this.des_q_w = initObj.des_q_w
      }
      else {
        this.des_q_w = 0.0;
      }
      if (initObj.hasOwnProperty('est_r')) {
        this.est_r = initObj.est_r
      }
      else {
        this.est_r = 0.0;
      }
      if (initObj.hasOwnProperty('est_p')) {
        this.est_p = initObj.est_p
      }
      else {
        this.est_p = 0.0;
      }
      if (initObj.hasOwnProperty('est_y')) {
        this.est_y = initObj.est_y
      }
      else {
        this.est_y = 0.0;
      }
      if (initObj.hasOwnProperty('ref_r')) {
        this.ref_r = initObj.ref_r
      }
      else {
        this.ref_r = 0.0;
      }
      if (initObj.hasOwnProperty('ref_p')) {
        this.ref_p = initObj.ref_p
      }
      else {
        this.ref_p = 0.0;
      }
      if (initObj.hasOwnProperty('ref_y')) {
        this.ref_y = initObj.ref_y
      }
      else {
        this.ref_y = 0.0;
      }
      if (initObj.hasOwnProperty('des_r')) {
        this.des_r = initObj.des_r
      }
      else {
        this.des_r = 0.0;
      }
      if (initObj.hasOwnProperty('des_p')) {
        this.des_p = initObj.des_p
      }
      else {
        this.des_p = 0.0;
      }
      if (initObj.hasOwnProperty('des_y')) {
        this.des_y = initObj.des_y
      }
      else {
        this.des_y = 0.0;
      }
      if (initObj.hasOwnProperty('exec_err_axisang_x')) {
        this.exec_err_axisang_x = initObj.exec_err_axisang_x
      }
      else {
        this.exec_err_axisang_x = 0.0;
      }
      if (initObj.hasOwnProperty('exec_err_axisang_y')) {
        this.exec_err_axisang_y = initObj.exec_err_axisang_y
      }
      else {
        this.exec_err_axisang_y = 0.0;
      }
      if (initObj.hasOwnProperty('exec_err_axisang_z')) {
        this.exec_err_axisang_z = initObj.exec_err_axisang_z
      }
      else {
        this.exec_err_axisang_z = 0.0;
      }
      if (initObj.hasOwnProperty('exec_err_axisang_ang')) {
        this.exec_err_axisang_ang = initObj.exec_err_axisang_ang
      }
      else {
        this.exec_err_axisang_ang = 0.0;
      }
      if (initObj.hasOwnProperty('fb_axisang_x')) {
        this.fb_axisang_x = initObj.fb_axisang_x
      }
      else {
        this.fb_axisang_x = 0.0;
      }
      if (initObj.hasOwnProperty('fb_axisang_y')) {
        this.fb_axisang_y = initObj.fb_axisang_y
      }
      else {
        this.fb_axisang_y = 0.0;
      }
      if (initObj.hasOwnProperty('fb_axisang_z')) {
        this.fb_axisang_z = initObj.fb_axisang_z
      }
      else {
        this.fb_axisang_z = 0.0;
      }
      if (initObj.hasOwnProperty('fb_axisang_ang')) {
        this.fb_axisang_ang = initObj.fb_axisang_ang
      }
      else {
        this.fb_axisang_ang = 0.0;
      }
      if (initObj.hasOwnProperty('fb_rate_x')) {
        this.fb_rate_x = initObj.fb_rate_x
      }
      else {
        this.fb_rate_x = 0.0;
      }
      if (initObj.hasOwnProperty('fb_rate_y')) {
        this.fb_rate_y = initObj.fb_rate_y
      }
      else {
        this.fb_rate_y = 0.0;
      }
      if (initObj.hasOwnProperty('fb_rate_z')) {
        this.fb_rate_z = initObj.fb_rate_z
      }
      else {
        this.fb_rate_z = 0.0;
      }
      if (initObj.hasOwnProperty('des_bodyrates_x')) {
        this.des_bodyrates_x = initObj.des_bodyrates_x
      }
      else {
        this.des_bodyrates_x = 0.0;
      }
      if (initObj.hasOwnProperty('des_bodyrates_y')) {
        this.des_bodyrates_y = initObj.des_bodyrates_y
      }
      else {
        this.des_bodyrates_y = 0.0;
      }
      if (initObj.hasOwnProperty('des_bodyrates_z')) {
        this.des_bodyrates_z = initObj.des_bodyrates_z
      }
      else {
        this.des_bodyrates_z = 0.0;
      }
      if (initObj.hasOwnProperty('des_bodyaccs_x')) {
        this.des_bodyaccs_x = initObj.des_bodyaccs_x
      }
      else {
        this.des_bodyaccs_x = 0.0;
      }
      if (initObj.hasOwnProperty('des_bodyaccs_y')) {
        this.des_bodyaccs_y = initObj.des_bodyaccs_y
      }
      else {
        this.des_bodyaccs_y = 0.0;
      }
      if (initObj.hasOwnProperty('des_bodyaccs_z')) {
        this.des_bodyaccs_z = initObj.des_bodyaccs_z
      }
      else {
        this.des_bodyaccs_z = 0.0;
      }
      if (initObj.hasOwnProperty('imu_af_x')) {
        this.imu_af_x = initObj.imu_af_x
      }
      else {
        this.imu_af_x = 0.0;
      }
      if (initObj.hasOwnProperty('imu_af_y')) {
        this.imu_af_y = initObj.imu_af_y
      }
      else {
        this.imu_af_y = 0.0;
      }
      if (initObj.hasOwnProperty('imu_af_z')) {
        this.imu_af_z = initObj.imu_af_z
      }
      else {
        this.imu_af_z = 0.0;
      }
      if (initObj.hasOwnProperty('imu_wf_x')) {
        this.imu_wf_x = initObj.imu_wf_x
      }
      else {
        this.imu_wf_x = 0.0;
      }
      if (initObj.hasOwnProperty('imu_wf_y')) {
        this.imu_wf_y = initObj.imu_wf_y
      }
      else {
        this.imu_wf_y = 0.0;
      }
      if (initObj.hasOwnProperty('imu_wf_z')) {
        this.imu_wf_z = initObj.imu_wf_z
      }
      else {
        this.imu_wf_z = 0.0;
      }
      if (initObj.hasOwnProperty('imu_dw_x')) {
        this.imu_dw_x = initObj.imu_dw_x
      }
      else {
        this.imu_dw_x = 0.0;
      }
      if (initObj.hasOwnProperty('imu_dw_y')) {
        this.imu_dw_y = initObj.imu_dw_y
      }
      else {
        this.imu_dw_y = 0.0;
      }
      if (initObj.hasOwnProperty('imu_dw_z')) {
        this.imu_dw_z = initObj.imu_dw_z
      }
      else {
        this.imu_dw_z = 0.0;
      }
      if (initObj.hasOwnProperty('rpm_f1')) {
        this.rpm_f1 = initObj.rpm_f1
      }
      else {
        this.rpm_f1 = 0.0;
      }
      if (initObj.hasOwnProperty('rpm_f2')) {
        this.rpm_f2 = initObj.rpm_f2
      }
      else {
        this.rpm_f2 = 0.0;
      }
      if (initObj.hasOwnProperty('rpm_f3')) {
        this.rpm_f3 = initObj.rpm_f3
      }
      else {
        this.rpm_f3 = 0.0;
      }
      if (initObj.hasOwnProperty('rpm_f4')) {
        this.rpm_f4 = initObj.rpm_f4
      }
      else {
        this.rpm_f4 = 0.0;
      }
      if (initObj.hasOwnProperty('cmd_rpm1')) {
        this.cmd_rpm1 = initObj.cmd_rpm1
      }
      else {
        this.cmd_rpm1 = 0.0;
      }
      if (initObj.hasOwnProperty('cmd_rpm2')) {
        this.cmd_rpm2 = initObj.cmd_rpm2
      }
      else {
        this.cmd_rpm2 = 0.0;
      }
      if (initObj.hasOwnProperty('cmd_rpm3')) {
        this.cmd_rpm3 = initObj.cmd_rpm3
      }
      else {
        this.cmd_rpm3 = 0.0;
      }
      if (initObj.hasOwnProperty('cmd_rpm4')) {
        this.cmd_rpm4 = initObj.cmd_rpm4
      }
      else {
        this.cmd_rpm4 = 0.0;
      }
      if (initObj.hasOwnProperty('ref_thrust1')) {
        this.ref_thrust1 = initObj.ref_thrust1
      }
      else {
        this.ref_thrust1 = 0.0;
      }
      if (initObj.hasOwnProperty('ref_thrust2')) {
        this.ref_thrust2 = initObj.ref_thrust2
      }
      else {
        this.ref_thrust2 = 0.0;
      }
      if (initObj.hasOwnProperty('ref_thrust3')) {
        this.ref_thrust3 = initObj.ref_thrust3
      }
      else {
        this.ref_thrust3 = 0.0;
      }
      if (initObj.hasOwnProperty('ref_thrust4')) {
        this.ref_thrust4 = initObj.ref_thrust4
      }
      else {
        this.ref_thrust4 = 0.0;
      }
      if (initObj.hasOwnProperty('des_rpm_ave')) {
        this.des_rpm_ave = initObj.des_rpm_ave
      }
      else {
        this.des_rpm_ave = 0.0;
      }
      if (initObj.hasOwnProperty('rpm_ave')) {
        this.rpm_ave = initObj.rpm_ave
      }
      else {
        this.rpm_ave = 0.0;
      }
      if (initObj.hasOwnProperty('des_yaw')) {
        this.des_yaw = initObj.des_yaw
      }
      else {
        this.des_yaw = 0.0;
      }
      if (initObj.hasOwnProperty('des_yaw_rate')) {
        this.des_yaw_rate = initObj.des_yaw_rate
      }
      else {
        this.des_yaw_rate = 0.0;
      }
      if (initObj.hasOwnProperty('des_yaw_acc')) {
        this.des_yaw_acc = initObj.des_yaw_acc
      }
      else {
        this.des_yaw_acc = 0.0;
      }
      if (initObj.hasOwnProperty('thro1')) {
        this.thro1 = initObj.thro1
      }
      else {
        this.thro1 = 0.0;
      }
      if (initObj.hasOwnProperty('thro2')) {
        this.thro2 = initObj.thro2
      }
      else {
        this.thro2 = 0.0;
      }
      if (initObj.hasOwnProperty('thro3')) {
        this.thro3 = initObj.thro3
      }
      else {
        this.thro3 = 0.0;
      }
      if (initObj.hasOwnProperty('thro4')) {
        this.thro4 = initObj.thro4
      }
      else {
        this.thro4 = 0.0;
      }
      if (initObj.hasOwnProperty('delta_q_ang')) {
        this.delta_q_ang = initObj.delta_q_ang
      }
      else {
        this.delta_q_ang = 0.0;
      }
      if (initObj.hasOwnProperty('des_q_ang')) {
        this.des_q_ang = initObj.des_q_ang
      }
      else {
        this.des_q_ang = 0.0;
      }
      if (initObj.hasOwnProperty('des_F')) {
        this.des_F = initObj.des_F
      }
      else {
        this.des_F = 0.0;
      }
      if (initObj.hasOwnProperty('indi_F')) {
        this.indi_F = initObj.indi_F
      }
      else {
        this.indi_F = 0.0;
      }
      if (initObj.hasOwnProperty('hover_percentage')) {
        this.hover_percentage = initObj.hover_percentage
      }
      else {
        this.hover_percentage = 0.0;
      }
      if (initObj.hasOwnProperty('thr_scale_compensate')) {
        this.thr_scale_compensate = initObj.thr_scale_compensate
      }
      else {
        this.thr_scale_compensate = 0.0;
      }
      if (initObj.hasOwnProperty('voltage')) {
        this.voltage = initObj.voltage
      }
      else {
        this.voltage = 0.0;
      }
      if (initObj.hasOwnProperty('ref_v_x')) {
        this.ref_v_x = initObj.ref_v_x
      }
      else {
        this.ref_v_x = 0.0;
      }
      if (initObj.hasOwnProperty('ref_v_y')) {
        this.ref_v_y = initObj.ref_v_y
      }
      else {
        this.ref_v_y = 0.0;
      }
      if (initObj.hasOwnProperty('ref_v_z')) {
        this.ref_v_z = initObj.ref_v_z
      }
      else {
        this.ref_v_z = 0.0;
      }
      if (initObj.hasOwnProperty('ref_a_x')) {
        this.ref_a_x = initObj.ref_a_x
      }
      else {
        this.ref_a_x = 0.0;
      }
      if (initObj.hasOwnProperty('ref_a_y')) {
        this.ref_a_y = initObj.ref_a_y
      }
      else {
        this.ref_a_y = 0.0;
      }
      if (initObj.hasOwnProperty('ref_a_z')) {
        this.ref_a_z = initObj.ref_a_z
      }
      else {
        this.ref_a_z = 0.0;
      }
      if (initObj.hasOwnProperty('ref_j_x')) {
        this.ref_j_x = initObj.ref_j_x
      }
      else {
        this.ref_j_x = 0.0;
      }
      if (initObj.hasOwnProperty('ref_j_y')) {
        this.ref_j_y = initObj.ref_j_y
      }
      else {
        this.ref_j_y = 0.0;
      }
      if (initObj.hasOwnProperty('ref_j_z')) {
        this.ref_j_z = initObj.ref_j_z
      }
      else {
        this.ref_j_z = 0.0;
      }
      if (initObj.hasOwnProperty('ref_s_x')) {
        this.ref_s_x = initObj.ref_s_x
      }
      else {
        this.ref_s_x = 0.0;
      }
      if (initObj.hasOwnProperty('ref_s_y')) {
        this.ref_s_y = initObj.ref_s_y
      }
      else {
        this.ref_s_y = 0.0;
      }
      if (initObj.hasOwnProperty('ref_s_z')) {
        this.ref_s_z = initObj.ref_s_z
      }
      else {
        this.ref_s_z = 0.0;
      }
      if (initObj.hasOwnProperty('x_pos_error')) {
        this.x_pos_error = initObj.x_pos_error
      }
      else {
        this.x_pos_error = 0.0;
      }
      if (initObj.hasOwnProperty('y_pos_error')) {
        this.y_pos_error = initObj.y_pos_error
      }
      else {
        this.y_pos_error = 0.0;
      }
      if (initObj.hasOwnProperty('z_pos_error')) {
        this.z_pos_error = initObj.z_pos_error
      }
      else {
        this.z_pos_error = 0.0;
      }
      if (initObj.hasOwnProperty('x_vel_error')) {
        this.x_vel_error = initObj.x_vel_error
      }
      else {
        this.x_vel_error = 0.0;
      }
      if (initObj.hasOwnProperty('y_vel_error')) {
        this.y_vel_error = initObj.y_vel_error
      }
      else {
        this.y_vel_error = 0.0;
      }
      if (initObj.hasOwnProperty('z_vel_error')) {
        this.z_vel_error = initObj.z_vel_error
      }
      else {
        this.z_vel_error = 0.0;
      }
      if (initObj.hasOwnProperty('ref_thr')) {
        this.ref_thr = initObj.ref_thr
      }
      else {
        this.ref_thr = 0.0;
      }
      if (initObj.hasOwnProperty('des_thr')) {
        this.des_thr = initObj.des_thr
      }
      else {
        this.des_thr = 0.0;
      }
      if (initObj.hasOwnProperty('est_thr')) {
        this.est_thr = initObj.est_thr
      }
      else {
        this.est_thr = 0.0;
      }
      if (initObj.hasOwnProperty('des_torque_x')) {
        this.des_torque_x = initObj.des_torque_x
      }
      else {
        this.des_torque_x = 0.0;
      }
      if (initObj.hasOwnProperty('des_torque_y')) {
        this.des_torque_y = initObj.des_torque_y
      }
      else {
        this.des_torque_y = 0.0;
      }
      if (initObj.hasOwnProperty('des_torque_z')) {
        this.des_torque_z = initObj.des_torque_z
      }
      else {
        this.des_torque_z = 0.0;
      }
      if (initObj.hasOwnProperty('cont_torque_x')) {
        this.cont_torque_x = initObj.cont_torque_x
      }
      else {
        this.cont_torque_x = 0.0;
      }
      if (initObj.hasOwnProperty('cont_torque_y')) {
        this.cont_torque_y = initObj.cont_torque_y
      }
      else {
        this.cont_torque_y = 0.0;
      }
      if (initObj.hasOwnProperty('cont_torque_z')) {
        this.cont_torque_z = initObj.cont_torque_z
      }
      else {
        this.cont_torque_z = 0.0;
      }
      if (initObj.hasOwnProperty('z_jwj')) {
        this.z_jwj = initObj.z_jwj
      }
      else {
        this.z_jwj = 0.0;
      }
      if (initObj.hasOwnProperty('fbp_thrust1')) {
        this.fbp_thrust1 = initObj.fbp_thrust1
      }
      else {
        this.fbp_thrust1 = 0.0;
      }
      if (initObj.hasOwnProperty('fbi_thrust1')) {
        this.fbi_thrust1 = initObj.fbi_thrust1
      }
      else {
        this.fbi_thrust1 = 0.0;
      }
      if (initObj.hasOwnProperty('fbp_thrust2')) {
        this.fbp_thrust2 = initObj.fbp_thrust2
      }
      else {
        this.fbp_thrust2 = 0.0;
      }
      if (initObj.hasOwnProperty('fbi_thrust2')) {
        this.fbi_thrust2 = initObj.fbi_thrust2
      }
      else {
        this.fbi_thrust2 = 0.0;
      }
      if (initObj.hasOwnProperty('fbp_thrust3')) {
        this.fbp_thrust3 = initObj.fbp_thrust3
      }
      else {
        this.fbp_thrust3 = 0.0;
      }
      if (initObj.hasOwnProperty('fbi_thrust3')) {
        this.fbi_thrust3 = initObj.fbi_thrust3
      }
      else {
        this.fbi_thrust3 = 0.0;
      }
      if (initObj.hasOwnProperty('fbp_thrust4')) {
        this.fbp_thrust4 = initObj.fbp_thrust4
      }
      else {
        this.fbp_thrust4 = 0.0;
      }
      if (initObj.hasOwnProperty('fbi_thrust4')) {
        this.fbi_thrust4 = initObj.fbi_thrust4
      }
      else {
        this.fbi_thrust4 = 0.0;
      }
      if (initObj.hasOwnProperty('fbp_thrust')) {
        this.fbp_thrust = initObj.fbp_thrust
      }
      else {
        this.fbp_thrust = 0.0;
      }
      if (initObj.hasOwnProperty('fbi_thrust')) {
        this.fbi_thrust = initObj.fbi_thrust
      }
      else {
        this.fbi_thrust = 0.0;
      }
      if (initObj.hasOwnProperty('fb_thrust')) {
        this.fb_thrust = initObj.fb_thrust
      }
      else {
        this.fb_thrust = 0.0;
      }
      if (initObj.hasOwnProperty('rpm_error1')) {
        this.rpm_error1 = initObj.rpm_error1
      }
      else {
        this.rpm_error1 = 0.0;
      }
      if (initObj.hasOwnProperty('rpm_error_sum1')) {
        this.rpm_error_sum1 = initObj.rpm_error_sum1
      }
      else {
        this.rpm_error_sum1 = 0.0;
      }
      if (initObj.hasOwnProperty('rpm_error2')) {
        this.rpm_error2 = initObj.rpm_error2
      }
      else {
        this.rpm_error2 = 0.0;
      }
      if (initObj.hasOwnProperty('rpm_error_sum2')) {
        this.rpm_error_sum2 = initObj.rpm_error_sum2
      }
      else {
        this.rpm_error_sum2 = 0.0;
      }
      if (initObj.hasOwnProperty('rpm_error3')) {
        this.rpm_error3 = initObj.rpm_error3
      }
      else {
        this.rpm_error3 = 0.0;
      }
      if (initObj.hasOwnProperty('rpm_error_sum3')) {
        this.rpm_error_sum3 = initObj.rpm_error_sum3
      }
      else {
        this.rpm_error_sum3 = 0.0;
      }
      if (initObj.hasOwnProperty('rpm_error4')) {
        this.rpm_error4 = initObj.rpm_error4
      }
      else {
        this.rpm_error4 = 0.0;
      }
      if (initObj.hasOwnProperty('rpm_error_sum4')) {
        this.rpm_error_sum4 = initObj.rpm_error_sum4
      }
      else {
        this.rpm_error_sum4 = 0.0;
      }
      if (initObj.hasOwnProperty('rate_error_z')) {
        this.rate_error_z = initObj.rate_error_z
      }
      else {
        this.rate_error_z = 0.0;
      }
      if (initObj.hasOwnProperty('rate_error_sum_z')) {
        this.rate_error_sum_z = initObj.rate_error_sum_z
      }
      else {
        this.rate_error_sum_z = 0.0;
      }
      if (initObj.hasOwnProperty('fbp_bodyacc_z')) {
        this.fbp_bodyacc_z = initObj.fbp_bodyacc_z
      }
      else {
        this.fbp_bodyacc_z = 0.0;
      }
      if (initObj.hasOwnProperty('fbi_bodyacc_z')) {
        this.fbi_bodyacc_z = initObj.fbi_bodyacc_z
      }
      else {
        this.fbi_bodyacc_z = 0.0;
      }
      if (initObj.hasOwnProperty('des_est_bodyrates_x')) {
        this.des_est_bodyrates_x = initObj.des_est_bodyrates_x
      }
      else {
        this.des_est_bodyrates_x = 0.0;
      }
      if (initObj.hasOwnProperty('des_est_bodyrates_y')) {
        this.des_est_bodyrates_y = initObj.des_est_bodyrates_y
      }
      else {
        this.des_est_bodyrates_y = 0.0;
      }
      if (initObj.hasOwnProperty('des_est_bodyrates_z')) {
        this.des_est_bodyrates_z = initObj.des_est_bodyrates_z
      }
      else {
        this.des_est_bodyrates_z = 0.0;
      }
      if (initObj.hasOwnProperty('acc_error1')) {
        this.acc_error1 = initObj.acc_error1
      }
      else {
        this.acc_error1 = 0.0;
      }
      if (initObj.hasOwnProperty('acc_error2')) {
        this.acc_error2 = initObj.acc_error2
      }
      else {
        this.acc_error2 = 0.0;
      }
      if (initObj.hasOwnProperty('acc_error3')) {
        this.acc_error3 = initObj.acc_error3
      }
      else {
        this.acc_error3 = 0.0;
      }
      if (initObj.hasOwnProperty('acc_error4')) {
        this.acc_error4 = initObj.acc_error4
      }
      else {
        this.acc_error4 = 0.0;
      }
      if (initObj.hasOwnProperty('acc_errorsum1')) {
        this.acc_errorsum1 = initObj.acc_errorsum1
      }
      else {
        this.acc_errorsum1 = 0.0;
      }
      if (initObj.hasOwnProperty('acc_errorsum2')) {
        this.acc_errorsum2 = initObj.acc_errorsum2
      }
      else {
        this.acc_errorsum2 = 0.0;
      }
      if (initObj.hasOwnProperty('acc_errorsum3')) {
        this.acc_errorsum3 = initObj.acc_errorsum3
      }
      else {
        this.acc_errorsum3 = 0.0;
      }
      if (initObj.hasOwnProperty('acc_errorsum4')) {
        this.acc_errorsum4 = initObj.acc_errorsum4
      }
      else {
        this.acc_errorsum4 = 0.0;
      }
      if (initObj.hasOwnProperty('window_ave1')) {
        this.window_ave1 = initObj.window_ave1
      }
      else {
        this.window_ave1 = 0.0;
      }
      if (initObj.hasOwnProperty('window_ave2')) {
        this.window_ave2 = initObj.window_ave2
      }
      else {
        this.window_ave2 = 0.0;
      }
      if (initObj.hasOwnProperty('window_ave3')) {
        this.window_ave3 = initObj.window_ave3
      }
      else {
        this.window_ave3 = 0.0;
      }
      if (initObj.hasOwnProperty('window_ave4')) {
        this.window_ave4 = initObj.window_ave4
      }
      else {
        this.window_ave4 = 0.0;
      }
      if (initObj.hasOwnProperty('pos_error_all')) {
        this.pos_error_all = initObj.pos_error_all
      }
      else {
        this.pos_error_all = 0.0;
      }
      if (initObj.hasOwnProperty('pos_error_xy')) {
        this.pos_error_xy = initObj.pos_error_xy
      }
      else {
        this.pos_error_xy = 0.0;
      }
      if (initObj.hasOwnProperty('pos_error_rmse')) {
        this.pos_error_rmse = initObj.pos_error_rmse
      }
      else {
        this.pos_error_rmse = 0.0;
      }
      if (initObj.hasOwnProperty('vel_error_all')) {
        this.vel_error_all = initObj.vel_error_all
      }
      else {
        this.vel_error_all = 0.0;
      }
      if (initObj.hasOwnProperty('des_v_all')) {
        this.des_v_all = initObj.des_v_all
      }
      else {
        this.des_v_all = 0.0;
      }
      if (initObj.hasOwnProperty('ref_bodyrates_x')) {
        this.ref_bodyrates_x = initObj.ref_bodyrates_x
      }
      else {
        this.ref_bodyrates_x = 0.0;
      }
      if (initObj.hasOwnProperty('ref_bodyrates_y')) {
        this.ref_bodyrates_y = initObj.ref_bodyrates_y
      }
      else {
        this.ref_bodyrates_y = 0.0;
      }
      if (initObj.hasOwnProperty('ref_bodyrates_z')) {
        this.ref_bodyrates_z = initObj.ref_bodyrates_z
      }
      else {
        this.ref_bodyrates_z = 0.0;
      }
      if (initObj.hasOwnProperty('extTotalAccIndi_x')) {
        this.extTotalAccIndi_x = initObj.extTotalAccIndi_x
      }
      else {
        this.extTotalAccIndi_x = 0.0;
      }
      if (initObj.hasOwnProperty('extTotalAccIndi_y')) {
        this.extTotalAccIndi_y = initObj.extTotalAccIndi_y
      }
      else {
        this.extTotalAccIndi_y = 0.0;
      }
      if (initObj.hasOwnProperty('extTotalAccIndi_z')) {
        this.extTotalAccIndi_z = initObj.extTotalAccIndi_z
      }
      else {
        this.extTotalAccIndi_z = 0.0;
      }
      if (initObj.hasOwnProperty('aw_x')) {
        this.aw_x = initObj.aw_x
      }
      else {
        this.aw_x = 0.0;
      }
      if (initObj.hasOwnProperty('aw_y')) {
        this.aw_y = initObj.aw_y
      }
      else {
        this.aw_y = 0.0;
      }
      if (initObj.hasOwnProperty('aw_z')) {
        this.aw_z = initObj.aw_z
      }
      else {
        this.aw_z = 0.0;
      }
      if (initObj.hasOwnProperty('fb_a_x_fil')) {
        this.fb_a_x_fil = initObj.fb_a_x_fil
      }
      else {
        this.fb_a_x_fil = 0.0;
      }
      if (initObj.hasOwnProperty('fb_a_y_fil')) {
        this.fb_a_y_fil = initObj.fb_a_y_fil
      }
      else {
        this.fb_a_y_fil = 0.0;
      }
      if (initObj.hasOwnProperty('fb_a_z_fil')) {
        this.fb_a_z_fil = initObj.fb_a_z_fil
      }
      else {
        this.fb_a_z_fil = 0.0;
      }
      if (initObj.hasOwnProperty('extF_psi')) {
        this.extF_psi = initObj.extF_psi
      }
      else {
        this.extF_psi = 0.0;
      }
      if (initObj.hasOwnProperty('extF_theta')) {
        this.extF_theta = initObj.extF_theta
      }
      else {
        this.extF_theta = 0.0;
      }
      if (initObj.hasOwnProperty('des_Fq_psi')) {
        this.des_Fq_psi = initObj.des_Fq_psi
      }
      else {
        this.des_Fq_psi = 0.0;
      }
      if (initObj.hasOwnProperty('des_Fq_theta')) {
        this.des_Fq_theta = initObj.des_Fq_theta
      }
      else {
        this.des_Fq_theta = 0.0;
      }
      if (initObj.hasOwnProperty('indi_q_err_ang')) {
        this.indi_q_err_ang = initObj.indi_q_err_ang
      }
      else {
        this.indi_q_err_ang = 0.0;
      }
      if (initObj.hasOwnProperty('fb_F_x')) {
        this.fb_F_x = initObj.fb_F_x
      }
      else {
        this.fb_F_x = 0.0;
      }
      if (initObj.hasOwnProperty('fb_F_y')) {
        this.fb_F_y = initObj.fb_F_y
      }
      else {
        this.fb_F_y = 0.0;
      }
      if (initObj.hasOwnProperty('fb_F_z')) {
        this.fb_F_z = initObj.fb_F_z
      }
      else {
        this.fb_F_z = 0.0;
      }
      if (initObj.hasOwnProperty('flag')) {
        this.flag = initObj.flag
      }
      else {
        this.flag = 0;
      }
      if (initObj.hasOwnProperty('indi_acc_q_error_x')) {
        this.indi_acc_q_error_x = initObj.indi_acc_q_error_x
      }
      else {
        this.indi_acc_q_error_x = 0.0;
      }
      if (initObj.hasOwnProperty('indi_acc_q_error_y')) {
        this.indi_acc_q_error_y = initObj.indi_acc_q_error_y
      }
      else {
        this.indi_acc_q_error_y = 0.0;
      }
      if (initObj.hasOwnProperty('indi_acc_q_error_z')) {
        this.indi_acc_q_error_z = initObj.indi_acc_q_error_z
      }
      else {
        this.indi_acc_q_error_z = 0.0;
      }
      if (initObj.hasOwnProperty('F_error')) {
        this.F_error = initObj.F_error
      }
      else {
        this.F_error = 0.0;
      }
      if (initObj.hasOwnProperty('indi_acc_F_error_x')) {
        this.indi_acc_F_error_x = initObj.indi_acc_F_error_x
      }
      else {
        this.indi_acc_F_error_x = 0.0;
      }
      if (initObj.hasOwnProperty('indi_acc_F_error_y')) {
        this.indi_acc_F_error_y = initObj.indi_acc_F_error_y
      }
      else {
        this.indi_acc_F_error_y = 0.0;
      }
      if (initObj.hasOwnProperty('indi_acc_F_error_z')) {
        this.indi_acc_F_error_z = initObj.indi_acc_F_error_z
      }
      else {
        this.indi_acc_F_error_z = 0.0;
      }
      if (initObj.hasOwnProperty('indiF_x')) {
        this.indiF_x = initObj.indiF_x
      }
      else {
        this.indiF_x = 0.0;
      }
      if (initObj.hasOwnProperty('indiF_y')) {
        this.indiF_y = initObj.indiF_y
      }
      else {
        this.indiF_y = 0.0;
      }
      if (initObj.hasOwnProperty('indiF_z')) {
        this.indiF_z = initObj.indiF_z
      }
      else {
        this.indiF_z = 0.0;
      }
      if (initObj.hasOwnProperty('desFq_x')) {
        this.desFq_x = initObj.desFq_x
      }
      else {
        this.desFq_x = 0.0;
      }
      if (initObj.hasOwnProperty('desFq_y')) {
        this.desFq_y = initObj.desFq_y
      }
      else {
        this.desFq_y = 0.0;
      }
      if (initObj.hasOwnProperty('desFq_z')) {
        this.desFq_z = initObj.desFq_z
      }
      else {
        this.desFq_z = 0.0;
      }
      if (initObj.hasOwnProperty('fb_pv_x')) {
        this.fb_pv_x = initObj.fb_pv_x
      }
      else {
        this.fb_pv_x = 0.0;
      }
      if (initObj.hasOwnProperty('fb_pv_y')) {
        this.fb_pv_y = initObj.fb_pv_y
      }
      else {
        this.fb_pv_y = 0.0;
      }
      if (initObj.hasOwnProperty('fb_pv_z')) {
        this.fb_pv_z = initObj.fb_pv_z
      }
      else {
        this.fb_pv_z = 0.0;
      }
      if (initObj.hasOwnProperty('fb_q_x')) {
        this.fb_q_x = initObj.fb_q_x
      }
      else {
        this.fb_q_x = 0.0;
      }
      if (initObj.hasOwnProperty('fb_q_y')) {
        this.fb_q_y = initObj.fb_q_y
      }
      else {
        this.fb_q_y = 0.0;
      }
      if (initObj.hasOwnProperty('fb_q_z')) {
        this.fb_q_z = initObj.fb_q_z
      }
      else {
        this.fb_q_z = 0.0;
      }
      if (initObj.hasOwnProperty('fb_Fq_x')) {
        this.fb_Fq_x = initObj.fb_Fq_x
      }
      else {
        this.fb_Fq_x = 0.0;
      }
      if (initObj.hasOwnProperty('fb_Fq_y')) {
        this.fb_Fq_y = initObj.fb_Fq_y
      }
      else {
        this.fb_Fq_y = 0.0;
      }
      if (initObj.hasOwnProperty('fb_Fq_z')) {
        this.fb_Fq_z = initObj.fb_Fq_z
      }
      else {
        this.fb_Fq_z = 0.0;
      }
      if (initObj.hasOwnProperty('v_modi_x')) {
        this.v_modi_x = initObj.v_modi_x
      }
      else {
        this.v_modi_x = 0.0;
      }
      if (initObj.hasOwnProperty('v_modi_y')) {
        this.v_modi_y = initObj.v_modi_y
      }
      else {
        this.v_modi_y = 0.0;
      }
      if (initObj.hasOwnProperty('v_modi_z')) {
        this.v_modi_z = initObj.v_modi_z
      }
      else {
        this.v_modi_z = 0.0;
      }
      if (initObj.hasOwnProperty('fb_Fq_error_fil_x')) {
        this.fb_Fq_error_fil_x = initObj.fb_Fq_error_fil_x
      }
      else {
        this.fb_Fq_error_fil_x = 0.0;
      }
      if (initObj.hasOwnProperty('fb_Fq_error_fil_y')) {
        this.fb_Fq_error_fil_y = initObj.fb_Fq_error_fil_y
      }
      else {
        this.fb_Fq_error_fil_y = 0.0;
      }
      if (initObj.hasOwnProperty('fb_Fq_error_fil_z')) {
        this.fb_Fq_error_fil_z = initObj.fb_Fq_error_fil_z
      }
      else {
        this.fb_Fq_error_fil_z = 0.0;
      }
      if (initObj.hasOwnProperty('FUpper')) {
        this.FUpper = initObj.FUpper
      }
      else {
        this.FUpper = 0.0;
      }
      if (initObj.hasOwnProperty('FLower')) {
        this.FLower = initObj.FLower
      }
      else {
        this.FLower = 0.0;
      }
      if (initObj.hasOwnProperty('ref_rpm1')) {
        this.ref_rpm1 = initObj.ref_rpm1
      }
      else {
        this.ref_rpm1 = 0.0;
      }
      if (initObj.hasOwnProperty('ref_rpm2')) {
        this.ref_rpm2 = initObj.ref_rpm2
      }
      else {
        this.ref_rpm2 = 0.0;
      }
      if (initObj.hasOwnProperty('ref_rpm3')) {
        this.ref_rpm3 = initObj.ref_rpm3
      }
      else {
        this.ref_rpm3 = 0.0;
      }
      if (initObj.hasOwnProperty('ref_rpm4')) {
        this.ref_rpm4 = initObj.ref_rpm4
      }
      else {
        this.ref_rpm4 = 0.0;
      }
      if (initObj.hasOwnProperty('ref_torque_x')) {
        this.ref_torque_x = initObj.ref_torque_x
      }
      else {
        this.ref_torque_x = 0.0;
      }
      if (initObj.hasOwnProperty('ref_torque_y')) {
        this.ref_torque_y = initObj.ref_torque_y
      }
      else {
        this.ref_torque_y = 0.0;
      }
      if (initObj.hasOwnProperty('ref_torque_z')) {
        this.ref_torque_z = initObj.ref_torque_z
      }
      else {
        this.ref_torque_z = 0.0;
      }
      if (initObj.hasOwnProperty('indi_F_Limit')) {
        this.indi_F_Limit = initObj.indi_F_Limit
      }
      else {
        this.indi_F_Limit = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Px4ctrlDebug
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [fb_a_x]
    bufferOffset = _serializer.float64(obj.fb_a_x, buffer, bufferOffset);
    // Serialize message field [fb_a_y]
    bufferOffset = _serializer.float64(obj.fb_a_y, buffer, bufferOffset);
    // Serialize message field [fb_a_z]
    bufferOffset = _serializer.float64(obj.fb_a_z, buffer, bufferOffset);
    // Serialize message field [des_p_x]
    bufferOffset = _serializer.float64(obj.des_p_x, buffer, bufferOffset);
    // Serialize message field [des_p_y]
    bufferOffset = _serializer.float64(obj.des_p_y, buffer, bufferOffset);
    // Serialize message field [des_p_z]
    bufferOffset = _serializer.float64(obj.des_p_z, buffer, bufferOffset);
    // Serialize message field [des_v_x]
    bufferOffset = _serializer.float64(obj.des_v_x, buffer, bufferOffset);
    // Serialize message field [des_v_y]
    bufferOffset = _serializer.float64(obj.des_v_y, buffer, bufferOffset);
    // Serialize message field [des_v_z]
    bufferOffset = _serializer.float64(obj.des_v_z, buffer, bufferOffset);
    // Serialize message field [des_a_x]
    bufferOffset = _serializer.float64(obj.des_a_x, buffer, bufferOffset);
    // Serialize message field [des_a_y]
    bufferOffset = _serializer.float64(obj.des_a_y, buffer, bufferOffset);
    // Serialize message field [des_a_z]
    bufferOffset = _serializer.float64(obj.des_a_z, buffer, bufferOffset);
    // Serialize message field [des_q_x]
    bufferOffset = _serializer.float64(obj.des_q_x, buffer, bufferOffset);
    // Serialize message field [des_q_y]
    bufferOffset = _serializer.float64(obj.des_q_y, buffer, bufferOffset);
    // Serialize message field [des_q_z]
    bufferOffset = _serializer.float64(obj.des_q_z, buffer, bufferOffset);
    // Serialize message field [des_q_w]
    bufferOffset = _serializer.float64(obj.des_q_w, buffer, bufferOffset);
    // Serialize message field [est_r]
    bufferOffset = _serializer.float64(obj.est_r, buffer, bufferOffset);
    // Serialize message field [est_p]
    bufferOffset = _serializer.float64(obj.est_p, buffer, bufferOffset);
    // Serialize message field [est_y]
    bufferOffset = _serializer.float64(obj.est_y, buffer, bufferOffset);
    // Serialize message field [ref_r]
    bufferOffset = _serializer.float64(obj.ref_r, buffer, bufferOffset);
    // Serialize message field [ref_p]
    bufferOffset = _serializer.float64(obj.ref_p, buffer, bufferOffset);
    // Serialize message field [ref_y]
    bufferOffset = _serializer.float64(obj.ref_y, buffer, bufferOffset);
    // Serialize message field [des_r]
    bufferOffset = _serializer.float64(obj.des_r, buffer, bufferOffset);
    // Serialize message field [des_p]
    bufferOffset = _serializer.float64(obj.des_p, buffer, bufferOffset);
    // Serialize message field [des_y]
    bufferOffset = _serializer.float64(obj.des_y, buffer, bufferOffset);
    // Serialize message field [exec_err_axisang_x]
    bufferOffset = _serializer.float64(obj.exec_err_axisang_x, buffer, bufferOffset);
    // Serialize message field [exec_err_axisang_y]
    bufferOffset = _serializer.float64(obj.exec_err_axisang_y, buffer, bufferOffset);
    // Serialize message field [exec_err_axisang_z]
    bufferOffset = _serializer.float64(obj.exec_err_axisang_z, buffer, bufferOffset);
    // Serialize message field [exec_err_axisang_ang]
    bufferOffset = _serializer.float64(obj.exec_err_axisang_ang, buffer, bufferOffset);
    // Serialize message field [fb_axisang_x]
    bufferOffset = _serializer.float64(obj.fb_axisang_x, buffer, bufferOffset);
    // Serialize message field [fb_axisang_y]
    bufferOffset = _serializer.float64(obj.fb_axisang_y, buffer, bufferOffset);
    // Serialize message field [fb_axisang_z]
    bufferOffset = _serializer.float64(obj.fb_axisang_z, buffer, bufferOffset);
    // Serialize message field [fb_axisang_ang]
    bufferOffset = _serializer.float64(obj.fb_axisang_ang, buffer, bufferOffset);
    // Serialize message field [fb_rate_x]
    bufferOffset = _serializer.float64(obj.fb_rate_x, buffer, bufferOffset);
    // Serialize message field [fb_rate_y]
    bufferOffset = _serializer.float64(obj.fb_rate_y, buffer, bufferOffset);
    // Serialize message field [fb_rate_z]
    bufferOffset = _serializer.float64(obj.fb_rate_z, buffer, bufferOffset);
    // Serialize message field [des_bodyrates_x]
    bufferOffset = _serializer.float64(obj.des_bodyrates_x, buffer, bufferOffset);
    // Serialize message field [des_bodyrates_y]
    bufferOffset = _serializer.float64(obj.des_bodyrates_y, buffer, bufferOffset);
    // Serialize message field [des_bodyrates_z]
    bufferOffset = _serializer.float64(obj.des_bodyrates_z, buffer, bufferOffset);
    // Serialize message field [des_bodyaccs_x]
    bufferOffset = _serializer.float64(obj.des_bodyaccs_x, buffer, bufferOffset);
    // Serialize message field [des_bodyaccs_y]
    bufferOffset = _serializer.float64(obj.des_bodyaccs_y, buffer, bufferOffset);
    // Serialize message field [des_bodyaccs_z]
    bufferOffset = _serializer.float64(obj.des_bodyaccs_z, buffer, bufferOffset);
    // Serialize message field [imu_af_x]
    bufferOffset = _serializer.float64(obj.imu_af_x, buffer, bufferOffset);
    // Serialize message field [imu_af_y]
    bufferOffset = _serializer.float64(obj.imu_af_y, buffer, bufferOffset);
    // Serialize message field [imu_af_z]
    bufferOffset = _serializer.float64(obj.imu_af_z, buffer, bufferOffset);
    // Serialize message field [imu_wf_x]
    bufferOffset = _serializer.float64(obj.imu_wf_x, buffer, bufferOffset);
    // Serialize message field [imu_wf_y]
    bufferOffset = _serializer.float64(obj.imu_wf_y, buffer, bufferOffset);
    // Serialize message field [imu_wf_z]
    bufferOffset = _serializer.float64(obj.imu_wf_z, buffer, bufferOffset);
    // Serialize message field [imu_dw_x]
    bufferOffset = _serializer.float64(obj.imu_dw_x, buffer, bufferOffset);
    // Serialize message field [imu_dw_y]
    bufferOffset = _serializer.float64(obj.imu_dw_y, buffer, bufferOffset);
    // Serialize message field [imu_dw_z]
    bufferOffset = _serializer.float64(obj.imu_dw_z, buffer, bufferOffset);
    // Serialize message field [rpm_f1]
    bufferOffset = _serializer.float64(obj.rpm_f1, buffer, bufferOffset);
    // Serialize message field [rpm_f2]
    bufferOffset = _serializer.float64(obj.rpm_f2, buffer, bufferOffset);
    // Serialize message field [rpm_f3]
    bufferOffset = _serializer.float64(obj.rpm_f3, buffer, bufferOffset);
    // Serialize message field [rpm_f4]
    bufferOffset = _serializer.float64(obj.rpm_f4, buffer, bufferOffset);
    // Serialize message field [cmd_rpm1]
    bufferOffset = _serializer.float64(obj.cmd_rpm1, buffer, bufferOffset);
    // Serialize message field [cmd_rpm2]
    bufferOffset = _serializer.float64(obj.cmd_rpm2, buffer, bufferOffset);
    // Serialize message field [cmd_rpm3]
    bufferOffset = _serializer.float64(obj.cmd_rpm3, buffer, bufferOffset);
    // Serialize message field [cmd_rpm4]
    bufferOffset = _serializer.float64(obj.cmd_rpm4, buffer, bufferOffset);
    // Serialize message field [ref_thrust1]
    bufferOffset = _serializer.float64(obj.ref_thrust1, buffer, bufferOffset);
    // Serialize message field [ref_thrust2]
    bufferOffset = _serializer.float64(obj.ref_thrust2, buffer, bufferOffset);
    // Serialize message field [ref_thrust3]
    bufferOffset = _serializer.float64(obj.ref_thrust3, buffer, bufferOffset);
    // Serialize message field [ref_thrust4]
    bufferOffset = _serializer.float64(obj.ref_thrust4, buffer, bufferOffset);
    // Serialize message field [des_rpm_ave]
    bufferOffset = _serializer.float64(obj.des_rpm_ave, buffer, bufferOffset);
    // Serialize message field [rpm_ave]
    bufferOffset = _serializer.float64(obj.rpm_ave, buffer, bufferOffset);
    // Serialize message field [des_yaw]
    bufferOffset = _serializer.float64(obj.des_yaw, buffer, bufferOffset);
    // Serialize message field [des_yaw_rate]
    bufferOffset = _serializer.float64(obj.des_yaw_rate, buffer, bufferOffset);
    // Serialize message field [des_yaw_acc]
    bufferOffset = _serializer.float64(obj.des_yaw_acc, buffer, bufferOffset);
    // Serialize message field [thro1]
    bufferOffset = _serializer.float64(obj.thro1, buffer, bufferOffset);
    // Serialize message field [thro2]
    bufferOffset = _serializer.float64(obj.thro2, buffer, bufferOffset);
    // Serialize message field [thro3]
    bufferOffset = _serializer.float64(obj.thro3, buffer, bufferOffset);
    // Serialize message field [thro4]
    bufferOffset = _serializer.float64(obj.thro4, buffer, bufferOffset);
    // Serialize message field [delta_q_ang]
    bufferOffset = _serializer.float64(obj.delta_q_ang, buffer, bufferOffset);
    // Serialize message field [des_q_ang]
    bufferOffset = _serializer.float64(obj.des_q_ang, buffer, bufferOffset);
    // Serialize message field [des_F]
    bufferOffset = _serializer.float64(obj.des_F, buffer, bufferOffset);
    // Serialize message field [indi_F]
    bufferOffset = _serializer.float64(obj.indi_F, buffer, bufferOffset);
    // Serialize message field [hover_percentage]
    bufferOffset = _serializer.float64(obj.hover_percentage, buffer, bufferOffset);
    // Serialize message field [thr_scale_compensate]
    bufferOffset = _serializer.float64(obj.thr_scale_compensate, buffer, bufferOffset);
    // Serialize message field [voltage]
    bufferOffset = _serializer.float64(obj.voltage, buffer, bufferOffset);
    // Serialize message field [ref_v_x]
    bufferOffset = _serializer.float64(obj.ref_v_x, buffer, bufferOffset);
    // Serialize message field [ref_v_y]
    bufferOffset = _serializer.float64(obj.ref_v_y, buffer, bufferOffset);
    // Serialize message field [ref_v_z]
    bufferOffset = _serializer.float64(obj.ref_v_z, buffer, bufferOffset);
    // Serialize message field [ref_a_x]
    bufferOffset = _serializer.float64(obj.ref_a_x, buffer, bufferOffset);
    // Serialize message field [ref_a_y]
    bufferOffset = _serializer.float64(obj.ref_a_y, buffer, bufferOffset);
    // Serialize message field [ref_a_z]
    bufferOffset = _serializer.float64(obj.ref_a_z, buffer, bufferOffset);
    // Serialize message field [ref_j_x]
    bufferOffset = _serializer.float64(obj.ref_j_x, buffer, bufferOffset);
    // Serialize message field [ref_j_y]
    bufferOffset = _serializer.float64(obj.ref_j_y, buffer, bufferOffset);
    // Serialize message field [ref_j_z]
    bufferOffset = _serializer.float64(obj.ref_j_z, buffer, bufferOffset);
    // Serialize message field [ref_s_x]
    bufferOffset = _serializer.float64(obj.ref_s_x, buffer, bufferOffset);
    // Serialize message field [ref_s_y]
    bufferOffset = _serializer.float64(obj.ref_s_y, buffer, bufferOffset);
    // Serialize message field [ref_s_z]
    bufferOffset = _serializer.float64(obj.ref_s_z, buffer, bufferOffset);
    // Serialize message field [x_pos_error]
    bufferOffset = _serializer.float64(obj.x_pos_error, buffer, bufferOffset);
    // Serialize message field [y_pos_error]
    bufferOffset = _serializer.float64(obj.y_pos_error, buffer, bufferOffset);
    // Serialize message field [z_pos_error]
    bufferOffset = _serializer.float64(obj.z_pos_error, buffer, bufferOffset);
    // Serialize message field [x_vel_error]
    bufferOffset = _serializer.float64(obj.x_vel_error, buffer, bufferOffset);
    // Serialize message field [y_vel_error]
    bufferOffset = _serializer.float64(obj.y_vel_error, buffer, bufferOffset);
    // Serialize message field [z_vel_error]
    bufferOffset = _serializer.float64(obj.z_vel_error, buffer, bufferOffset);
    // Serialize message field [ref_thr]
    bufferOffset = _serializer.float64(obj.ref_thr, buffer, bufferOffset);
    // Serialize message field [des_thr]
    bufferOffset = _serializer.float64(obj.des_thr, buffer, bufferOffset);
    // Serialize message field [est_thr]
    bufferOffset = _serializer.float64(obj.est_thr, buffer, bufferOffset);
    // Serialize message field [des_torque_x]
    bufferOffset = _serializer.float64(obj.des_torque_x, buffer, bufferOffset);
    // Serialize message field [des_torque_y]
    bufferOffset = _serializer.float64(obj.des_torque_y, buffer, bufferOffset);
    // Serialize message field [des_torque_z]
    bufferOffset = _serializer.float64(obj.des_torque_z, buffer, bufferOffset);
    // Serialize message field [cont_torque_x]
    bufferOffset = _serializer.float64(obj.cont_torque_x, buffer, bufferOffset);
    // Serialize message field [cont_torque_y]
    bufferOffset = _serializer.float64(obj.cont_torque_y, buffer, bufferOffset);
    // Serialize message field [cont_torque_z]
    bufferOffset = _serializer.float64(obj.cont_torque_z, buffer, bufferOffset);
    // Serialize message field [z_jwj]
    bufferOffset = _serializer.float64(obj.z_jwj, buffer, bufferOffset);
    // Serialize message field [fbp_thrust1]
    bufferOffset = _serializer.float64(obj.fbp_thrust1, buffer, bufferOffset);
    // Serialize message field [fbi_thrust1]
    bufferOffset = _serializer.float64(obj.fbi_thrust1, buffer, bufferOffset);
    // Serialize message field [fbp_thrust2]
    bufferOffset = _serializer.float64(obj.fbp_thrust2, buffer, bufferOffset);
    // Serialize message field [fbi_thrust2]
    bufferOffset = _serializer.float64(obj.fbi_thrust2, buffer, bufferOffset);
    // Serialize message field [fbp_thrust3]
    bufferOffset = _serializer.float64(obj.fbp_thrust3, buffer, bufferOffset);
    // Serialize message field [fbi_thrust3]
    bufferOffset = _serializer.float64(obj.fbi_thrust3, buffer, bufferOffset);
    // Serialize message field [fbp_thrust4]
    bufferOffset = _serializer.float64(obj.fbp_thrust4, buffer, bufferOffset);
    // Serialize message field [fbi_thrust4]
    bufferOffset = _serializer.float64(obj.fbi_thrust4, buffer, bufferOffset);
    // Serialize message field [fbp_thrust]
    bufferOffset = _serializer.float64(obj.fbp_thrust, buffer, bufferOffset);
    // Serialize message field [fbi_thrust]
    bufferOffset = _serializer.float64(obj.fbi_thrust, buffer, bufferOffset);
    // Serialize message field [fb_thrust]
    bufferOffset = _serializer.float64(obj.fb_thrust, buffer, bufferOffset);
    // Serialize message field [rpm_error1]
    bufferOffset = _serializer.float64(obj.rpm_error1, buffer, bufferOffset);
    // Serialize message field [rpm_error_sum1]
    bufferOffset = _serializer.float64(obj.rpm_error_sum1, buffer, bufferOffset);
    // Serialize message field [rpm_error2]
    bufferOffset = _serializer.float64(obj.rpm_error2, buffer, bufferOffset);
    // Serialize message field [rpm_error_sum2]
    bufferOffset = _serializer.float64(obj.rpm_error_sum2, buffer, bufferOffset);
    // Serialize message field [rpm_error3]
    bufferOffset = _serializer.float64(obj.rpm_error3, buffer, bufferOffset);
    // Serialize message field [rpm_error_sum3]
    bufferOffset = _serializer.float64(obj.rpm_error_sum3, buffer, bufferOffset);
    // Serialize message field [rpm_error4]
    bufferOffset = _serializer.float64(obj.rpm_error4, buffer, bufferOffset);
    // Serialize message field [rpm_error_sum4]
    bufferOffset = _serializer.float64(obj.rpm_error_sum4, buffer, bufferOffset);
    // Serialize message field [rate_error_z]
    bufferOffset = _serializer.float64(obj.rate_error_z, buffer, bufferOffset);
    // Serialize message field [rate_error_sum_z]
    bufferOffset = _serializer.float64(obj.rate_error_sum_z, buffer, bufferOffset);
    // Serialize message field [fbp_bodyacc_z]
    bufferOffset = _serializer.float64(obj.fbp_bodyacc_z, buffer, bufferOffset);
    // Serialize message field [fbi_bodyacc_z]
    bufferOffset = _serializer.float64(obj.fbi_bodyacc_z, buffer, bufferOffset);
    // Serialize message field [des_est_bodyrates_x]
    bufferOffset = _serializer.float64(obj.des_est_bodyrates_x, buffer, bufferOffset);
    // Serialize message field [des_est_bodyrates_y]
    bufferOffset = _serializer.float64(obj.des_est_bodyrates_y, buffer, bufferOffset);
    // Serialize message field [des_est_bodyrates_z]
    bufferOffset = _serializer.float64(obj.des_est_bodyrates_z, buffer, bufferOffset);
    // Serialize message field [acc_error1]
    bufferOffset = _serializer.float64(obj.acc_error1, buffer, bufferOffset);
    // Serialize message field [acc_error2]
    bufferOffset = _serializer.float64(obj.acc_error2, buffer, bufferOffset);
    // Serialize message field [acc_error3]
    bufferOffset = _serializer.float64(obj.acc_error3, buffer, bufferOffset);
    // Serialize message field [acc_error4]
    bufferOffset = _serializer.float64(obj.acc_error4, buffer, bufferOffset);
    // Serialize message field [acc_errorsum1]
    bufferOffset = _serializer.float64(obj.acc_errorsum1, buffer, bufferOffset);
    // Serialize message field [acc_errorsum2]
    bufferOffset = _serializer.float64(obj.acc_errorsum2, buffer, bufferOffset);
    // Serialize message field [acc_errorsum3]
    bufferOffset = _serializer.float64(obj.acc_errorsum3, buffer, bufferOffset);
    // Serialize message field [acc_errorsum4]
    bufferOffset = _serializer.float64(obj.acc_errorsum4, buffer, bufferOffset);
    // Serialize message field [window_ave1]
    bufferOffset = _serializer.float64(obj.window_ave1, buffer, bufferOffset);
    // Serialize message field [window_ave2]
    bufferOffset = _serializer.float64(obj.window_ave2, buffer, bufferOffset);
    // Serialize message field [window_ave3]
    bufferOffset = _serializer.float64(obj.window_ave3, buffer, bufferOffset);
    // Serialize message field [window_ave4]
    bufferOffset = _serializer.float64(obj.window_ave4, buffer, bufferOffset);
    // Serialize message field [pos_error_all]
    bufferOffset = _serializer.float64(obj.pos_error_all, buffer, bufferOffset);
    // Serialize message field [pos_error_xy]
    bufferOffset = _serializer.float64(obj.pos_error_xy, buffer, bufferOffset);
    // Serialize message field [pos_error_rmse]
    bufferOffset = _serializer.float64(obj.pos_error_rmse, buffer, bufferOffset);
    // Serialize message field [vel_error_all]
    bufferOffset = _serializer.float64(obj.vel_error_all, buffer, bufferOffset);
    // Serialize message field [des_v_all]
    bufferOffset = _serializer.float64(obj.des_v_all, buffer, bufferOffset);
    // Serialize message field [ref_bodyrates_x]
    bufferOffset = _serializer.float64(obj.ref_bodyrates_x, buffer, bufferOffset);
    // Serialize message field [ref_bodyrates_y]
    bufferOffset = _serializer.float64(obj.ref_bodyrates_y, buffer, bufferOffset);
    // Serialize message field [ref_bodyrates_z]
    bufferOffset = _serializer.float64(obj.ref_bodyrates_z, buffer, bufferOffset);
    // Serialize message field [extTotalAccIndi_x]
    bufferOffset = _serializer.float64(obj.extTotalAccIndi_x, buffer, bufferOffset);
    // Serialize message field [extTotalAccIndi_y]
    bufferOffset = _serializer.float64(obj.extTotalAccIndi_y, buffer, bufferOffset);
    // Serialize message field [extTotalAccIndi_z]
    bufferOffset = _serializer.float64(obj.extTotalAccIndi_z, buffer, bufferOffset);
    // Serialize message field [aw_x]
    bufferOffset = _serializer.float64(obj.aw_x, buffer, bufferOffset);
    // Serialize message field [aw_y]
    bufferOffset = _serializer.float64(obj.aw_y, buffer, bufferOffset);
    // Serialize message field [aw_z]
    bufferOffset = _serializer.float64(obj.aw_z, buffer, bufferOffset);
    // Serialize message field [fb_a_x_fil]
    bufferOffset = _serializer.float64(obj.fb_a_x_fil, buffer, bufferOffset);
    // Serialize message field [fb_a_y_fil]
    bufferOffset = _serializer.float64(obj.fb_a_y_fil, buffer, bufferOffset);
    // Serialize message field [fb_a_z_fil]
    bufferOffset = _serializer.float64(obj.fb_a_z_fil, buffer, bufferOffset);
    // Serialize message field [extF_psi]
    bufferOffset = _serializer.float64(obj.extF_psi, buffer, bufferOffset);
    // Serialize message field [extF_theta]
    bufferOffset = _serializer.float64(obj.extF_theta, buffer, bufferOffset);
    // Serialize message field [des_Fq_psi]
    bufferOffset = _serializer.float64(obj.des_Fq_psi, buffer, bufferOffset);
    // Serialize message field [des_Fq_theta]
    bufferOffset = _serializer.float64(obj.des_Fq_theta, buffer, bufferOffset);
    // Serialize message field [indi_q_err_ang]
    bufferOffset = _serializer.float64(obj.indi_q_err_ang, buffer, bufferOffset);
    // Serialize message field [fb_F_x]
    bufferOffset = _serializer.float64(obj.fb_F_x, buffer, bufferOffset);
    // Serialize message field [fb_F_y]
    bufferOffset = _serializer.float64(obj.fb_F_y, buffer, bufferOffset);
    // Serialize message field [fb_F_z]
    bufferOffset = _serializer.float64(obj.fb_F_z, buffer, bufferOffset);
    // Serialize message field [flag]
    bufferOffset = _serializer.uint8(obj.flag, buffer, bufferOffset);
    // Serialize message field [indi_acc_q_error_x]
    bufferOffset = _serializer.float64(obj.indi_acc_q_error_x, buffer, bufferOffset);
    // Serialize message field [indi_acc_q_error_y]
    bufferOffset = _serializer.float64(obj.indi_acc_q_error_y, buffer, bufferOffset);
    // Serialize message field [indi_acc_q_error_z]
    bufferOffset = _serializer.float64(obj.indi_acc_q_error_z, buffer, bufferOffset);
    // Serialize message field [F_error]
    bufferOffset = _serializer.float64(obj.F_error, buffer, bufferOffset);
    // Serialize message field [indi_acc_F_error_x]
    bufferOffset = _serializer.float64(obj.indi_acc_F_error_x, buffer, bufferOffset);
    // Serialize message field [indi_acc_F_error_y]
    bufferOffset = _serializer.float64(obj.indi_acc_F_error_y, buffer, bufferOffset);
    // Serialize message field [indi_acc_F_error_z]
    bufferOffset = _serializer.float64(obj.indi_acc_F_error_z, buffer, bufferOffset);
    // Serialize message field [indiF_x]
    bufferOffset = _serializer.float64(obj.indiF_x, buffer, bufferOffset);
    // Serialize message field [indiF_y]
    bufferOffset = _serializer.float64(obj.indiF_y, buffer, bufferOffset);
    // Serialize message field [indiF_z]
    bufferOffset = _serializer.float64(obj.indiF_z, buffer, bufferOffset);
    // Serialize message field [desFq_x]
    bufferOffset = _serializer.float64(obj.desFq_x, buffer, bufferOffset);
    // Serialize message field [desFq_y]
    bufferOffset = _serializer.float64(obj.desFq_y, buffer, bufferOffset);
    // Serialize message field [desFq_z]
    bufferOffset = _serializer.float64(obj.desFq_z, buffer, bufferOffset);
    // Serialize message field [fb_pv_x]
    bufferOffset = _serializer.float64(obj.fb_pv_x, buffer, bufferOffset);
    // Serialize message field [fb_pv_y]
    bufferOffset = _serializer.float64(obj.fb_pv_y, buffer, bufferOffset);
    // Serialize message field [fb_pv_z]
    bufferOffset = _serializer.float64(obj.fb_pv_z, buffer, bufferOffset);
    // Serialize message field [fb_q_x]
    bufferOffset = _serializer.float64(obj.fb_q_x, buffer, bufferOffset);
    // Serialize message field [fb_q_y]
    bufferOffset = _serializer.float64(obj.fb_q_y, buffer, bufferOffset);
    // Serialize message field [fb_q_z]
    bufferOffset = _serializer.float64(obj.fb_q_z, buffer, bufferOffset);
    // Serialize message field [fb_Fq_x]
    bufferOffset = _serializer.float64(obj.fb_Fq_x, buffer, bufferOffset);
    // Serialize message field [fb_Fq_y]
    bufferOffset = _serializer.float64(obj.fb_Fq_y, buffer, bufferOffset);
    // Serialize message field [fb_Fq_z]
    bufferOffset = _serializer.float64(obj.fb_Fq_z, buffer, bufferOffset);
    // Serialize message field [v_modi_x]
    bufferOffset = _serializer.float64(obj.v_modi_x, buffer, bufferOffset);
    // Serialize message field [v_modi_y]
    bufferOffset = _serializer.float64(obj.v_modi_y, buffer, bufferOffset);
    // Serialize message field [v_modi_z]
    bufferOffset = _serializer.float64(obj.v_modi_z, buffer, bufferOffset);
    // Serialize message field [fb_Fq_error_fil_x]
    bufferOffset = _serializer.float64(obj.fb_Fq_error_fil_x, buffer, bufferOffset);
    // Serialize message field [fb_Fq_error_fil_y]
    bufferOffset = _serializer.float64(obj.fb_Fq_error_fil_y, buffer, bufferOffset);
    // Serialize message field [fb_Fq_error_fil_z]
    bufferOffset = _serializer.float64(obj.fb_Fq_error_fil_z, buffer, bufferOffset);
    // Serialize message field [FUpper]
    bufferOffset = _serializer.float64(obj.FUpper, buffer, bufferOffset);
    // Serialize message field [FLower]
    bufferOffset = _serializer.float64(obj.FLower, buffer, bufferOffset);
    // Serialize message field [ref_rpm1]
    bufferOffset = _serializer.float64(obj.ref_rpm1, buffer, bufferOffset);
    // Serialize message field [ref_rpm2]
    bufferOffset = _serializer.float64(obj.ref_rpm2, buffer, bufferOffset);
    // Serialize message field [ref_rpm3]
    bufferOffset = _serializer.float64(obj.ref_rpm3, buffer, bufferOffset);
    // Serialize message field [ref_rpm4]
    bufferOffset = _serializer.float64(obj.ref_rpm4, buffer, bufferOffset);
    // Serialize message field [ref_torque_x]
    bufferOffset = _serializer.float64(obj.ref_torque_x, buffer, bufferOffset);
    // Serialize message field [ref_torque_y]
    bufferOffset = _serializer.float64(obj.ref_torque_y, buffer, bufferOffset);
    // Serialize message field [ref_torque_z]
    bufferOffset = _serializer.float64(obj.ref_torque_z, buffer, bufferOffset);
    // Serialize message field [indi_F_Limit]
    bufferOffset = _serializer.float64(obj.indi_F_Limit, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Px4ctrlDebug
    let len;
    let data = new Px4ctrlDebug(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [fb_a_x]
    data.fb_a_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [fb_a_y]
    data.fb_a_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [fb_a_z]
    data.fb_a_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [des_p_x]
    data.des_p_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [des_p_y]
    data.des_p_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [des_p_z]
    data.des_p_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [des_v_x]
    data.des_v_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [des_v_y]
    data.des_v_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [des_v_z]
    data.des_v_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [des_a_x]
    data.des_a_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [des_a_y]
    data.des_a_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [des_a_z]
    data.des_a_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [des_q_x]
    data.des_q_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [des_q_y]
    data.des_q_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [des_q_z]
    data.des_q_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [des_q_w]
    data.des_q_w = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [est_r]
    data.est_r = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [est_p]
    data.est_p = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [est_y]
    data.est_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ref_r]
    data.ref_r = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ref_p]
    data.ref_p = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ref_y]
    data.ref_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [des_r]
    data.des_r = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [des_p]
    data.des_p = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [des_y]
    data.des_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [exec_err_axisang_x]
    data.exec_err_axisang_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [exec_err_axisang_y]
    data.exec_err_axisang_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [exec_err_axisang_z]
    data.exec_err_axisang_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [exec_err_axisang_ang]
    data.exec_err_axisang_ang = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [fb_axisang_x]
    data.fb_axisang_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [fb_axisang_y]
    data.fb_axisang_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [fb_axisang_z]
    data.fb_axisang_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [fb_axisang_ang]
    data.fb_axisang_ang = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [fb_rate_x]
    data.fb_rate_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [fb_rate_y]
    data.fb_rate_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [fb_rate_z]
    data.fb_rate_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [des_bodyrates_x]
    data.des_bodyrates_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [des_bodyrates_y]
    data.des_bodyrates_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [des_bodyrates_z]
    data.des_bodyrates_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [des_bodyaccs_x]
    data.des_bodyaccs_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [des_bodyaccs_y]
    data.des_bodyaccs_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [des_bodyaccs_z]
    data.des_bodyaccs_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [imu_af_x]
    data.imu_af_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [imu_af_y]
    data.imu_af_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [imu_af_z]
    data.imu_af_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [imu_wf_x]
    data.imu_wf_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [imu_wf_y]
    data.imu_wf_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [imu_wf_z]
    data.imu_wf_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [imu_dw_x]
    data.imu_dw_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [imu_dw_y]
    data.imu_dw_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [imu_dw_z]
    data.imu_dw_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rpm_f1]
    data.rpm_f1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rpm_f2]
    data.rpm_f2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rpm_f3]
    data.rpm_f3 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rpm_f4]
    data.rpm_f4 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cmd_rpm1]
    data.cmd_rpm1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cmd_rpm2]
    data.cmd_rpm2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cmd_rpm3]
    data.cmd_rpm3 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cmd_rpm4]
    data.cmd_rpm4 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ref_thrust1]
    data.ref_thrust1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ref_thrust2]
    data.ref_thrust2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ref_thrust3]
    data.ref_thrust3 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ref_thrust4]
    data.ref_thrust4 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [des_rpm_ave]
    data.des_rpm_ave = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rpm_ave]
    data.rpm_ave = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [des_yaw]
    data.des_yaw = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [des_yaw_rate]
    data.des_yaw_rate = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [des_yaw_acc]
    data.des_yaw_acc = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [thro1]
    data.thro1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [thro2]
    data.thro2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [thro3]
    data.thro3 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [thro4]
    data.thro4 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [delta_q_ang]
    data.delta_q_ang = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [des_q_ang]
    data.des_q_ang = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [des_F]
    data.des_F = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [indi_F]
    data.indi_F = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [hover_percentage]
    data.hover_percentage = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [thr_scale_compensate]
    data.thr_scale_compensate = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [voltage]
    data.voltage = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ref_v_x]
    data.ref_v_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ref_v_y]
    data.ref_v_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ref_v_z]
    data.ref_v_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ref_a_x]
    data.ref_a_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ref_a_y]
    data.ref_a_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ref_a_z]
    data.ref_a_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ref_j_x]
    data.ref_j_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ref_j_y]
    data.ref_j_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ref_j_z]
    data.ref_j_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ref_s_x]
    data.ref_s_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ref_s_y]
    data.ref_s_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ref_s_z]
    data.ref_s_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [x_pos_error]
    data.x_pos_error = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y_pos_error]
    data.y_pos_error = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [z_pos_error]
    data.z_pos_error = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [x_vel_error]
    data.x_vel_error = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y_vel_error]
    data.y_vel_error = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [z_vel_error]
    data.z_vel_error = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ref_thr]
    data.ref_thr = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [des_thr]
    data.des_thr = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [est_thr]
    data.est_thr = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [des_torque_x]
    data.des_torque_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [des_torque_y]
    data.des_torque_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [des_torque_z]
    data.des_torque_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cont_torque_x]
    data.cont_torque_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cont_torque_y]
    data.cont_torque_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cont_torque_z]
    data.cont_torque_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [z_jwj]
    data.z_jwj = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [fbp_thrust1]
    data.fbp_thrust1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [fbi_thrust1]
    data.fbi_thrust1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [fbp_thrust2]
    data.fbp_thrust2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [fbi_thrust2]
    data.fbi_thrust2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [fbp_thrust3]
    data.fbp_thrust3 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [fbi_thrust3]
    data.fbi_thrust3 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [fbp_thrust4]
    data.fbp_thrust4 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [fbi_thrust4]
    data.fbi_thrust4 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [fbp_thrust]
    data.fbp_thrust = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [fbi_thrust]
    data.fbi_thrust = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [fb_thrust]
    data.fb_thrust = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rpm_error1]
    data.rpm_error1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rpm_error_sum1]
    data.rpm_error_sum1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rpm_error2]
    data.rpm_error2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rpm_error_sum2]
    data.rpm_error_sum2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rpm_error3]
    data.rpm_error3 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rpm_error_sum3]
    data.rpm_error_sum3 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rpm_error4]
    data.rpm_error4 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rpm_error_sum4]
    data.rpm_error_sum4 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rate_error_z]
    data.rate_error_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rate_error_sum_z]
    data.rate_error_sum_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [fbp_bodyacc_z]
    data.fbp_bodyacc_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [fbi_bodyacc_z]
    data.fbi_bodyacc_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [des_est_bodyrates_x]
    data.des_est_bodyrates_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [des_est_bodyrates_y]
    data.des_est_bodyrates_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [des_est_bodyrates_z]
    data.des_est_bodyrates_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [acc_error1]
    data.acc_error1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [acc_error2]
    data.acc_error2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [acc_error3]
    data.acc_error3 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [acc_error4]
    data.acc_error4 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [acc_errorsum1]
    data.acc_errorsum1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [acc_errorsum2]
    data.acc_errorsum2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [acc_errorsum3]
    data.acc_errorsum3 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [acc_errorsum4]
    data.acc_errorsum4 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [window_ave1]
    data.window_ave1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [window_ave2]
    data.window_ave2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [window_ave3]
    data.window_ave3 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [window_ave4]
    data.window_ave4 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pos_error_all]
    data.pos_error_all = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pos_error_xy]
    data.pos_error_xy = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pos_error_rmse]
    data.pos_error_rmse = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [vel_error_all]
    data.vel_error_all = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [des_v_all]
    data.des_v_all = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ref_bodyrates_x]
    data.ref_bodyrates_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ref_bodyrates_y]
    data.ref_bodyrates_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ref_bodyrates_z]
    data.ref_bodyrates_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [extTotalAccIndi_x]
    data.extTotalAccIndi_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [extTotalAccIndi_y]
    data.extTotalAccIndi_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [extTotalAccIndi_z]
    data.extTotalAccIndi_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [aw_x]
    data.aw_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [aw_y]
    data.aw_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [aw_z]
    data.aw_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [fb_a_x_fil]
    data.fb_a_x_fil = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [fb_a_y_fil]
    data.fb_a_y_fil = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [fb_a_z_fil]
    data.fb_a_z_fil = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [extF_psi]
    data.extF_psi = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [extF_theta]
    data.extF_theta = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [des_Fq_psi]
    data.des_Fq_psi = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [des_Fq_theta]
    data.des_Fq_theta = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [indi_q_err_ang]
    data.indi_q_err_ang = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [fb_F_x]
    data.fb_F_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [fb_F_y]
    data.fb_F_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [fb_F_z]
    data.fb_F_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [flag]
    data.flag = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [indi_acc_q_error_x]
    data.indi_acc_q_error_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [indi_acc_q_error_y]
    data.indi_acc_q_error_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [indi_acc_q_error_z]
    data.indi_acc_q_error_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [F_error]
    data.F_error = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [indi_acc_F_error_x]
    data.indi_acc_F_error_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [indi_acc_F_error_y]
    data.indi_acc_F_error_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [indi_acc_F_error_z]
    data.indi_acc_F_error_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [indiF_x]
    data.indiF_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [indiF_y]
    data.indiF_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [indiF_z]
    data.indiF_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [desFq_x]
    data.desFq_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [desFq_y]
    data.desFq_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [desFq_z]
    data.desFq_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [fb_pv_x]
    data.fb_pv_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [fb_pv_y]
    data.fb_pv_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [fb_pv_z]
    data.fb_pv_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [fb_q_x]
    data.fb_q_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [fb_q_y]
    data.fb_q_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [fb_q_z]
    data.fb_q_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [fb_Fq_x]
    data.fb_Fq_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [fb_Fq_y]
    data.fb_Fq_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [fb_Fq_z]
    data.fb_Fq_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [v_modi_x]
    data.v_modi_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [v_modi_y]
    data.v_modi_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [v_modi_z]
    data.v_modi_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [fb_Fq_error_fil_x]
    data.fb_Fq_error_fil_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [fb_Fq_error_fil_y]
    data.fb_Fq_error_fil_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [fb_Fq_error_fil_z]
    data.fb_Fq_error_fil_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [FUpper]
    data.FUpper = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [FLower]
    data.FLower = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ref_rpm1]
    data.ref_rpm1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ref_rpm2]
    data.ref_rpm2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ref_rpm3]
    data.ref_rpm3 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ref_rpm4]
    data.ref_rpm4 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ref_torque_x]
    data.ref_torque_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ref_torque_y]
    data.ref_torque_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ref_torque_z]
    data.ref_torque_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [indi_F_Limit]
    data.indi_F_Limit = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 1665;
  }

  static datatype() {
    // Returns string type for a message object
    return 'quadrotor_msgs/Px4ctrlDebug';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '167f6f78f3c36c3f21cf2931478abb8f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Px4ctrlDebug(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.fb_a_x !== undefined) {
      resolved.fb_a_x = msg.fb_a_x;
    }
    else {
      resolved.fb_a_x = 0.0
    }

    if (msg.fb_a_y !== undefined) {
      resolved.fb_a_y = msg.fb_a_y;
    }
    else {
      resolved.fb_a_y = 0.0
    }

    if (msg.fb_a_z !== undefined) {
      resolved.fb_a_z = msg.fb_a_z;
    }
    else {
      resolved.fb_a_z = 0.0
    }

    if (msg.des_p_x !== undefined) {
      resolved.des_p_x = msg.des_p_x;
    }
    else {
      resolved.des_p_x = 0.0
    }

    if (msg.des_p_y !== undefined) {
      resolved.des_p_y = msg.des_p_y;
    }
    else {
      resolved.des_p_y = 0.0
    }

    if (msg.des_p_z !== undefined) {
      resolved.des_p_z = msg.des_p_z;
    }
    else {
      resolved.des_p_z = 0.0
    }

    if (msg.des_v_x !== undefined) {
      resolved.des_v_x = msg.des_v_x;
    }
    else {
      resolved.des_v_x = 0.0
    }

    if (msg.des_v_y !== undefined) {
      resolved.des_v_y = msg.des_v_y;
    }
    else {
      resolved.des_v_y = 0.0
    }

    if (msg.des_v_z !== undefined) {
      resolved.des_v_z = msg.des_v_z;
    }
    else {
      resolved.des_v_z = 0.0
    }

    if (msg.des_a_x !== undefined) {
      resolved.des_a_x = msg.des_a_x;
    }
    else {
      resolved.des_a_x = 0.0
    }

    if (msg.des_a_y !== undefined) {
      resolved.des_a_y = msg.des_a_y;
    }
    else {
      resolved.des_a_y = 0.0
    }

    if (msg.des_a_z !== undefined) {
      resolved.des_a_z = msg.des_a_z;
    }
    else {
      resolved.des_a_z = 0.0
    }

    if (msg.des_q_x !== undefined) {
      resolved.des_q_x = msg.des_q_x;
    }
    else {
      resolved.des_q_x = 0.0
    }

    if (msg.des_q_y !== undefined) {
      resolved.des_q_y = msg.des_q_y;
    }
    else {
      resolved.des_q_y = 0.0
    }

    if (msg.des_q_z !== undefined) {
      resolved.des_q_z = msg.des_q_z;
    }
    else {
      resolved.des_q_z = 0.0
    }

    if (msg.des_q_w !== undefined) {
      resolved.des_q_w = msg.des_q_w;
    }
    else {
      resolved.des_q_w = 0.0
    }

    if (msg.est_r !== undefined) {
      resolved.est_r = msg.est_r;
    }
    else {
      resolved.est_r = 0.0
    }

    if (msg.est_p !== undefined) {
      resolved.est_p = msg.est_p;
    }
    else {
      resolved.est_p = 0.0
    }

    if (msg.est_y !== undefined) {
      resolved.est_y = msg.est_y;
    }
    else {
      resolved.est_y = 0.0
    }

    if (msg.ref_r !== undefined) {
      resolved.ref_r = msg.ref_r;
    }
    else {
      resolved.ref_r = 0.0
    }

    if (msg.ref_p !== undefined) {
      resolved.ref_p = msg.ref_p;
    }
    else {
      resolved.ref_p = 0.0
    }

    if (msg.ref_y !== undefined) {
      resolved.ref_y = msg.ref_y;
    }
    else {
      resolved.ref_y = 0.0
    }

    if (msg.des_r !== undefined) {
      resolved.des_r = msg.des_r;
    }
    else {
      resolved.des_r = 0.0
    }

    if (msg.des_p !== undefined) {
      resolved.des_p = msg.des_p;
    }
    else {
      resolved.des_p = 0.0
    }

    if (msg.des_y !== undefined) {
      resolved.des_y = msg.des_y;
    }
    else {
      resolved.des_y = 0.0
    }

    if (msg.exec_err_axisang_x !== undefined) {
      resolved.exec_err_axisang_x = msg.exec_err_axisang_x;
    }
    else {
      resolved.exec_err_axisang_x = 0.0
    }

    if (msg.exec_err_axisang_y !== undefined) {
      resolved.exec_err_axisang_y = msg.exec_err_axisang_y;
    }
    else {
      resolved.exec_err_axisang_y = 0.0
    }

    if (msg.exec_err_axisang_z !== undefined) {
      resolved.exec_err_axisang_z = msg.exec_err_axisang_z;
    }
    else {
      resolved.exec_err_axisang_z = 0.0
    }

    if (msg.exec_err_axisang_ang !== undefined) {
      resolved.exec_err_axisang_ang = msg.exec_err_axisang_ang;
    }
    else {
      resolved.exec_err_axisang_ang = 0.0
    }

    if (msg.fb_axisang_x !== undefined) {
      resolved.fb_axisang_x = msg.fb_axisang_x;
    }
    else {
      resolved.fb_axisang_x = 0.0
    }

    if (msg.fb_axisang_y !== undefined) {
      resolved.fb_axisang_y = msg.fb_axisang_y;
    }
    else {
      resolved.fb_axisang_y = 0.0
    }

    if (msg.fb_axisang_z !== undefined) {
      resolved.fb_axisang_z = msg.fb_axisang_z;
    }
    else {
      resolved.fb_axisang_z = 0.0
    }

    if (msg.fb_axisang_ang !== undefined) {
      resolved.fb_axisang_ang = msg.fb_axisang_ang;
    }
    else {
      resolved.fb_axisang_ang = 0.0
    }

    if (msg.fb_rate_x !== undefined) {
      resolved.fb_rate_x = msg.fb_rate_x;
    }
    else {
      resolved.fb_rate_x = 0.0
    }

    if (msg.fb_rate_y !== undefined) {
      resolved.fb_rate_y = msg.fb_rate_y;
    }
    else {
      resolved.fb_rate_y = 0.0
    }

    if (msg.fb_rate_z !== undefined) {
      resolved.fb_rate_z = msg.fb_rate_z;
    }
    else {
      resolved.fb_rate_z = 0.0
    }

    if (msg.des_bodyrates_x !== undefined) {
      resolved.des_bodyrates_x = msg.des_bodyrates_x;
    }
    else {
      resolved.des_bodyrates_x = 0.0
    }

    if (msg.des_bodyrates_y !== undefined) {
      resolved.des_bodyrates_y = msg.des_bodyrates_y;
    }
    else {
      resolved.des_bodyrates_y = 0.0
    }

    if (msg.des_bodyrates_z !== undefined) {
      resolved.des_bodyrates_z = msg.des_bodyrates_z;
    }
    else {
      resolved.des_bodyrates_z = 0.0
    }

    if (msg.des_bodyaccs_x !== undefined) {
      resolved.des_bodyaccs_x = msg.des_bodyaccs_x;
    }
    else {
      resolved.des_bodyaccs_x = 0.0
    }

    if (msg.des_bodyaccs_y !== undefined) {
      resolved.des_bodyaccs_y = msg.des_bodyaccs_y;
    }
    else {
      resolved.des_bodyaccs_y = 0.0
    }

    if (msg.des_bodyaccs_z !== undefined) {
      resolved.des_bodyaccs_z = msg.des_bodyaccs_z;
    }
    else {
      resolved.des_bodyaccs_z = 0.0
    }

    if (msg.imu_af_x !== undefined) {
      resolved.imu_af_x = msg.imu_af_x;
    }
    else {
      resolved.imu_af_x = 0.0
    }

    if (msg.imu_af_y !== undefined) {
      resolved.imu_af_y = msg.imu_af_y;
    }
    else {
      resolved.imu_af_y = 0.0
    }

    if (msg.imu_af_z !== undefined) {
      resolved.imu_af_z = msg.imu_af_z;
    }
    else {
      resolved.imu_af_z = 0.0
    }

    if (msg.imu_wf_x !== undefined) {
      resolved.imu_wf_x = msg.imu_wf_x;
    }
    else {
      resolved.imu_wf_x = 0.0
    }

    if (msg.imu_wf_y !== undefined) {
      resolved.imu_wf_y = msg.imu_wf_y;
    }
    else {
      resolved.imu_wf_y = 0.0
    }

    if (msg.imu_wf_z !== undefined) {
      resolved.imu_wf_z = msg.imu_wf_z;
    }
    else {
      resolved.imu_wf_z = 0.0
    }

    if (msg.imu_dw_x !== undefined) {
      resolved.imu_dw_x = msg.imu_dw_x;
    }
    else {
      resolved.imu_dw_x = 0.0
    }

    if (msg.imu_dw_y !== undefined) {
      resolved.imu_dw_y = msg.imu_dw_y;
    }
    else {
      resolved.imu_dw_y = 0.0
    }

    if (msg.imu_dw_z !== undefined) {
      resolved.imu_dw_z = msg.imu_dw_z;
    }
    else {
      resolved.imu_dw_z = 0.0
    }

    if (msg.rpm_f1 !== undefined) {
      resolved.rpm_f1 = msg.rpm_f1;
    }
    else {
      resolved.rpm_f1 = 0.0
    }

    if (msg.rpm_f2 !== undefined) {
      resolved.rpm_f2 = msg.rpm_f2;
    }
    else {
      resolved.rpm_f2 = 0.0
    }

    if (msg.rpm_f3 !== undefined) {
      resolved.rpm_f3 = msg.rpm_f3;
    }
    else {
      resolved.rpm_f3 = 0.0
    }

    if (msg.rpm_f4 !== undefined) {
      resolved.rpm_f4 = msg.rpm_f4;
    }
    else {
      resolved.rpm_f4 = 0.0
    }

    if (msg.cmd_rpm1 !== undefined) {
      resolved.cmd_rpm1 = msg.cmd_rpm1;
    }
    else {
      resolved.cmd_rpm1 = 0.0
    }

    if (msg.cmd_rpm2 !== undefined) {
      resolved.cmd_rpm2 = msg.cmd_rpm2;
    }
    else {
      resolved.cmd_rpm2 = 0.0
    }

    if (msg.cmd_rpm3 !== undefined) {
      resolved.cmd_rpm3 = msg.cmd_rpm3;
    }
    else {
      resolved.cmd_rpm3 = 0.0
    }

    if (msg.cmd_rpm4 !== undefined) {
      resolved.cmd_rpm4 = msg.cmd_rpm4;
    }
    else {
      resolved.cmd_rpm4 = 0.0
    }

    if (msg.ref_thrust1 !== undefined) {
      resolved.ref_thrust1 = msg.ref_thrust1;
    }
    else {
      resolved.ref_thrust1 = 0.0
    }

    if (msg.ref_thrust2 !== undefined) {
      resolved.ref_thrust2 = msg.ref_thrust2;
    }
    else {
      resolved.ref_thrust2 = 0.0
    }

    if (msg.ref_thrust3 !== undefined) {
      resolved.ref_thrust3 = msg.ref_thrust3;
    }
    else {
      resolved.ref_thrust3 = 0.0
    }

    if (msg.ref_thrust4 !== undefined) {
      resolved.ref_thrust4 = msg.ref_thrust4;
    }
    else {
      resolved.ref_thrust4 = 0.0
    }

    if (msg.des_rpm_ave !== undefined) {
      resolved.des_rpm_ave = msg.des_rpm_ave;
    }
    else {
      resolved.des_rpm_ave = 0.0
    }

    if (msg.rpm_ave !== undefined) {
      resolved.rpm_ave = msg.rpm_ave;
    }
    else {
      resolved.rpm_ave = 0.0
    }

    if (msg.des_yaw !== undefined) {
      resolved.des_yaw = msg.des_yaw;
    }
    else {
      resolved.des_yaw = 0.0
    }

    if (msg.des_yaw_rate !== undefined) {
      resolved.des_yaw_rate = msg.des_yaw_rate;
    }
    else {
      resolved.des_yaw_rate = 0.0
    }

    if (msg.des_yaw_acc !== undefined) {
      resolved.des_yaw_acc = msg.des_yaw_acc;
    }
    else {
      resolved.des_yaw_acc = 0.0
    }

    if (msg.thro1 !== undefined) {
      resolved.thro1 = msg.thro1;
    }
    else {
      resolved.thro1 = 0.0
    }

    if (msg.thro2 !== undefined) {
      resolved.thro2 = msg.thro2;
    }
    else {
      resolved.thro2 = 0.0
    }

    if (msg.thro3 !== undefined) {
      resolved.thro3 = msg.thro3;
    }
    else {
      resolved.thro3 = 0.0
    }

    if (msg.thro4 !== undefined) {
      resolved.thro4 = msg.thro4;
    }
    else {
      resolved.thro4 = 0.0
    }

    if (msg.delta_q_ang !== undefined) {
      resolved.delta_q_ang = msg.delta_q_ang;
    }
    else {
      resolved.delta_q_ang = 0.0
    }

    if (msg.des_q_ang !== undefined) {
      resolved.des_q_ang = msg.des_q_ang;
    }
    else {
      resolved.des_q_ang = 0.0
    }

    if (msg.des_F !== undefined) {
      resolved.des_F = msg.des_F;
    }
    else {
      resolved.des_F = 0.0
    }

    if (msg.indi_F !== undefined) {
      resolved.indi_F = msg.indi_F;
    }
    else {
      resolved.indi_F = 0.0
    }

    if (msg.hover_percentage !== undefined) {
      resolved.hover_percentage = msg.hover_percentage;
    }
    else {
      resolved.hover_percentage = 0.0
    }

    if (msg.thr_scale_compensate !== undefined) {
      resolved.thr_scale_compensate = msg.thr_scale_compensate;
    }
    else {
      resolved.thr_scale_compensate = 0.0
    }

    if (msg.voltage !== undefined) {
      resolved.voltage = msg.voltage;
    }
    else {
      resolved.voltage = 0.0
    }

    if (msg.ref_v_x !== undefined) {
      resolved.ref_v_x = msg.ref_v_x;
    }
    else {
      resolved.ref_v_x = 0.0
    }

    if (msg.ref_v_y !== undefined) {
      resolved.ref_v_y = msg.ref_v_y;
    }
    else {
      resolved.ref_v_y = 0.0
    }

    if (msg.ref_v_z !== undefined) {
      resolved.ref_v_z = msg.ref_v_z;
    }
    else {
      resolved.ref_v_z = 0.0
    }

    if (msg.ref_a_x !== undefined) {
      resolved.ref_a_x = msg.ref_a_x;
    }
    else {
      resolved.ref_a_x = 0.0
    }

    if (msg.ref_a_y !== undefined) {
      resolved.ref_a_y = msg.ref_a_y;
    }
    else {
      resolved.ref_a_y = 0.0
    }

    if (msg.ref_a_z !== undefined) {
      resolved.ref_a_z = msg.ref_a_z;
    }
    else {
      resolved.ref_a_z = 0.0
    }

    if (msg.ref_j_x !== undefined) {
      resolved.ref_j_x = msg.ref_j_x;
    }
    else {
      resolved.ref_j_x = 0.0
    }

    if (msg.ref_j_y !== undefined) {
      resolved.ref_j_y = msg.ref_j_y;
    }
    else {
      resolved.ref_j_y = 0.0
    }

    if (msg.ref_j_z !== undefined) {
      resolved.ref_j_z = msg.ref_j_z;
    }
    else {
      resolved.ref_j_z = 0.0
    }

    if (msg.ref_s_x !== undefined) {
      resolved.ref_s_x = msg.ref_s_x;
    }
    else {
      resolved.ref_s_x = 0.0
    }

    if (msg.ref_s_y !== undefined) {
      resolved.ref_s_y = msg.ref_s_y;
    }
    else {
      resolved.ref_s_y = 0.0
    }

    if (msg.ref_s_z !== undefined) {
      resolved.ref_s_z = msg.ref_s_z;
    }
    else {
      resolved.ref_s_z = 0.0
    }

    if (msg.x_pos_error !== undefined) {
      resolved.x_pos_error = msg.x_pos_error;
    }
    else {
      resolved.x_pos_error = 0.0
    }

    if (msg.y_pos_error !== undefined) {
      resolved.y_pos_error = msg.y_pos_error;
    }
    else {
      resolved.y_pos_error = 0.0
    }

    if (msg.z_pos_error !== undefined) {
      resolved.z_pos_error = msg.z_pos_error;
    }
    else {
      resolved.z_pos_error = 0.0
    }

    if (msg.x_vel_error !== undefined) {
      resolved.x_vel_error = msg.x_vel_error;
    }
    else {
      resolved.x_vel_error = 0.0
    }

    if (msg.y_vel_error !== undefined) {
      resolved.y_vel_error = msg.y_vel_error;
    }
    else {
      resolved.y_vel_error = 0.0
    }

    if (msg.z_vel_error !== undefined) {
      resolved.z_vel_error = msg.z_vel_error;
    }
    else {
      resolved.z_vel_error = 0.0
    }

    if (msg.ref_thr !== undefined) {
      resolved.ref_thr = msg.ref_thr;
    }
    else {
      resolved.ref_thr = 0.0
    }

    if (msg.des_thr !== undefined) {
      resolved.des_thr = msg.des_thr;
    }
    else {
      resolved.des_thr = 0.0
    }

    if (msg.est_thr !== undefined) {
      resolved.est_thr = msg.est_thr;
    }
    else {
      resolved.est_thr = 0.0
    }

    if (msg.des_torque_x !== undefined) {
      resolved.des_torque_x = msg.des_torque_x;
    }
    else {
      resolved.des_torque_x = 0.0
    }

    if (msg.des_torque_y !== undefined) {
      resolved.des_torque_y = msg.des_torque_y;
    }
    else {
      resolved.des_torque_y = 0.0
    }

    if (msg.des_torque_z !== undefined) {
      resolved.des_torque_z = msg.des_torque_z;
    }
    else {
      resolved.des_torque_z = 0.0
    }

    if (msg.cont_torque_x !== undefined) {
      resolved.cont_torque_x = msg.cont_torque_x;
    }
    else {
      resolved.cont_torque_x = 0.0
    }

    if (msg.cont_torque_y !== undefined) {
      resolved.cont_torque_y = msg.cont_torque_y;
    }
    else {
      resolved.cont_torque_y = 0.0
    }

    if (msg.cont_torque_z !== undefined) {
      resolved.cont_torque_z = msg.cont_torque_z;
    }
    else {
      resolved.cont_torque_z = 0.0
    }

    if (msg.z_jwj !== undefined) {
      resolved.z_jwj = msg.z_jwj;
    }
    else {
      resolved.z_jwj = 0.0
    }

    if (msg.fbp_thrust1 !== undefined) {
      resolved.fbp_thrust1 = msg.fbp_thrust1;
    }
    else {
      resolved.fbp_thrust1 = 0.0
    }

    if (msg.fbi_thrust1 !== undefined) {
      resolved.fbi_thrust1 = msg.fbi_thrust1;
    }
    else {
      resolved.fbi_thrust1 = 0.0
    }

    if (msg.fbp_thrust2 !== undefined) {
      resolved.fbp_thrust2 = msg.fbp_thrust2;
    }
    else {
      resolved.fbp_thrust2 = 0.0
    }

    if (msg.fbi_thrust2 !== undefined) {
      resolved.fbi_thrust2 = msg.fbi_thrust2;
    }
    else {
      resolved.fbi_thrust2 = 0.0
    }

    if (msg.fbp_thrust3 !== undefined) {
      resolved.fbp_thrust3 = msg.fbp_thrust3;
    }
    else {
      resolved.fbp_thrust3 = 0.0
    }

    if (msg.fbi_thrust3 !== undefined) {
      resolved.fbi_thrust3 = msg.fbi_thrust3;
    }
    else {
      resolved.fbi_thrust3 = 0.0
    }

    if (msg.fbp_thrust4 !== undefined) {
      resolved.fbp_thrust4 = msg.fbp_thrust4;
    }
    else {
      resolved.fbp_thrust4 = 0.0
    }

    if (msg.fbi_thrust4 !== undefined) {
      resolved.fbi_thrust4 = msg.fbi_thrust4;
    }
    else {
      resolved.fbi_thrust4 = 0.0
    }

    if (msg.fbp_thrust !== undefined) {
      resolved.fbp_thrust = msg.fbp_thrust;
    }
    else {
      resolved.fbp_thrust = 0.0
    }

    if (msg.fbi_thrust !== undefined) {
      resolved.fbi_thrust = msg.fbi_thrust;
    }
    else {
      resolved.fbi_thrust = 0.0
    }

    if (msg.fb_thrust !== undefined) {
      resolved.fb_thrust = msg.fb_thrust;
    }
    else {
      resolved.fb_thrust = 0.0
    }

    if (msg.rpm_error1 !== undefined) {
      resolved.rpm_error1 = msg.rpm_error1;
    }
    else {
      resolved.rpm_error1 = 0.0
    }

    if (msg.rpm_error_sum1 !== undefined) {
      resolved.rpm_error_sum1 = msg.rpm_error_sum1;
    }
    else {
      resolved.rpm_error_sum1 = 0.0
    }

    if (msg.rpm_error2 !== undefined) {
      resolved.rpm_error2 = msg.rpm_error2;
    }
    else {
      resolved.rpm_error2 = 0.0
    }

    if (msg.rpm_error_sum2 !== undefined) {
      resolved.rpm_error_sum2 = msg.rpm_error_sum2;
    }
    else {
      resolved.rpm_error_sum2 = 0.0
    }

    if (msg.rpm_error3 !== undefined) {
      resolved.rpm_error3 = msg.rpm_error3;
    }
    else {
      resolved.rpm_error3 = 0.0
    }

    if (msg.rpm_error_sum3 !== undefined) {
      resolved.rpm_error_sum3 = msg.rpm_error_sum3;
    }
    else {
      resolved.rpm_error_sum3 = 0.0
    }

    if (msg.rpm_error4 !== undefined) {
      resolved.rpm_error4 = msg.rpm_error4;
    }
    else {
      resolved.rpm_error4 = 0.0
    }

    if (msg.rpm_error_sum4 !== undefined) {
      resolved.rpm_error_sum4 = msg.rpm_error_sum4;
    }
    else {
      resolved.rpm_error_sum4 = 0.0
    }

    if (msg.rate_error_z !== undefined) {
      resolved.rate_error_z = msg.rate_error_z;
    }
    else {
      resolved.rate_error_z = 0.0
    }

    if (msg.rate_error_sum_z !== undefined) {
      resolved.rate_error_sum_z = msg.rate_error_sum_z;
    }
    else {
      resolved.rate_error_sum_z = 0.0
    }

    if (msg.fbp_bodyacc_z !== undefined) {
      resolved.fbp_bodyacc_z = msg.fbp_bodyacc_z;
    }
    else {
      resolved.fbp_bodyacc_z = 0.0
    }

    if (msg.fbi_bodyacc_z !== undefined) {
      resolved.fbi_bodyacc_z = msg.fbi_bodyacc_z;
    }
    else {
      resolved.fbi_bodyacc_z = 0.0
    }

    if (msg.des_est_bodyrates_x !== undefined) {
      resolved.des_est_bodyrates_x = msg.des_est_bodyrates_x;
    }
    else {
      resolved.des_est_bodyrates_x = 0.0
    }

    if (msg.des_est_bodyrates_y !== undefined) {
      resolved.des_est_bodyrates_y = msg.des_est_bodyrates_y;
    }
    else {
      resolved.des_est_bodyrates_y = 0.0
    }

    if (msg.des_est_bodyrates_z !== undefined) {
      resolved.des_est_bodyrates_z = msg.des_est_bodyrates_z;
    }
    else {
      resolved.des_est_bodyrates_z = 0.0
    }

    if (msg.acc_error1 !== undefined) {
      resolved.acc_error1 = msg.acc_error1;
    }
    else {
      resolved.acc_error1 = 0.0
    }

    if (msg.acc_error2 !== undefined) {
      resolved.acc_error2 = msg.acc_error2;
    }
    else {
      resolved.acc_error2 = 0.0
    }

    if (msg.acc_error3 !== undefined) {
      resolved.acc_error3 = msg.acc_error3;
    }
    else {
      resolved.acc_error3 = 0.0
    }

    if (msg.acc_error4 !== undefined) {
      resolved.acc_error4 = msg.acc_error4;
    }
    else {
      resolved.acc_error4 = 0.0
    }

    if (msg.acc_errorsum1 !== undefined) {
      resolved.acc_errorsum1 = msg.acc_errorsum1;
    }
    else {
      resolved.acc_errorsum1 = 0.0
    }

    if (msg.acc_errorsum2 !== undefined) {
      resolved.acc_errorsum2 = msg.acc_errorsum2;
    }
    else {
      resolved.acc_errorsum2 = 0.0
    }

    if (msg.acc_errorsum3 !== undefined) {
      resolved.acc_errorsum3 = msg.acc_errorsum3;
    }
    else {
      resolved.acc_errorsum3 = 0.0
    }

    if (msg.acc_errorsum4 !== undefined) {
      resolved.acc_errorsum4 = msg.acc_errorsum4;
    }
    else {
      resolved.acc_errorsum4 = 0.0
    }

    if (msg.window_ave1 !== undefined) {
      resolved.window_ave1 = msg.window_ave1;
    }
    else {
      resolved.window_ave1 = 0.0
    }

    if (msg.window_ave2 !== undefined) {
      resolved.window_ave2 = msg.window_ave2;
    }
    else {
      resolved.window_ave2 = 0.0
    }

    if (msg.window_ave3 !== undefined) {
      resolved.window_ave3 = msg.window_ave3;
    }
    else {
      resolved.window_ave3 = 0.0
    }

    if (msg.window_ave4 !== undefined) {
      resolved.window_ave4 = msg.window_ave4;
    }
    else {
      resolved.window_ave4 = 0.0
    }

    if (msg.pos_error_all !== undefined) {
      resolved.pos_error_all = msg.pos_error_all;
    }
    else {
      resolved.pos_error_all = 0.0
    }

    if (msg.pos_error_xy !== undefined) {
      resolved.pos_error_xy = msg.pos_error_xy;
    }
    else {
      resolved.pos_error_xy = 0.0
    }

    if (msg.pos_error_rmse !== undefined) {
      resolved.pos_error_rmse = msg.pos_error_rmse;
    }
    else {
      resolved.pos_error_rmse = 0.0
    }

    if (msg.vel_error_all !== undefined) {
      resolved.vel_error_all = msg.vel_error_all;
    }
    else {
      resolved.vel_error_all = 0.0
    }

    if (msg.des_v_all !== undefined) {
      resolved.des_v_all = msg.des_v_all;
    }
    else {
      resolved.des_v_all = 0.0
    }

    if (msg.ref_bodyrates_x !== undefined) {
      resolved.ref_bodyrates_x = msg.ref_bodyrates_x;
    }
    else {
      resolved.ref_bodyrates_x = 0.0
    }

    if (msg.ref_bodyrates_y !== undefined) {
      resolved.ref_bodyrates_y = msg.ref_bodyrates_y;
    }
    else {
      resolved.ref_bodyrates_y = 0.0
    }

    if (msg.ref_bodyrates_z !== undefined) {
      resolved.ref_bodyrates_z = msg.ref_bodyrates_z;
    }
    else {
      resolved.ref_bodyrates_z = 0.0
    }

    if (msg.extTotalAccIndi_x !== undefined) {
      resolved.extTotalAccIndi_x = msg.extTotalAccIndi_x;
    }
    else {
      resolved.extTotalAccIndi_x = 0.0
    }

    if (msg.extTotalAccIndi_y !== undefined) {
      resolved.extTotalAccIndi_y = msg.extTotalAccIndi_y;
    }
    else {
      resolved.extTotalAccIndi_y = 0.0
    }

    if (msg.extTotalAccIndi_z !== undefined) {
      resolved.extTotalAccIndi_z = msg.extTotalAccIndi_z;
    }
    else {
      resolved.extTotalAccIndi_z = 0.0
    }

    if (msg.aw_x !== undefined) {
      resolved.aw_x = msg.aw_x;
    }
    else {
      resolved.aw_x = 0.0
    }

    if (msg.aw_y !== undefined) {
      resolved.aw_y = msg.aw_y;
    }
    else {
      resolved.aw_y = 0.0
    }

    if (msg.aw_z !== undefined) {
      resolved.aw_z = msg.aw_z;
    }
    else {
      resolved.aw_z = 0.0
    }

    if (msg.fb_a_x_fil !== undefined) {
      resolved.fb_a_x_fil = msg.fb_a_x_fil;
    }
    else {
      resolved.fb_a_x_fil = 0.0
    }

    if (msg.fb_a_y_fil !== undefined) {
      resolved.fb_a_y_fil = msg.fb_a_y_fil;
    }
    else {
      resolved.fb_a_y_fil = 0.0
    }

    if (msg.fb_a_z_fil !== undefined) {
      resolved.fb_a_z_fil = msg.fb_a_z_fil;
    }
    else {
      resolved.fb_a_z_fil = 0.0
    }

    if (msg.extF_psi !== undefined) {
      resolved.extF_psi = msg.extF_psi;
    }
    else {
      resolved.extF_psi = 0.0
    }

    if (msg.extF_theta !== undefined) {
      resolved.extF_theta = msg.extF_theta;
    }
    else {
      resolved.extF_theta = 0.0
    }

    if (msg.des_Fq_psi !== undefined) {
      resolved.des_Fq_psi = msg.des_Fq_psi;
    }
    else {
      resolved.des_Fq_psi = 0.0
    }

    if (msg.des_Fq_theta !== undefined) {
      resolved.des_Fq_theta = msg.des_Fq_theta;
    }
    else {
      resolved.des_Fq_theta = 0.0
    }

    if (msg.indi_q_err_ang !== undefined) {
      resolved.indi_q_err_ang = msg.indi_q_err_ang;
    }
    else {
      resolved.indi_q_err_ang = 0.0
    }

    if (msg.fb_F_x !== undefined) {
      resolved.fb_F_x = msg.fb_F_x;
    }
    else {
      resolved.fb_F_x = 0.0
    }

    if (msg.fb_F_y !== undefined) {
      resolved.fb_F_y = msg.fb_F_y;
    }
    else {
      resolved.fb_F_y = 0.0
    }

    if (msg.fb_F_z !== undefined) {
      resolved.fb_F_z = msg.fb_F_z;
    }
    else {
      resolved.fb_F_z = 0.0
    }

    if (msg.flag !== undefined) {
      resolved.flag = msg.flag;
    }
    else {
      resolved.flag = 0
    }

    if (msg.indi_acc_q_error_x !== undefined) {
      resolved.indi_acc_q_error_x = msg.indi_acc_q_error_x;
    }
    else {
      resolved.indi_acc_q_error_x = 0.0
    }

    if (msg.indi_acc_q_error_y !== undefined) {
      resolved.indi_acc_q_error_y = msg.indi_acc_q_error_y;
    }
    else {
      resolved.indi_acc_q_error_y = 0.0
    }

    if (msg.indi_acc_q_error_z !== undefined) {
      resolved.indi_acc_q_error_z = msg.indi_acc_q_error_z;
    }
    else {
      resolved.indi_acc_q_error_z = 0.0
    }

    if (msg.F_error !== undefined) {
      resolved.F_error = msg.F_error;
    }
    else {
      resolved.F_error = 0.0
    }

    if (msg.indi_acc_F_error_x !== undefined) {
      resolved.indi_acc_F_error_x = msg.indi_acc_F_error_x;
    }
    else {
      resolved.indi_acc_F_error_x = 0.0
    }

    if (msg.indi_acc_F_error_y !== undefined) {
      resolved.indi_acc_F_error_y = msg.indi_acc_F_error_y;
    }
    else {
      resolved.indi_acc_F_error_y = 0.0
    }

    if (msg.indi_acc_F_error_z !== undefined) {
      resolved.indi_acc_F_error_z = msg.indi_acc_F_error_z;
    }
    else {
      resolved.indi_acc_F_error_z = 0.0
    }

    if (msg.indiF_x !== undefined) {
      resolved.indiF_x = msg.indiF_x;
    }
    else {
      resolved.indiF_x = 0.0
    }

    if (msg.indiF_y !== undefined) {
      resolved.indiF_y = msg.indiF_y;
    }
    else {
      resolved.indiF_y = 0.0
    }

    if (msg.indiF_z !== undefined) {
      resolved.indiF_z = msg.indiF_z;
    }
    else {
      resolved.indiF_z = 0.0
    }

    if (msg.desFq_x !== undefined) {
      resolved.desFq_x = msg.desFq_x;
    }
    else {
      resolved.desFq_x = 0.0
    }

    if (msg.desFq_y !== undefined) {
      resolved.desFq_y = msg.desFq_y;
    }
    else {
      resolved.desFq_y = 0.0
    }

    if (msg.desFq_z !== undefined) {
      resolved.desFq_z = msg.desFq_z;
    }
    else {
      resolved.desFq_z = 0.0
    }

    if (msg.fb_pv_x !== undefined) {
      resolved.fb_pv_x = msg.fb_pv_x;
    }
    else {
      resolved.fb_pv_x = 0.0
    }

    if (msg.fb_pv_y !== undefined) {
      resolved.fb_pv_y = msg.fb_pv_y;
    }
    else {
      resolved.fb_pv_y = 0.0
    }

    if (msg.fb_pv_z !== undefined) {
      resolved.fb_pv_z = msg.fb_pv_z;
    }
    else {
      resolved.fb_pv_z = 0.0
    }

    if (msg.fb_q_x !== undefined) {
      resolved.fb_q_x = msg.fb_q_x;
    }
    else {
      resolved.fb_q_x = 0.0
    }

    if (msg.fb_q_y !== undefined) {
      resolved.fb_q_y = msg.fb_q_y;
    }
    else {
      resolved.fb_q_y = 0.0
    }

    if (msg.fb_q_z !== undefined) {
      resolved.fb_q_z = msg.fb_q_z;
    }
    else {
      resolved.fb_q_z = 0.0
    }

    if (msg.fb_Fq_x !== undefined) {
      resolved.fb_Fq_x = msg.fb_Fq_x;
    }
    else {
      resolved.fb_Fq_x = 0.0
    }

    if (msg.fb_Fq_y !== undefined) {
      resolved.fb_Fq_y = msg.fb_Fq_y;
    }
    else {
      resolved.fb_Fq_y = 0.0
    }

    if (msg.fb_Fq_z !== undefined) {
      resolved.fb_Fq_z = msg.fb_Fq_z;
    }
    else {
      resolved.fb_Fq_z = 0.0
    }

    if (msg.v_modi_x !== undefined) {
      resolved.v_modi_x = msg.v_modi_x;
    }
    else {
      resolved.v_modi_x = 0.0
    }

    if (msg.v_modi_y !== undefined) {
      resolved.v_modi_y = msg.v_modi_y;
    }
    else {
      resolved.v_modi_y = 0.0
    }

    if (msg.v_modi_z !== undefined) {
      resolved.v_modi_z = msg.v_modi_z;
    }
    else {
      resolved.v_modi_z = 0.0
    }

    if (msg.fb_Fq_error_fil_x !== undefined) {
      resolved.fb_Fq_error_fil_x = msg.fb_Fq_error_fil_x;
    }
    else {
      resolved.fb_Fq_error_fil_x = 0.0
    }

    if (msg.fb_Fq_error_fil_y !== undefined) {
      resolved.fb_Fq_error_fil_y = msg.fb_Fq_error_fil_y;
    }
    else {
      resolved.fb_Fq_error_fil_y = 0.0
    }

    if (msg.fb_Fq_error_fil_z !== undefined) {
      resolved.fb_Fq_error_fil_z = msg.fb_Fq_error_fil_z;
    }
    else {
      resolved.fb_Fq_error_fil_z = 0.0
    }

    if (msg.FUpper !== undefined) {
      resolved.FUpper = msg.FUpper;
    }
    else {
      resolved.FUpper = 0.0
    }

    if (msg.FLower !== undefined) {
      resolved.FLower = msg.FLower;
    }
    else {
      resolved.FLower = 0.0
    }

    if (msg.ref_rpm1 !== undefined) {
      resolved.ref_rpm1 = msg.ref_rpm1;
    }
    else {
      resolved.ref_rpm1 = 0.0
    }

    if (msg.ref_rpm2 !== undefined) {
      resolved.ref_rpm2 = msg.ref_rpm2;
    }
    else {
      resolved.ref_rpm2 = 0.0
    }

    if (msg.ref_rpm3 !== undefined) {
      resolved.ref_rpm3 = msg.ref_rpm3;
    }
    else {
      resolved.ref_rpm3 = 0.0
    }

    if (msg.ref_rpm4 !== undefined) {
      resolved.ref_rpm4 = msg.ref_rpm4;
    }
    else {
      resolved.ref_rpm4 = 0.0
    }

    if (msg.ref_torque_x !== undefined) {
      resolved.ref_torque_x = msg.ref_torque_x;
    }
    else {
      resolved.ref_torque_x = 0.0
    }

    if (msg.ref_torque_y !== undefined) {
      resolved.ref_torque_y = msg.ref_torque_y;
    }
    else {
      resolved.ref_torque_y = 0.0
    }

    if (msg.ref_torque_z !== undefined) {
      resolved.ref_torque_z = msg.ref_torque_z;
    }
    else {
      resolved.ref_torque_z = 0.0
    }

    if (msg.indi_F_Limit !== undefined) {
      resolved.indi_F_Limit = msg.indi_F_Limit;
    }
    else {
      resolved.indi_F_Limit = 0.0
    }

    return resolved;
    }
};

module.exports = Px4ctrlDebug;
