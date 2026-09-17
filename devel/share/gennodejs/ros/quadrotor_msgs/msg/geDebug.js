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

class geDebug {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.odom_roll = null;
      this.odom_pitch = null;
      this.odom_yaw = null;
      this.odomC_roll = null;
      this.odomC_pitch = null;
      this.odomC_yaw = null;
      this.ge_angle_roll = null;
      this.ge_angle_pitch = null;
      this.ge_angle_yaw = null;
      this.imu_a_x = null;
      this.imu_a_y = null;
      this.imu_a_z = null;
      this.imu_a_fil_x = null;
      this.imu_a_fil_y = null;
      this.imu_a_fil_z = null;
      this.imu_w_x = null;
      this.imu_w_y = null;
      this.imu_w_z = null;
      this.imu_w_fil_x = null;
      this.imu_w_fil_y = null;
      this.imu_w_fil_z = null;
      this.imu_w_c_x = null;
      this.imu_w_c_y = null;
      this.imu_w_c_z = null;
      this.imu_beta_fil_x = null;
      this.imu_beta_fil_y = null;
      this.imu_beta_fil_z = null;
      this.rpm1 = null;
      this.rpm2 = null;
      this.rpm3 = null;
      this.rpm4 = null;
      this.rpm1_fil = null;
      this.rpm2_fil = null;
      this.rpm3_fil = null;
      this.rpm4_fil = null;
      this.sumrpm2 = null;
      this.thrust_force = null;
      this.thrust_acc = null;
      this.sumrpm2_fil = null;
      this.thrust_force_fil = null;
      this.thrust_acc_fil = null;
      this.acc_world_x = null;
      this.acc_world_y = null;
      this.acc_world_z = null;
      this.ge_acc_x = null;
      this.ge_acc_y = null;
      this.ge_acc_z = null;
      this.ge_bodytorque_x = null;
      this.ge_bodytorque_y = null;
      this.ge_bodytorque_z = null;
      this.des_ge_bodytorque_x = null;
      this.des_ge_bodytorque_y = null;
      this.des_ge_bodytorque_z = null;
      this.d_ge_torque_x = null;
      this.d_ge_torque_y = null;
      this.d_ge_torque_z = null;
      this.diff_ge_torque_x = null;
      this.diff_ge_torque_y = null;
      this.diff_ge_torque_z = null;
      this.ext_torque_x = null;
      this.ext_torque_y = null;
      this.ext_torque_z = null;
      this.predict_ext_torque_x = null;
      this.predict_ext_torque_y = null;
      this.predict_ext_torque_z = null;
      this.des_p_x = null;
      this.des_p_y = null;
      this.des_p_z = null;
      this.des_v_x = null;
      this.des_v_y = null;
      this.des_v_z = null;
      this.des_a_x = null;
      this.des_a_y = null;
      this.des_a_z = null;
      this.des_j_x = null;
      this.des_j_y = null;
      this.des_j_z = null;
      this.des_s_x = null;
      this.des_s_y = null;
      this.des_s_z = null;
      this.des_yaw = null;
      this.des_yaw_rate = null;
      this.des_yaw_acc = null;
      this.flatctrl_q_w = null;
      this.flatctrl_q_x = null;
      this.flatctrl_q_y = null;
      this.flatctrl_q_z = null;
      this.flatctrl_roll = null;
      this.flatctrl_pitch = null;
      this.flatctrl_yaw = null;
      this.flatctrl_bodyrate_x = null;
      this.flatctrl_bodyrate_y = null;
      this.flatctrl_bodyrate_z = null;
      this.flatctrl_beta_x = null;
      this.flatctrl_beta_y = null;
      this.flatctrl_beta_z = null;
      this.flatctrl_thrust = null;
      this.flatctrl_torque_x = null;
      this.flatctrl_torque_y = null;
      this.flatctrl_torque_z = null;
      this.flatctrl_ge_acc_x = null;
      this.flatctrl_ge_acc_y = null;
      this.flatctrl_ge_acc_z = null;
      this.flatctrl_drag_acc_x = null;
      this.flatctrl_drag_acc_y = null;
      this.flatctrl_drag_acc_z = null;
      this.flatctrl_ext_acc_x = null;
      this.flatctrl_ext_acc_y = null;
      this.flatctrl_ext_acc_z = null;
      this.ge_limit_k = null;
      this.fb_vel_x = null;
      this.fb_vel_y = null;
      this.fb_vel_z = null;
      this.cmd_vel_x = null;
      this.cmd_vel_y = null;
      this.cmd_vel_z = null;
      this.compensate_acc_x = null;
      this.compensate_acc_y = null;
      this.compensate_acc_z = null;
      this.fb_acc_x = null;
      this.fb_acc_y = null;
      this.fb_acc_z = null;
      this.cmd_acc_x = null;
      this.cmd_acc_y = null;
      this.cmd_acc_z = null;
      this.cmd_acc_norm = null;
      this.cmd_acc_norm_by_body = null;
      this.cmd_q_w = null;
      this.cmd_q_x = null;
      this.cmd_q_y = null;
      this.cmd_q_z = null;
      this.cmd_roll = null;
      this.cmd_pitch = null;
      this.cmd_yaw = null;
      this.fb_bodyrate_x = null;
      this.fb_bodyrate_y = null;
      this.fb_bodyrate_z = null;
      this.cmd_bodyrate_x = null;
      this.cmd_bodyrate_y = null;
      this.cmd_bodyrate_z = null;
      this.fb_beta_x = null;
      this.fb_beta_y = null;
      this.fb_beta_z = null;
      this.cmd_beta_x = null;
      this.cmd_beta_y = null;
      this.cmd_beta_z = null;
      this.compensate_torque_x = null;
      this.compensate_torque_y = null;
      this.compensate_torque_z = null;
      this.bodytorque_x = null;
      this.bodytorque_y = null;
      this.bodytorque_z = null;
      this.cmd_torque_body_x = null;
      this.cmd_torque_body_y = null;
      this.cmd_torque_body_z = null;
      this.diff_indi_torque_x = null;
      this.diff_indi_torque_y = null;
      this.diff_indi_torque_z = null;
      this.diff_torque_x = null;
      this.diff_torque_y = null;
      this.diff_torque_z = null;
      this.cmd_rpm1 = null;
      this.cmd_rpm2 = null;
      this.cmd_rpm3 = null;
      this.cmd_rpm4 = null;
      this.cmd_sumrpm2 = null;
      this.cmd_sumrpm2_to_acc = null;
      this.fb_thrust1 = null;
      this.fb_thrust2 = null;
      this.fb_thrust3 = null;
      this.fb_thrust4 = null;
      this.ref_thrust1 = null;
      this.ref_thrust2 = null;
      this.ref_thrust3 = null;
      this.ref_thrust4 = null;
      this.cmd_thrust1 = null;
      this.cmd_thrust2 = null;
      this.cmd_thrust3 = null;
      this.cmd_thrust4 = null;
      this.Fgh = null;
      this.ref_thrust_acc = null;
      this.thrust_acc_fil_x = null;
      this.thrust_acc_fil_y = null;
      this.thrust_acc_fil_z = null;
      this.imu_acc_fil_x = null;
      this.imu_acc_fil_y = null;
      this.imu_acc_fil_z = null;
      this.extforce_acc_x = null;
      this.extforce_acc_y = null;
      this.extforce_acc_z = null;
      this.extforce_acc_fil_x = null;
      this.extforce_acc_fil_y = null;
      this.extforce_acc_fil_z = null;
      this.poly_thrust = null;
      this.fb_thrust = null;
      this.sum_thrust = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('odom_roll')) {
        this.odom_roll = initObj.odom_roll
      }
      else {
        this.odom_roll = 0.0;
      }
      if (initObj.hasOwnProperty('odom_pitch')) {
        this.odom_pitch = initObj.odom_pitch
      }
      else {
        this.odom_pitch = 0.0;
      }
      if (initObj.hasOwnProperty('odom_yaw')) {
        this.odom_yaw = initObj.odom_yaw
      }
      else {
        this.odom_yaw = 0.0;
      }
      if (initObj.hasOwnProperty('odomC_roll')) {
        this.odomC_roll = initObj.odomC_roll
      }
      else {
        this.odomC_roll = 0.0;
      }
      if (initObj.hasOwnProperty('odomC_pitch')) {
        this.odomC_pitch = initObj.odomC_pitch
      }
      else {
        this.odomC_pitch = 0.0;
      }
      if (initObj.hasOwnProperty('odomC_yaw')) {
        this.odomC_yaw = initObj.odomC_yaw
      }
      else {
        this.odomC_yaw = 0.0;
      }
      if (initObj.hasOwnProperty('ge_angle_roll')) {
        this.ge_angle_roll = initObj.ge_angle_roll
      }
      else {
        this.ge_angle_roll = 0.0;
      }
      if (initObj.hasOwnProperty('ge_angle_pitch')) {
        this.ge_angle_pitch = initObj.ge_angle_pitch
      }
      else {
        this.ge_angle_pitch = 0.0;
      }
      if (initObj.hasOwnProperty('ge_angle_yaw')) {
        this.ge_angle_yaw = initObj.ge_angle_yaw
      }
      else {
        this.ge_angle_yaw = 0.0;
      }
      if (initObj.hasOwnProperty('imu_a_x')) {
        this.imu_a_x = initObj.imu_a_x
      }
      else {
        this.imu_a_x = 0.0;
      }
      if (initObj.hasOwnProperty('imu_a_y')) {
        this.imu_a_y = initObj.imu_a_y
      }
      else {
        this.imu_a_y = 0.0;
      }
      if (initObj.hasOwnProperty('imu_a_z')) {
        this.imu_a_z = initObj.imu_a_z
      }
      else {
        this.imu_a_z = 0.0;
      }
      if (initObj.hasOwnProperty('imu_a_fil_x')) {
        this.imu_a_fil_x = initObj.imu_a_fil_x
      }
      else {
        this.imu_a_fil_x = 0.0;
      }
      if (initObj.hasOwnProperty('imu_a_fil_y')) {
        this.imu_a_fil_y = initObj.imu_a_fil_y
      }
      else {
        this.imu_a_fil_y = 0.0;
      }
      if (initObj.hasOwnProperty('imu_a_fil_z')) {
        this.imu_a_fil_z = initObj.imu_a_fil_z
      }
      else {
        this.imu_a_fil_z = 0.0;
      }
      if (initObj.hasOwnProperty('imu_w_x')) {
        this.imu_w_x = initObj.imu_w_x
      }
      else {
        this.imu_w_x = 0.0;
      }
      if (initObj.hasOwnProperty('imu_w_y')) {
        this.imu_w_y = initObj.imu_w_y
      }
      else {
        this.imu_w_y = 0.0;
      }
      if (initObj.hasOwnProperty('imu_w_z')) {
        this.imu_w_z = initObj.imu_w_z
      }
      else {
        this.imu_w_z = 0.0;
      }
      if (initObj.hasOwnProperty('imu_w_fil_x')) {
        this.imu_w_fil_x = initObj.imu_w_fil_x
      }
      else {
        this.imu_w_fil_x = 0.0;
      }
      if (initObj.hasOwnProperty('imu_w_fil_y')) {
        this.imu_w_fil_y = initObj.imu_w_fil_y
      }
      else {
        this.imu_w_fil_y = 0.0;
      }
      if (initObj.hasOwnProperty('imu_w_fil_z')) {
        this.imu_w_fil_z = initObj.imu_w_fil_z
      }
      else {
        this.imu_w_fil_z = 0.0;
      }
      if (initObj.hasOwnProperty('imu_w_c_x')) {
        this.imu_w_c_x = initObj.imu_w_c_x
      }
      else {
        this.imu_w_c_x = 0.0;
      }
      if (initObj.hasOwnProperty('imu_w_c_y')) {
        this.imu_w_c_y = initObj.imu_w_c_y
      }
      else {
        this.imu_w_c_y = 0.0;
      }
      if (initObj.hasOwnProperty('imu_w_c_z')) {
        this.imu_w_c_z = initObj.imu_w_c_z
      }
      else {
        this.imu_w_c_z = 0.0;
      }
      if (initObj.hasOwnProperty('imu_beta_fil_x')) {
        this.imu_beta_fil_x = initObj.imu_beta_fil_x
      }
      else {
        this.imu_beta_fil_x = 0.0;
      }
      if (initObj.hasOwnProperty('imu_beta_fil_y')) {
        this.imu_beta_fil_y = initObj.imu_beta_fil_y
      }
      else {
        this.imu_beta_fil_y = 0.0;
      }
      if (initObj.hasOwnProperty('imu_beta_fil_z')) {
        this.imu_beta_fil_z = initObj.imu_beta_fil_z
      }
      else {
        this.imu_beta_fil_z = 0.0;
      }
      if (initObj.hasOwnProperty('rpm1')) {
        this.rpm1 = initObj.rpm1
      }
      else {
        this.rpm1 = 0.0;
      }
      if (initObj.hasOwnProperty('rpm2')) {
        this.rpm2 = initObj.rpm2
      }
      else {
        this.rpm2 = 0.0;
      }
      if (initObj.hasOwnProperty('rpm3')) {
        this.rpm3 = initObj.rpm3
      }
      else {
        this.rpm3 = 0.0;
      }
      if (initObj.hasOwnProperty('rpm4')) {
        this.rpm4 = initObj.rpm4
      }
      else {
        this.rpm4 = 0.0;
      }
      if (initObj.hasOwnProperty('rpm1_fil')) {
        this.rpm1_fil = initObj.rpm1_fil
      }
      else {
        this.rpm1_fil = 0.0;
      }
      if (initObj.hasOwnProperty('rpm2_fil')) {
        this.rpm2_fil = initObj.rpm2_fil
      }
      else {
        this.rpm2_fil = 0.0;
      }
      if (initObj.hasOwnProperty('rpm3_fil')) {
        this.rpm3_fil = initObj.rpm3_fil
      }
      else {
        this.rpm3_fil = 0.0;
      }
      if (initObj.hasOwnProperty('rpm4_fil')) {
        this.rpm4_fil = initObj.rpm4_fil
      }
      else {
        this.rpm4_fil = 0.0;
      }
      if (initObj.hasOwnProperty('sumrpm2')) {
        this.sumrpm2 = initObj.sumrpm2
      }
      else {
        this.sumrpm2 = 0.0;
      }
      if (initObj.hasOwnProperty('thrust_force')) {
        this.thrust_force = initObj.thrust_force
      }
      else {
        this.thrust_force = 0.0;
      }
      if (initObj.hasOwnProperty('thrust_acc')) {
        this.thrust_acc = initObj.thrust_acc
      }
      else {
        this.thrust_acc = 0.0;
      }
      if (initObj.hasOwnProperty('sumrpm2_fil')) {
        this.sumrpm2_fil = initObj.sumrpm2_fil
      }
      else {
        this.sumrpm2_fil = 0.0;
      }
      if (initObj.hasOwnProperty('thrust_force_fil')) {
        this.thrust_force_fil = initObj.thrust_force_fil
      }
      else {
        this.thrust_force_fil = 0.0;
      }
      if (initObj.hasOwnProperty('thrust_acc_fil')) {
        this.thrust_acc_fil = initObj.thrust_acc_fil
      }
      else {
        this.thrust_acc_fil = 0.0;
      }
      if (initObj.hasOwnProperty('acc_world_x')) {
        this.acc_world_x = initObj.acc_world_x
      }
      else {
        this.acc_world_x = 0.0;
      }
      if (initObj.hasOwnProperty('acc_world_y')) {
        this.acc_world_y = initObj.acc_world_y
      }
      else {
        this.acc_world_y = 0.0;
      }
      if (initObj.hasOwnProperty('acc_world_z')) {
        this.acc_world_z = initObj.acc_world_z
      }
      else {
        this.acc_world_z = 0.0;
      }
      if (initObj.hasOwnProperty('ge_acc_x')) {
        this.ge_acc_x = initObj.ge_acc_x
      }
      else {
        this.ge_acc_x = 0.0;
      }
      if (initObj.hasOwnProperty('ge_acc_y')) {
        this.ge_acc_y = initObj.ge_acc_y
      }
      else {
        this.ge_acc_y = 0.0;
      }
      if (initObj.hasOwnProperty('ge_acc_z')) {
        this.ge_acc_z = initObj.ge_acc_z
      }
      else {
        this.ge_acc_z = 0.0;
      }
      if (initObj.hasOwnProperty('ge_bodytorque_x')) {
        this.ge_bodytorque_x = initObj.ge_bodytorque_x
      }
      else {
        this.ge_bodytorque_x = 0.0;
      }
      if (initObj.hasOwnProperty('ge_bodytorque_y')) {
        this.ge_bodytorque_y = initObj.ge_bodytorque_y
      }
      else {
        this.ge_bodytorque_y = 0.0;
      }
      if (initObj.hasOwnProperty('ge_bodytorque_z')) {
        this.ge_bodytorque_z = initObj.ge_bodytorque_z
      }
      else {
        this.ge_bodytorque_z = 0.0;
      }
      if (initObj.hasOwnProperty('des_ge_bodytorque_x')) {
        this.des_ge_bodytorque_x = initObj.des_ge_bodytorque_x
      }
      else {
        this.des_ge_bodytorque_x = 0.0;
      }
      if (initObj.hasOwnProperty('des_ge_bodytorque_y')) {
        this.des_ge_bodytorque_y = initObj.des_ge_bodytorque_y
      }
      else {
        this.des_ge_bodytorque_y = 0.0;
      }
      if (initObj.hasOwnProperty('des_ge_bodytorque_z')) {
        this.des_ge_bodytorque_z = initObj.des_ge_bodytorque_z
      }
      else {
        this.des_ge_bodytorque_z = 0.0;
      }
      if (initObj.hasOwnProperty('d_ge_torque_x')) {
        this.d_ge_torque_x = initObj.d_ge_torque_x
      }
      else {
        this.d_ge_torque_x = 0.0;
      }
      if (initObj.hasOwnProperty('d_ge_torque_y')) {
        this.d_ge_torque_y = initObj.d_ge_torque_y
      }
      else {
        this.d_ge_torque_y = 0.0;
      }
      if (initObj.hasOwnProperty('d_ge_torque_z')) {
        this.d_ge_torque_z = initObj.d_ge_torque_z
      }
      else {
        this.d_ge_torque_z = 0.0;
      }
      if (initObj.hasOwnProperty('diff_ge_torque_x')) {
        this.diff_ge_torque_x = initObj.diff_ge_torque_x
      }
      else {
        this.diff_ge_torque_x = 0.0;
      }
      if (initObj.hasOwnProperty('diff_ge_torque_y')) {
        this.diff_ge_torque_y = initObj.diff_ge_torque_y
      }
      else {
        this.diff_ge_torque_y = 0.0;
      }
      if (initObj.hasOwnProperty('diff_ge_torque_z')) {
        this.diff_ge_torque_z = initObj.diff_ge_torque_z
      }
      else {
        this.diff_ge_torque_z = 0.0;
      }
      if (initObj.hasOwnProperty('ext_torque_x')) {
        this.ext_torque_x = initObj.ext_torque_x
      }
      else {
        this.ext_torque_x = 0.0;
      }
      if (initObj.hasOwnProperty('ext_torque_y')) {
        this.ext_torque_y = initObj.ext_torque_y
      }
      else {
        this.ext_torque_y = 0.0;
      }
      if (initObj.hasOwnProperty('ext_torque_z')) {
        this.ext_torque_z = initObj.ext_torque_z
      }
      else {
        this.ext_torque_z = 0.0;
      }
      if (initObj.hasOwnProperty('predict_ext_torque_x')) {
        this.predict_ext_torque_x = initObj.predict_ext_torque_x
      }
      else {
        this.predict_ext_torque_x = 0.0;
      }
      if (initObj.hasOwnProperty('predict_ext_torque_y')) {
        this.predict_ext_torque_y = initObj.predict_ext_torque_y
      }
      else {
        this.predict_ext_torque_y = 0.0;
      }
      if (initObj.hasOwnProperty('predict_ext_torque_z')) {
        this.predict_ext_torque_z = initObj.predict_ext_torque_z
      }
      else {
        this.predict_ext_torque_z = 0.0;
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
      if (initObj.hasOwnProperty('des_j_x')) {
        this.des_j_x = initObj.des_j_x
      }
      else {
        this.des_j_x = 0.0;
      }
      if (initObj.hasOwnProperty('des_j_y')) {
        this.des_j_y = initObj.des_j_y
      }
      else {
        this.des_j_y = 0.0;
      }
      if (initObj.hasOwnProperty('des_j_z')) {
        this.des_j_z = initObj.des_j_z
      }
      else {
        this.des_j_z = 0.0;
      }
      if (initObj.hasOwnProperty('des_s_x')) {
        this.des_s_x = initObj.des_s_x
      }
      else {
        this.des_s_x = 0.0;
      }
      if (initObj.hasOwnProperty('des_s_y')) {
        this.des_s_y = initObj.des_s_y
      }
      else {
        this.des_s_y = 0.0;
      }
      if (initObj.hasOwnProperty('des_s_z')) {
        this.des_s_z = initObj.des_s_z
      }
      else {
        this.des_s_z = 0.0;
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
      if (initObj.hasOwnProperty('flatctrl_q_w')) {
        this.flatctrl_q_w = initObj.flatctrl_q_w
      }
      else {
        this.flatctrl_q_w = 0.0;
      }
      if (initObj.hasOwnProperty('flatctrl_q_x')) {
        this.flatctrl_q_x = initObj.flatctrl_q_x
      }
      else {
        this.flatctrl_q_x = 0.0;
      }
      if (initObj.hasOwnProperty('flatctrl_q_y')) {
        this.flatctrl_q_y = initObj.flatctrl_q_y
      }
      else {
        this.flatctrl_q_y = 0.0;
      }
      if (initObj.hasOwnProperty('flatctrl_q_z')) {
        this.flatctrl_q_z = initObj.flatctrl_q_z
      }
      else {
        this.flatctrl_q_z = 0.0;
      }
      if (initObj.hasOwnProperty('flatctrl_roll')) {
        this.flatctrl_roll = initObj.flatctrl_roll
      }
      else {
        this.flatctrl_roll = 0.0;
      }
      if (initObj.hasOwnProperty('flatctrl_pitch')) {
        this.flatctrl_pitch = initObj.flatctrl_pitch
      }
      else {
        this.flatctrl_pitch = 0.0;
      }
      if (initObj.hasOwnProperty('flatctrl_yaw')) {
        this.flatctrl_yaw = initObj.flatctrl_yaw
      }
      else {
        this.flatctrl_yaw = 0.0;
      }
      if (initObj.hasOwnProperty('flatctrl_bodyrate_x')) {
        this.flatctrl_bodyrate_x = initObj.flatctrl_bodyrate_x
      }
      else {
        this.flatctrl_bodyrate_x = 0.0;
      }
      if (initObj.hasOwnProperty('flatctrl_bodyrate_y')) {
        this.flatctrl_bodyrate_y = initObj.flatctrl_bodyrate_y
      }
      else {
        this.flatctrl_bodyrate_y = 0.0;
      }
      if (initObj.hasOwnProperty('flatctrl_bodyrate_z')) {
        this.flatctrl_bodyrate_z = initObj.flatctrl_bodyrate_z
      }
      else {
        this.flatctrl_bodyrate_z = 0.0;
      }
      if (initObj.hasOwnProperty('flatctrl_beta_x')) {
        this.flatctrl_beta_x = initObj.flatctrl_beta_x
      }
      else {
        this.flatctrl_beta_x = 0.0;
      }
      if (initObj.hasOwnProperty('flatctrl_beta_y')) {
        this.flatctrl_beta_y = initObj.flatctrl_beta_y
      }
      else {
        this.flatctrl_beta_y = 0.0;
      }
      if (initObj.hasOwnProperty('flatctrl_beta_z')) {
        this.flatctrl_beta_z = initObj.flatctrl_beta_z
      }
      else {
        this.flatctrl_beta_z = 0.0;
      }
      if (initObj.hasOwnProperty('flatctrl_thrust')) {
        this.flatctrl_thrust = initObj.flatctrl_thrust
      }
      else {
        this.flatctrl_thrust = 0.0;
      }
      if (initObj.hasOwnProperty('flatctrl_torque_x')) {
        this.flatctrl_torque_x = initObj.flatctrl_torque_x
      }
      else {
        this.flatctrl_torque_x = 0.0;
      }
      if (initObj.hasOwnProperty('flatctrl_torque_y')) {
        this.flatctrl_torque_y = initObj.flatctrl_torque_y
      }
      else {
        this.flatctrl_torque_y = 0.0;
      }
      if (initObj.hasOwnProperty('flatctrl_torque_z')) {
        this.flatctrl_torque_z = initObj.flatctrl_torque_z
      }
      else {
        this.flatctrl_torque_z = 0.0;
      }
      if (initObj.hasOwnProperty('flatctrl_ge_acc_x')) {
        this.flatctrl_ge_acc_x = initObj.flatctrl_ge_acc_x
      }
      else {
        this.flatctrl_ge_acc_x = 0.0;
      }
      if (initObj.hasOwnProperty('flatctrl_ge_acc_y')) {
        this.flatctrl_ge_acc_y = initObj.flatctrl_ge_acc_y
      }
      else {
        this.flatctrl_ge_acc_y = 0.0;
      }
      if (initObj.hasOwnProperty('flatctrl_ge_acc_z')) {
        this.flatctrl_ge_acc_z = initObj.flatctrl_ge_acc_z
      }
      else {
        this.flatctrl_ge_acc_z = 0.0;
      }
      if (initObj.hasOwnProperty('flatctrl_drag_acc_x')) {
        this.flatctrl_drag_acc_x = initObj.flatctrl_drag_acc_x
      }
      else {
        this.flatctrl_drag_acc_x = 0.0;
      }
      if (initObj.hasOwnProperty('flatctrl_drag_acc_y')) {
        this.flatctrl_drag_acc_y = initObj.flatctrl_drag_acc_y
      }
      else {
        this.flatctrl_drag_acc_y = 0.0;
      }
      if (initObj.hasOwnProperty('flatctrl_drag_acc_z')) {
        this.flatctrl_drag_acc_z = initObj.flatctrl_drag_acc_z
      }
      else {
        this.flatctrl_drag_acc_z = 0.0;
      }
      if (initObj.hasOwnProperty('flatctrl_ext_acc_x')) {
        this.flatctrl_ext_acc_x = initObj.flatctrl_ext_acc_x
      }
      else {
        this.flatctrl_ext_acc_x = 0.0;
      }
      if (initObj.hasOwnProperty('flatctrl_ext_acc_y')) {
        this.flatctrl_ext_acc_y = initObj.flatctrl_ext_acc_y
      }
      else {
        this.flatctrl_ext_acc_y = 0.0;
      }
      if (initObj.hasOwnProperty('flatctrl_ext_acc_z')) {
        this.flatctrl_ext_acc_z = initObj.flatctrl_ext_acc_z
      }
      else {
        this.flatctrl_ext_acc_z = 0.0;
      }
      if (initObj.hasOwnProperty('ge_limit_k')) {
        this.ge_limit_k = initObj.ge_limit_k
      }
      else {
        this.ge_limit_k = 0.0;
      }
      if (initObj.hasOwnProperty('fb_vel_x')) {
        this.fb_vel_x = initObj.fb_vel_x
      }
      else {
        this.fb_vel_x = 0.0;
      }
      if (initObj.hasOwnProperty('fb_vel_y')) {
        this.fb_vel_y = initObj.fb_vel_y
      }
      else {
        this.fb_vel_y = 0.0;
      }
      if (initObj.hasOwnProperty('fb_vel_z')) {
        this.fb_vel_z = initObj.fb_vel_z
      }
      else {
        this.fb_vel_z = 0.0;
      }
      if (initObj.hasOwnProperty('cmd_vel_x')) {
        this.cmd_vel_x = initObj.cmd_vel_x
      }
      else {
        this.cmd_vel_x = 0.0;
      }
      if (initObj.hasOwnProperty('cmd_vel_y')) {
        this.cmd_vel_y = initObj.cmd_vel_y
      }
      else {
        this.cmd_vel_y = 0.0;
      }
      if (initObj.hasOwnProperty('cmd_vel_z')) {
        this.cmd_vel_z = initObj.cmd_vel_z
      }
      else {
        this.cmd_vel_z = 0.0;
      }
      if (initObj.hasOwnProperty('compensate_acc_x')) {
        this.compensate_acc_x = initObj.compensate_acc_x
      }
      else {
        this.compensate_acc_x = 0.0;
      }
      if (initObj.hasOwnProperty('compensate_acc_y')) {
        this.compensate_acc_y = initObj.compensate_acc_y
      }
      else {
        this.compensate_acc_y = 0.0;
      }
      if (initObj.hasOwnProperty('compensate_acc_z')) {
        this.compensate_acc_z = initObj.compensate_acc_z
      }
      else {
        this.compensate_acc_z = 0.0;
      }
      if (initObj.hasOwnProperty('fb_acc_x')) {
        this.fb_acc_x = initObj.fb_acc_x
      }
      else {
        this.fb_acc_x = 0.0;
      }
      if (initObj.hasOwnProperty('fb_acc_y')) {
        this.fb_acc_y = initObj.fb_acc_y
      }
      else {
        this.fb_acc_y = 0.0;
      }
      if (initObj.hasOwnProperty('fb_acc_z')) {
        this.fb_acc_z = initObj.fb_acc_z
      }
      else {
        this.fb_acc_z = 0.0;
      }
      if (initObj.hasOwnProperty('cmd_acc_x')) {
        this.cmd_acc_x = initObj.cmd_acc_x
      }
      else {
        this.cmd_acc_x = 0.0;
      }
      if (initObj.hasOwnProperty('cmd_acc_y')) {
        this.cmd_acc_y = initObj.cmd_acc_y
      }
      else {
        this.cmd_acc_y = 0.0;
      }
      if (initObj.hasOwnProperty('cmd_acc_z')) {
        this.cmd_acc_z = initObj.cmd_acc_z
      }
      else {
        this.cmd_acc_z = 0.0;
      }
      if (initObj.hasOwnProperty('cmd_acc_norm')) {
        this.cmd_acc_norm = initObj.cmd_acc_norm
      }
      else {
        this.cmd_acc_norm = 0.0;
      }
      if (initObj.hasOwnProperty('cmd_acc_norm_by_body')) {
        this.cmd_acc_norm_by_body = initObj.cmd_acc_norm_by_body
      }
      else {
        this.cmd_acc_norm_by_body = 0.0;
      }
      if (initObj.hasOwnProperty('cmd_q_w')) {
        this.cmd_q_w = initObj.cmd_q_w
      }
      else {
        this.cmd_q_w = 0.0;
      }
      if (initObj.hasOwnProperty('cmd_q_x')) {
        this.cmd_q_x = initObj.cmd_q_x
      }
      else {
        this.cmd_q_x = 0.0;
      }
      if (initObj.hasOwnProperty('cmd_q_y')) {
        this.cmd_q_y = initObj.cmd_q_y
      }
      else {
        this.cmd_q_y = 0.0;
      }
      if (initObj.hasOwnProperty('cmd_q_z')) {
        this.cmd_q_z = initObj.cmd_q_z
      }
      else {
        this.cmd_q_z = 0.0;
      }
      if (initObj.hasOwnProperty('cmd_roll')) {
        this.cmd_roll = initObj.cmd_roll
      }
      else {
        this.cmd_roll = 0.0;
      }
      if (initObj.hasOwnProperty('cmd_pitch')) {
        this.cmd_pitch = initObj.cmd_pitch
      }
      else {
        this.cmd_pitch = 0.0;
      }
      if (initObj.hasOwnProperty('cmd_yaw')) {
        this.cmd_yaw = initObj.cmd_yaw
      }
      else {
        this.cmd_yaw = 0.0;
      }
      if (initObj.hasOwnProperty('fb_bodyrate_x')) {
        this.fb_bodyrate_x = initObj.fb_bodyrate_x
      }
      else {
        this.fb_bodyrate_x = 0.0;
      }
      if (initObj.hasOwnProperty('fb_bodyrate_y')) {
        this.fb_bodyrate_y = initObj.fb_bodyrate_y
      }
      else {
        this.fb_bodyrate_y = 0.0;
      }
      if (initObj.hasOwnProperty('fb_bodyrate_z')) {
        this.fb_bodyrate_z = initObj.fb_bodyrate_z
      }
      else {
        this.fb_bodyrate_z = 0.0;
      }
      if (initObj.hasOwnProperty('cmd_bodyrate_x')) {
        this.cmd_bodyrate_x = initObj.cmd_bodyrate_x
      }
      else {
        this.cmd_bodyrate_x = 0.0;
      }
      if (initObj.hasOwnProperty('cmd_bodyrate_y')) {
        this.cmd_bodyrate_y = initObj.cmd_bodyrate_y
      }
      else {
        this.cmd_bodyrate_y = 0.0;
      }
      if (initObj.hasOwnProperty('cmd_bodyrate_z')) {
        this.cmd_bodyrate_z = initObj.cmd_bodyrate_z
      }
      else {
        this.cmd_bodyrate_z = 0.0;
      }
      if (initObj.hasOwnProperty('fb_beta_x')) {
        this.fb_beta_x = initObj.fb_beta_x
      }
      else {
        this.fb_beta_x = 0.0;
      }
      if (initObj.hasOwnProperty('fb_beta_y')) {
        this.fb_beta_y = initObj.fb_beta_y
      }
      else {
        this.fb_beta_y = 0.0;
      }
      if (initObj.hasOwnProperty('fb_beta_z')) {
        this.fb_beta_z = initObj.fb_beta_z
      }
      else {
        this.fb_beta_z = 0.0;
      }
      if (initObj.hasOwnProperty('cmd_beta_x')) {
        this.cmd_beta_x = initObj.cmd_beta_x
      }
      else {
        this.cmd_beta_x = 0.0;
      }
      if (initObj.hasOwnProperty('cmd_beta_y')) {
        this.cmd_beta_y = initObj.cmd_beta_y
      }
      else {
        this.cmd_beta_y = 0.0;
      }
      if (initObj.hasOwnProperty('cmd_beta_z')) {
        this.cmd_beta_z = initObj.cmd_beta_z
      }
      else {
        this.cmd_beta_z = 0.0;
      }
      if (initObj.hasOwnProperty('compensate_torque_x')) {
        this.compensate_torque_x = initObj.compensate_torque_x
      }
      else {
        this.compensate_torque_x = 0.0;
      }
      if (initObj.hasOwnProperty('compensate_torque_y')) {
        this.compensate_torque_y = initObj.compensate_torque_y
      }
      else {
        this.compensate_torque_y = 0.0;
      }
      if (initObj.hasOwnProperty('compensate_torque_z')) {
        this.compensate_torque_z = initObj.compensate_torque_z
      }
      else {
        this.compensate_torque_z = 0.0;
      }
      if (initObj.hasOwnProperty('bodytorque_x')) {
        this.bodytorque_x = initObj.bodytorque_x
      }
      else {
        this.bodytorque_x = 0.0;
      }
      if (initObj.hasOwnProperty('bodytorque_y')) {
        this.bodytorque_y = initObj.bodytorque_y
      }
      else {
        this.bodytorque_y = 0.0;
      }
      if (initObj.hasOwnProperty('bodytorque_z')) {
        this.bodytorque_z = initObj.bodytorque_z
      }
      else {
        this.bodytorque_z = 0.0;
      }
      if (initObj.hasOwnProperty('cmd_torque_body_x')) {
        this.cmd_torque_body_x = initObj.cmd_torque_body_x
      }
      else {
        this.cmd_torque_body_x = 0.0;
      }
      if (initObj.hasOwnProperty('cmd_torque_body_y')) {
        this.cmd_torque_body_y = initObj.cmd_torque_body_y
      }
      else {
        this.cmd_torque_body_y = 0.0;
      }
      if (initObj.hasOwnProperty('cmd_torque_body_z')) {
        this.cmd_torque_body_z = initObj.cmd_torque_body_z
      }
      else {
        this.cmd_torque_body_z = 0.0;
      }
      if (initObj.hasOwnProperty('diff_indi_torque_x')) {
        this.diff_indi_torque_x = initObj.diff_indi_torque_x
      }
      else {
        this.diff_indi_torque_x = 0.0;
      }
      if (initObj.hasOwnProperty('diff_indi_torque_y')) {
        this.diff_indi_torque_y = initObj.diff_indi_torque_y
      }
      else {
        this.diff_indi_torque_y = 0.0;
      }
      if (initObj.hasOwnProperty('diff_indi_torque_z')) {
        this.diff_indi_torque_z = initObj.diff_indi_torque_z
      }
      else {
        this.diff_indi_torque_z = 0.0;
      }
      if (initObj.hasOwnProperty('diff_torque_x')) {
        this.diff_torque_x = initObj.diff_torque_x
      }
      else {
        this.diff_torque_x = 0.0;
      }
      if (initObj.hasOwnProperty('diff_torque_y')) {
        this.diff_torque_y = initObj.diff_torque_y
      }
      else {
        this.diff_torque_y = 0.0;
      }
      if (initObj.hasOwnProperty('diff_torque_z')) {
        this.diff_torque_z = initObj.diff_torque_z
      }
      else {
        this.diff_torque_z = 0.0;
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
      if (initObj.hasOwnProperty('cmd_sumrpm2')) {
        this.cmd_sumrpm2 = initObj.cmd_sumrpm2
      }
      else {
        this.cmd_sumrpm2 = 0.0;
      }
      if (initObj.hasOwnProperty('cmd_sumrpm2_to_acc')) {
        this.cmd_sumrpm2_to_acc = initObj.cmd_sumrpm2_to_acc
      }
      else {
        this.cmd_sumrpm2_to_acc = 0.0;
      }
      if (initObj.hasOwnProperty('fb_thrust1')) {
        this.fb_thrust1 = initObj.fb_thrust1
      }
      else {
        this.fb_thrust1 = 0.0;
      }
      if (initObj.hasOwnProperty('fb_thrust2')) {
        this.fb_thrust2 = initObj.fb_thrust2
      }
      else {
        this.fb_thrust2 = 0.0;
      }
      if (initObj.hasOwnProperty('fb_thrust3')) {
        this.fb_thrust3 = initObj.fb_thrust3
      }
      else {
        this.fb_thrust3 = 0.0;
      }
      if (initObj.hasOwnProperty('fb_thrust4')) {
        this.fb_thrust4 = initObj.fb_thrust4
      }
      else {
        this.fb_thrust4 = 0.0;
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
      if (initObj.hasOwnProperty('cmd_thrust1')) {
        this.cmd_thrust1 = initObj.cmd_thrust1
      }
      else {
        this.cmd_thrust1 = 0.0;
      }
      if (initObj.hasOwnProperty('cmd_thrust2')) {
        this.cmd_thrust2 = initObj.cmd_thrust2
      }
      else {
        this.cmd_thrust2 = 0.0;
      }
      if (initObj.hasOwnProperty('cmd_thrust3')) {
        this.cmd_thrust3 = initObj.cmd_thrust3
      }
      else {
        this.cmd_thrust3 = 0.0;
      }
      if (initObj.hasOwnProperty('cmd_thrust4')) {
        this.cmd_thrust4 = initObj.cmd_thrust4
      }
      else {
        this.cmd_thrust4 = 0.0;
      }
      if (initObj.hasOwnProperty('Fgh')) {
        this.Fgh = initObj.Fgh
      }
      else {
        this.Fgh = 0.0;
      }
      if (initObj.hasOwnProperty('ref_thrust_acc')) {
        this.ref_thrust_acc = initObj.ref_thrust_acc
      }
      else {
        this.ref_thrust_acc = 0.0;
      }
      if (initObj.hasOwnProperty('thrust_acc_fil_x')) {
        this.thrust_acc_fil_x = initObj.thrust_acc_fil_x
      }
      else {
        this.thrust_acc_fil_x = 0.0;
      }
      if (initObj.hasOwnProperty('thrust_acc_fil_y')) {
        this.thrust_acc_fil_y = initObj.thrust_acc_fil_y
      }
      else {
        this.thrust_acc_fil_y = 0.0;
      }
      if (initObj.hasOwnProperty('thrust_acc_fil_z')) {
        this.thrust_acc_fil_z = initObj.thrust_acc_fil_z
      }
      else {
        this.thrust_acc_fil_z = 0.0;
      }
      if (initObj.hasOwnProperty('imu_acc_fil_x')) {
        this.imu_acc_fil_x = initObj.imu_acc_fil_x
      }
      else {
        this.imu_acc_fil_x = 0.0;
      }
      if (initObj.hasOwnProperty('imu_acc_fil_y')) {
        this.imu_acc_fil_y = initObj.imu_acc_fil_y
      }
      else {
        this.imu_acc_fil_y = 0.0;
      }
      if (initObj.hasOwnProperty('imu_acc_fil_z')) {
        this.imu_acc_fil_z = initObj.imu_acc_fil_z
      }
      else {
        this.imu_acc_fil_z = 0.0;
      }
      if (initObj.hasOwnProperty('extforce_acc_x')) {
        this.extforce_acc_x = initObj.extforce_acc_x
      }
      else {
        this.extforce_acc_x = 0.0;
      }
      if (initObj.hasOwnProperty('extforce_acc_y')) {
        this.extforce_acc_y = initObj.extforce_acc_y
      }
      else {
        this.extforce_acc_y = 0.0;
      }
      if (initObj.hasOwnProperty('extforce_acc_z')) {
        this.extforce_acc_z = initObj.extforce_acc_z
      }
      else {
        this.extforce_acc_z = 0.0;
      }
      if (initObj.hasOwnProperty('extforce_acc_fil_x')) {
        this.extforce_acc_fil_x = initObj.extforce_acc_fil_x
      }
      else {
        this.extforce_acc_fil_x = 0.0;
      }
      if (initObj.hasOwnProperty('extforce_acc_fil_y')) {
        this.extforce_acc_fil_y = initObj.extforce_acc_fil_y
      }
      else {
        this.extforce_acc_fil_y = 0.0;
      }
      if (initObj.hasOwnProperty('extforce_acc_fil_z')) {
        this.extforce_acc_fil_z = initObj.extforce_acc_fil_z
      }
      else {
        this.extforce_acc_fil_z = 0.0;
      }
      if (initObj.hasOwnProperty('poly_thrust')) {
        this.poly_thrust = initObj.poly_thrust
      }
      else {
        this.poly_thrust = 0.0;
      }
      if (initObj.hasOwnProperty('fb_thrust')) {
        this.fb_thrust = initObj.fb_thrust
      }
      else {
        this.fb_thrust = 0.0;
      }
      if (initObj.hasOwnProperty('sum_thrust')) {
        this.sum_thrust = initObj.sum_thrust
      }
      else {
        this.sum_thrust = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type geDebug
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [odom_roll]
    bufferOffset = _serializer.float64(obj.odom_roll, buffer, bufferOffset);
    // Serialize message field [odom_pitch]
    bufferOffset = _serializer.float64(obj.odom_pitch, buffer, bufferOffset);
    // Serialize message field [odom_yaw]
    bufferOffset = _serializer.float64(obj.odom_yaw, buffer, bufferOffset);
    // Serialize message field [odomC_roll]
    bufferOffset = _serializer.float64(obj.odomC_roll, buffer, bufferOffset);
    // Serialize message field [odomC_pitch]
    bufferOffset = _serializer.float64(obj.odomC_pitch, buffer, bufferOffset);
    // Serialize message field [odomC_yaw]
    bufferOffset = _serializer.float64(obj.odomC_yaw, buffer, bufferOffset);
    // Serialize message field [ge_angle_roll]
    bufferOffset = _serializer.float64(obj.ge_angle_roll, buffer, bufferOffset);
    // Serialize message field [ge_angle_pitch]
    bufferOffset = _serializer.float64(obj.ge_angle_pitch, buffer, bufferOffset);
    // Serialize message field [ge_angle_yaw]
    bufferOffset = _serializer.float64(obj.ge_angle_yaw, buffer, bufferOffset);
    // Serialize message field [imu_a_x]
    bufferOffset = _serializer.float64(obj.imu_a_x, buffer, bufferOffset);
    // Serialize message field [imu_a_y]
    bufferOffset = _serializer.float64(obj.imu_a_y, buffer, bufferOffset);
    // Serialize message field [imu_a_z]
    bufferOffset = _serializer.float64(obj.imu_a_z, buffer, bufferOffset);
    // Serialize message field [imu_a_fil_x]
    bufferOffset = _serializer.float64(obj.imu_a_fil_x, buffer, bufferOffset);
    // Serialize message field [imu_a_fil_y]
    bufferOffset = _serializer.float64(obj.imu_a_fil_y, buffer, bufferOffset);
    // Serialize message field [imu_a_fil_z]
    bufferOffset = _serializer.float64(obj.imu_a_fil_z, buffer, bufferOffset);
    // Serialize message field [imu_w_x]
    bufferOffset = _serializer.float64(obj.imu_w_x, buffer, bufferOffset);
    // Serialize message field [imu_w_y]
    bufferOffset = _serializer.float64(obj.imu_w_y, buffer, bufferOffset);
    // Serialize message field [imu_w_z]
    bufferOffset = _serializer.float64(obj.imu_w_z, buffer, bufferOffset);
    // Serialize message field [imu_w_fil_x]
    bufferOffset = _serializer.float64(obj.imu_w_fil_x, buffer, bufferOffset);
    // Serialize message field [imu_w_fil_y]
    bufferOffset = _serializer.float64(obj.imu_w_fil_y, buffer, bufferOffset);
    // Serialize message field [imu_w_fil_z]
    bufferOffset = _serializer.float64(obj.imu_w_fil_z, buffer, bufferOffset);
    // Serialize message field [imu_w_c_x]
    bufferOffset = _serializer.float64(obj.imu_w_c_x, buffer, bufferOffset);
    // Serialize message field [imu_w_c_y]
    bufferOffset = _serializer.float64(obj.imu_w_c_y, buffer, bufferOffset);
    // Serialize message field [imu_w_c_z]
    bufferOffset = _serializer.float64(obj.imu_w_c_z, buffer, bufferOffset);
    // Serialize message field [imu_beta_fil_x]
    bufferOffset = _serializer.float64(obj.imu_beta_fil_x, buffer, bufferOffset);
    // Serialize message field [imu_beta_fil_y]
    bufferOffset = _serializer.float64(obj.imu_beta_fil_y, buffer, bufferOffset);
    // Serialize message field [imu_beta_fil_z]
    bufferOffset = _serializer.float64(obj.imu_beta_fil_z, buffer, bufferOffset);
    // Serialize message field [rpm1]
    bufferOffset = _serializer.float64(obj.rpm1, buffer, bufferOffset);
    // Serialize message field [rpm2]
    bufferOffset = _serializer.float64(obj.rpm2, buffer, bufferOffset);
    // Serialize message field [rpm3]
    bufferOffset = _serializer.float64(obj.rpm3, buffer, bufferOffset);
    // Serialize message field [rpm4]
    bufferOffset = _serializer.float64(obj.rpm4, buffer, bufferOffset);
    // Serialize message field [rpm1_fil]
    bufferOffset = _serializer.float64(obj.rpm1_fil, buffer, bufferOffset);
    // Serialize message field [rpm2_fil]
    bufferOffset = _serializer.float64(obj.rpm2_fil, buffer, bufferOffset);
    // Serialize message field [rpm3_fil]
    bufferOffset = _serializer.float64(obj.rpm3_fil, buffer, bufferOffset);
    // Serialize message field [rpm4_fil]
    bufferOffset = _serializer.float64(obj.rpm4_fil, buffer, bufferOffset);
    // Serialize message field [sumrpm2]
    bufferOffset = _serializer.float64(obj.sumrpm2, buffer, bufferOffset);
    // Serialize message field [thrust_force]
    bufferOffset = _serializer.float64(obj.thrust_force, buffer, bufferOffset);
    // Serialize message field [thrust_acc]
    bufferOffset = _serializer.float64(obj.thrust_acc, buffer, bufferOffset);
    // Serialize message field [sumrpm2_fil]
    bufferOffset = _serializer.float64(obj.sumrpm2_fil, buffer, bufferOffset);
    // Serialize message field [thrust_force_fil]
    bufferOffset = _serializer.float64(obj.thrust_force_fil, buffer, bufferOffset);
    // Serialize message field [thrust_acc_fil]
    bufferOffset = _serializer.float64(obj.thrust_acc_fil, buffer, bufferOffset);
    // Serialize message field [acc_world_x]
    bufferOffset = _serializer.float64(obj.acc_world_x, buffer, bufferOffset);
    // Serialize message field [acc_world_y]
    bufferOffset = _serializer.float64(obj.acc_world_y, buffer, bufferOffset);
    // Serialize message field [acc_world_z]
    bufferOffset = _serializer.float64(obj.acc_world_z, buffer, bufferOffset);
    // Serialize message field [ge_acc_x]
    bufferOffset = _serializer.float64(obj.ge_acc_x, buffer, bufferOffset);
    // Serialize message field [ge_acc_y]
    bufferOffset = _serializer.float64(obj.ge_acc_y, buffer, bufferOffset);
    // Serialize message field [ge_acc_z]
    bufferOffset = _serializer.float64(obj.ge_acc_z, buffer, bufferOffset);
    // Serialize message field [ge_bodytorque_x]
    bufferOffset = _serializer.float64(obj.ge_bodytorque_x, buffer, bufferOffset);
    // Serialize message field [ge_bodytorque_y]
    bufferOffset = _serializer.float64(obj.ge_bodytorque_y, buffer, bufferOffset);
    // Serialize message field [ge_bodytorque_z]
    bufferOffset = _serializer.float64(obj.ge_bodytorque_z, buffer, bufferOffset);
    // Serialize message field [des_ge_bodytorque_x]
    bufferOffset = _serializer.float64(obj.des_ge_bodytorque_x, buffer, bufferOffset);
    // Serialize message field [des_ge_bodytorque_y]
    bufferOffset = _serializer.float64(obj.des_ge_bodytorque_y, buffer, bufferOffset);
    // Serialize message field [des_ge_bodytorque_z]
    bufferOffset = _serializer.float64(obj.des_ge_bodytorque_z, buffer, bufferOffset);
    // Serialize message field [d_ge_torque_x]
    bufferOffset = _serializer.float64(obj.d_ge_torque_x, buffer, bufferOffset);
    // Serialize message field [d_ge_torque_y]
    bufferOffset = _serializer.float64(obj.d_ge_torque_y, buffer, bufferOffset);
    // Serialize message field [d_ge_torque_z]
    bufferOffset = _serializer.float64(obj.d_ge_torque_z, buffer, bufferOffset);
    // Serialize message field [diff_ge_torque_x]
    bufferOffset = _serializer.float64(obj.diff_ge_torque_x, buffer, bufferOffset);
    // Serialize message field [diff_ge_torque_y]
    bufferOffset = _serializer.float64(obj.diff_ge_torque_y, buffer, bufferOffset);
    // Serialize message field [diff_ge_torque_z]
    bufferOffset = _serializer.float64(obj.diff_ge_torque_z, buffer, bufferOffset);
    // Serialize message field [ext_torque_x]
    bufferOffset = _serializer.float64(obj.ext_torque_x, buffer, bufferOffset);
    // Serialize message field [ext_torque_y]
    bufferOffset = _serializer.float64(obj.ext_torque_y, buffer, bufferOffset);
    // Serialize message field [ext_torque_z]
    bufferOffset = _serializer.float64(obj.ext_torque_z, buffer, bufferOffset);
    // Serialize message field [predict_ext_torque_x]
    bufferOffset = _serializer.float64(obj.predict_ext_torque_x, buffer, bufferOffset);
    // Serialize message field [predict_ext_torque_y]
    bufferOffset = _serializer.float64(obj.predict_ext_torque_y, buffer, bufferOffset);
    // Serialize message field [predict_ext_torque_z]
    bufferOffset = _serializer.float64(obj.predict_ext_torque_z, buffer, bufferOffset);
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
    // Serialize message field [des_j_x]
    bufferOffset = _serializer.float64(obj.des_j_x, buffer, bufferOffset);
    // Serialize message field [des_j_y]
    bufferOffset = _serializer.float64(obj.des_j_y, buffer, bufferOffset);
    // Serialize message field [des_j_z]
    bufferOffset = _serializer.float64(obj.des_j_z, buffer, bufferOffset);
    // Serialize message field [des_s_x]
    bufferOffset = _serializer.float64(obj.des_s_x, buffer, bufferOffset);
    // Serialize message field [des_s_y]
    bufferOffset = _serializer.float64(obj.des_s_y, buffer, bufferOffset);
    // Serialize message field [des_s_z]
    bufferOffset = _serializer.float64(obj.des_s_z, buffer, bufferOffset);
    // Serialize message field [des_yaw]
    bufferOffset = _serializer.float64(obj.des_yaw, buffer, bufferOffset);
    // Serialize message field [des_yaw_rate]
    bufferOffset = _serializer.float64(obj.des_yaw_rate, buffer, bufferOffset);
    // Serialize message field [des_yaw_acc]
    bufferOffset = _serializer.float64(obj.des_yaw_acc, buffer, bufferOffset);
    // Serialize message field [flatctrl_q_w]
    bufferOffset = _serializer.float64(obj.flatctrl_q_w, buffer, bufferOffset);
    // Serialize message field [flatctrl_q_x]
    bufferOffset = _serializer.float64(obj.flatctrl_q_x, buffer, bufferOffset);
    // Serialize message field [flatctrl_q_y]
    bufferOffset = _serializer.float64(obj.flatctrl_q_y, buffer, bufferOffset);
    // Serialize message field [flatctrl_q_z]
    bufferOffset = _serializer.float64(obj.flatctrl_q_z, buffer, bufferOffset);
    // Serialize message field [flatctrl_roll]
    bufferOffset = _serializer.float64(obj.flatctrl_roll, buffer, bufferOffset);
    // Serialize message field [flatctrl_pitch]
    bufferOffset = _serializer.float64(obj.flatctrl_pitch, buffer, bufferOffset);
    // Serialize message field [flatctrl_yaw]
    bufferOffset = _serializer.float64(obj.flatctrl_yaw, buffer, bufferOffset);
    // Serialize message field [flatctrl_bodyrate_x]
    bufferOffset = _serializer.float64(obj.flatctrl_bodyrate_x, buffer, bufferOffset);
    // Serialize message field [flatctrl_bodyrate_y]
    bufferOffset = _serializer.float64(obj.flatctrl_bodyrate_y, buffer, bufferOffset);
    // Serialize message field [flatctrl_bodyrate_z]
    bufferOffset = _serializer.float64(obj.flatctrl_bodyrate_z, buffer, bufferOffset);
    // Serialize message field [flatctrl_beta_x]
    bufferOffset = _serializer.float64(obj.flatctrl_beta_x, buffer, bufferOffset);
    // Serialize message field [flatctrl_beta_y]
    bufferOffset = _serializer.float64(obj.flatctrl_beta_y, buffer, bufferOffset);
    // Serialize message field [flatctrl_beta_z]
    bufferOffset = _serializer.float64(obj.flatctrl_beta_z, buffer, bufferOffset);
    // Serialize message field [flatctrl_thrust]
    bufferOffset = _serializer.float64(obj.flatctrl_thrust, buffer, bufferOffset);
    // Serialize message field [flatctrl_torque_x]
    bufferOffset = _serializer.float64(obj.flatctrl_torque_x, buffer, bufferOffset);
    // Serialize message field [flatctrl_torque_y]
    bufferOffset = _serializer.float64(obj.flatctrl_torque_y, buffer, bufferOffset);
    // Serialize message field [flatctrl_torque_z]
    bufferOffset = _serializer.float64(obj.flatctrl_torque_z, buffer, bufferOffset);
    // Serialize message field [flatctrl_ge_acc_x]
    bufferOffset = _serializer.float64(obj.flatctrl_ge_acc_x, buffer, bufferOffset);
    // Serialize message field [flatctrl_ge_acc_y]
    bufferOffset = _serializer.float64(obj.flatctrl_ge_acc_y, buffer, bufferOffset);
    // Serialize message field [flatctrl_ge_acc_z]
    bufferOffset = _serializer.float64(obj.flatctrl_ge_acc_z, buffer, bufferOffset);
    // Serialize message field [flatctrl_drag_acc_x]
    bufferOffset = _serializer.float64(obj.flatctrl_drag_acc_x, buffer, bufferOffset);
    // Serialize message field [flatctrl_drag_acc_y]
    bufferOffset = _serializer.float64(obj.flatctrl_drag_acc_y, buffer, bufferOffset);
    // Serialize message field [flatctrl_drag_acc_z]
    bufferOffset = _serializer.float64(obj.flatctrl_drag_acc_z, buffer, bufferOffset);
    // Serialize message field [flatctrl_ext_acc_x]
    bufferOffset = _serializer.float64(obj.flatctrl_ext_acc_x, buffer, bufferOffset);
    // Serialize message field [flatctrl_ext_acc_y]
    bufferOffset = _serializer.float64(obj.flatctrl_ext_acc_y, buffer, bufferOffset);
    // Serialize message field [flatctrl_ext_acc_z]
    bufferOffset = _serializer.float64(obj.flatctrl_ext_acc_z, buffer, bufferOffset);
    // Serialize message field [ge_limit_k]
    bufferOffset = _serializer.float64(obj.ge_limit_k, buffer, bufferOffset);
    // Serialize message field [fb_vel_x]
    bufferOffset = _serializer.float64(obj.fb_vel_x, buffer, bufferOffset);
    // Serialize message field [fb_vel_y]
    bufferOffset = _serializer.float64(obj.fb_vel_y, buffer, bufferOffset);
    // Serialize message field [fb_vel_z]
    bufferOffset = _serializer.float64(obj.fb_vel_z, buffer, bufferOffset);
    // Serialize message field [cmd_vel_x]
    bufferOffset = _serializer.float64(obj.cmd_vel_x, buffer, bufferOffset);
    // Serialize message field [cmd_vel_y]
    bufferOffset = _serializer.float64(obj.cmd_vel_y, buffer, bufferOffset);
    // Serialize message field [cmd_vel_z]
    bufferOffset = _serializer.float64(obj.cmd_vel_z, buffer, bufferOffset);
    // Serialize message field [compensate_acc_x]
    bufferOffset = _serializer.float64(obj.compensate_acc_x, buffer, bufferOffset);
    // Serialize message field [compensate_acc_y]
    bufferOffset = _serializer.float64(obj.compensate_acc_y, buffer, bufferOffset);
    // Serialize message field [compensate_acc_z]
    bufferOffset = _serializer.float64(obj.compensate_acc_z, buffer, bufferOffset);
    // Serialize message field [fb_acc_x]
    bufferOffset = _serializer.float64(obj.fb_acc_x, buffer, bufferOffset);
    // Serialize message field [fb_acc_y]
    bufferOffset = _serializer.float64(obj.fb_acc_y, buffer, bufferOffset);
    // Serialize message field [fb_acc_z]
    bufferOffset = _serializer.float64(obj.fb_acc_z, buffer, bufferOffset);
    // Serialize message field [cmd_acc_x]
    bufferOffset = _serializer.float64(obj.cmd_acc_x, buffer, bufferOffset);
    // Serialize message field [cmd_acc_y]
    bufferOffset = _serializer.float64(obj.cmd_acc_y, buffer, bufferOffset);
    // Serialize message field [cmd_acc_z]
    bufferOffset = _serializer.float64(obj.cmd_acc_z, buffer, bufferOffset);
    // Serialize message field [cmd_acc_norm]
    bufferOffset = _serializer.float64(obj.cmd_acc_norm, buffer, bufferOffset);
    // Serialize message field [cmd_acc_norm_by_body]
    bufferOffset = _serializer.float64(obj.cmd_acc_norm_by_body, buffer, bufferOffset);
    // Serialize message field [cmd_q_w]
    bufferOffset = _serializer.float64(obj.cmd_q_w, buffer, bufferOffset);
    // Serialize message field [cmd_q_x]
    bufferOffset = _serializer.float64(obj.cmd_q_x, buffer, bufferOffset);
    // Serialize message field [cmd_q_y]
    bufferOffset = _serializer.float64(obj.cmd_q_y, buffer, bufferOffset);
    // Serialize message field [cmd_q_z]
    bufferOffset = _serializer.float64(obj.cmd_q_z, buffer, bufferOffset);
    // Serialize message field [cmd_roll]
    bufferOffset = _serializer.float64(obj.cmd_roll, buffer, bufferOffset);
    // Serialize message field [cmd_pitch]
    bufferOffset = _serializer.float64(obj.cmd_pitch, buffer, bufferOffset);
    // Serialize message field [cmd_yaw]
    bufferOffset = _serializer.float64(obj.cmd_yaw, buffer, bufferOffset);
    // Serialize message field [fb_bodyrate_x]
    bufferOffset = _serializer.float64(obj.fb_bodyrate_x, buffer, bufferOffset);
    // Serialize message field [fb_bodyrate_y]
    bufferOffset = _serializer.float64(obj.fb_bodyrate_y, buffer, bufferOffset);
    // Serialize message field [fb_bodyrate_z]
    bufferOffset = _serializer.float64(obj.fb_bodyrate_z, buffer, bufferOffset);
    // Serialize message field [cmd_bodyrate_x]
    bufferOffset = _serializer.float64(obj.cmd_bodyrate_x, buffer, bufferOffset);
    // Serialize message field [cmd_bodyrate_y]
    bufferOffset = _serializer.float64(obj.cmd_bodyrate_y, buffer, bufferOffset);
    // Serialize message field [cmd_bodyrate_z]
    bufferOffset = _serializer.float64(obj.cmd_bodyrate_z, buffer, bufferOffset);
    // Serialize message field [fb_beta_x]
    bufferOffset = _serializer.float64(obj.fb_beta_x, buffer, bufferOffset);
    // Serialize message field [fb_beta_y]
    bufferOffset = _serializer.float64(obj.fb_beta_y, buffer, bufferOffset);
    // Serialize message field [fb_beta_z]
    bufferOffset = _serializer.float64(obj.fb_beta_z, buffer, bufferOffset);
    // Serialize message field [cmd_beta_x]
    bufferOffset = _serializer.float64(obj.cmd_beta_x, buffer, bufferOffset);
    // Serialize message field [cmd_beta_y]
    bufferOffset = _serializer.float64(obj.cmd_beta_y, buffer, bufferOffset);
    // Serialize message field [cmd_beta_z]
    bufferOffset = _serializer.float64(obj.cmd_beta_z, buffer, bufferOffset);
    // Serialize message field [compensate_torque_x]
    bufferOffset = _serializer.float64(obj.compensate_torque_x, buffer, bufferOffset);
    // Serialize message field [compensate_torque_y]
    bufferOffset = _serializer.float64(obj.compensate_torque_y, buffer, bufferOffset);
    // Serialize message field [compensate_torque_z]
    bufferOffset = _serializer.float64(obj.compensate_torque_z, buffer, bufferOffset);
    // Serialize message field [bodytorque_x]
    bufferOffset = _serializer.float64(obj.bodytorque_x, buffer, bufferOffset);
    // Serialize message field [bodytorque_y]
    bufferOffset = _serializer.float64(obj.bodytorque_y, buffer, bufferOffset);
    // Serialize message field [bodytorque_z]
    bufferOffset = _serializer.float64(obj.bodytorque_z, buffer, bufferOffset);
    // Serialize message field [cmd_torque_body_x]
    bufferOffset = _serializer.float64(obj.cmd_torque_body_x, buffer, bufferOffset);
    // Serialize message field [cmd_torque_body_y]
    bufferOffset = _serializer.float64(obj.cmd_torque_body_y, buffer, bufferOffset);
    // Serialize message field [cmd_torque_body_z]
    bufferOffset = _serializer.float64(obj.cmd_torque_body_z, buffer, bufferOffset);
    // Serialize message field [diff_indi_torque_x]
    bufferOffset = _serializer.float64(obj.diff_indi_torque_x, buffer, bufferOffset);
    // Serialize message field [diff_indi_torque_y]
    bufferOffset = _serializer.float64(obj.diff_indi_torque_y, buffer, bufferOffset);
    // Serialize message field [diff_indi_torque_z]
    bufferOffset = _serializer.float64(obj.diff_indi_torque_z, buffer, bufferOffset);
    // Serialize message field [diff_torque_x]
    bufferOffset = _serializer.float64(obj.diff_torque_x, buffer, bufferOffset);
    // Serialize message field [diff_torque_y]
    bufferOffset = _serializer.float64(obj.diff_torque_y, buffer, bufferOffset);
    // Serialize message field [diff_torque_z]
    bufferOffset = _serializer.float64(obj.diff_torque_z, buffer, bufferOffset);
    // Serialize message field [cmd_rpm1]
    bufferOffset = _serializer.float64(obj.cmd_rpm1, buffer, bufferOffset);
    // Serialize message field [cmd_rpm2]
    bufferOffset = _serializer.float64(obj.cmd_rpm2, buffer, bufferOffset);
    // Serialize message field [cmd_rpm3]
    bufferOffset = _serializer.float64(obj.cmd_rpm3, buffer, bufferOffset);
    // Serialize message field [cmd_rpm4]
    bufferOffset = _serializer.float64(obj.cmd_rpm4, buffer, bufferOffset);
    // Serialize message field [cmd_sumrpm2]
    bufferOffset = _serializer.float64(obj.cmd_sumrpm2, buffer, bufferOffset);
    // Serialize message field [cmd_sumrpm2_to_acc]
    bufferOffset = _serializer.float64(obj.cmd_sumrpm2_to_acc, buffer, bufferOffset);
    // Serialize message field [fb_thrust1]
    bufferOffset = _serializer.float64(obj.fb_thrust1, buffer, bufferOffset);
    // Serialize message field [fb_thrust2]
    bufferOffset = _serializer.float64(obj.fb_thrust2, buffer, bufferOffset);
    // Serialize message field [fb_thrust3]
    bufferOffset = _serializer.float64(obj.fb_thrust3, buffer, bufferOffset);
    // Serialize message field [fb_thrust4]
    bufferOffset = _serializer.float64(obj.fb_thrust4, buffer, bufferOffset);
    // Serialize message field [ref_thrust1]
    bufferOffset = _serializer.float64(obj.ref_thrust1, buffer, bufferOffset);
    // Serialize message field [ref_thrust2]
    bufferOffset = _serializer.float64(obj.ref_thrust2, buffer, bufferOffset);
    // Serialize message field [ref_thrust3]
    bufferOffset = _serializer.float64(obj.ref_thrust3, buffer, bufferOffset);
    // Serialize message field [ref_thrust4]
    bufferOffset = _serializer.float64(obj.ref_thrust4, buffer, bufferOffset);
    // Serialize message field [cmd_thrust1]
    bufferOffset = _serializer.float64(obj.cmd_thrust1, buffer, bufferOffset);
    // Serialize message field [cmd_thrust2]
    bufferOffset = _serializer.float64(obj.cmd_thrust2, buffer, bufferOffset);
    // Serialize message field [cmd_thrust3]
    bufferOffset = _serializer.float64(obj.cmd_thrust3, buffer, bufferOffset);
    // Serialize message field [cmd_thrust4]
    bufferOffset = _serializer.float64(obj.cmd_thrust4, buffer, bufferOffset);
    // Serialize message field [Fgh]
    bufferOffset = _serializer.float64(obj.Fgh, buffer, bufferOffset);
    // Serialize message field [ref_thrust_acc]
    bufferOffset = _serializer.float64(obj.ref_thrust_acc, buffer, bufferOffset);
    // Serialize message field [thrust_acc_fil_x]
    bufferOffset = _serializer.float64(obj.thrust_acc_fil_x, buffer, bufferOffset);
    // Serialize message field [thrust_acc_fil_y]
    bufferOffset = _serializer.float64(obj.thrust_acc_fil_y, buffer, bufferOffset);
    // Serialize message field [thrust_acc_fil_z]
    bufferOffset = _serializer.float64(obj.thrust_acc_fil_z, buffer, bufferOffset);
    // Serialize message field [imu_acc_fil_x]
    bufferOffset = _serializer.float64(obj.imu_acc_fil_x, buffer, bufferOffset);
    // Serialize message field [imu_acc_fil_y]
    bufferOffset = _serializer.float64(obj.imu_acc_fil_y, buffer, bufferOffset);
    // Serialize message field [imu_acc_fil_z]
    bufferOffset = _serializer.float64(obj.imu_acc_fil_z, buffer, bufferOffset);
    // Serialize message field [extforce_acc_x]
    bufferOffset = _serializer.float64(obj.extforce_acc_x, buffer, bufferOffset);
    // Serialize message field [extforce_acc_y]
    bufferOffset = _serializer.float64(obj.extforce_acc_y, buffer, bufferOffset);
    // Serialize message field [extforce_acc_z]
    bufferOffset = _serializer.float64(obj.extforce_acc_z, buffer, bufferOffset);
    // Serialize message field [extforce_acc_fil_x]
    bufferOffset = _serializer.float64(obj.extforce_acc_fil_x, buffer, bufferOffset);
    // Serialize message field [extforce_acc_fil_y]
    bufferOffset = _serializer.float64(obj.extforce_acc_fil_y, buffer, bufferOffset);
    // Serialize message field [extforce_acc_fil_z]
    bufferOffset = _serializer.float64(obj.extforce_acc_fil_z, buffer, bufferOffset);
    // Serialize message field [poly_thrust]
    bufferOffset = _serializer.float64(obj.poly_thrust, buffer, bufferOffset);
    // Serialize message field [fb_thrust]
    bufferOffset = _serializer.float64(obj.fb_thrust, buffer, bufferOffset);
    // Serialize message field [sum_thrust]
    bufferOffset = _serializer.float64(obj.sum_thrust, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type geDebug
    let len;
    let data = new geDebug(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [odom_roll]
    data.odom_roll = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [odom_pitch]
    data.odom_pitch = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [odom_yaw]
    data.odom_yaw = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [odomC_roll]
    data.odomC_roll = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [odomC_pitch]
    data.odomC_pitch = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [odomC_yaw]
    data.odomC_yaw = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ge_angle_roll]
    data.ge_angle_roll = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ge_angle_pitch]
    data.ge_angle_pitch = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ge_angle_yaw]
    data.ge_angle_yaw = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [imu_a_x]
    data.imu_a_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [imu_a_y]
    data.imu_a_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [imu_a_z]
    data.imu_a_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [imu_a_fil_x]
    data.imu_a_fil_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [imu_a_fil_y]
    data.imu_a_fil_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [imu_a_fil_z]
    data.imu_a_fil_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [imu_w_x]
    data.imu_w_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [imu_w_y]
    data.imu_w_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [imu_w_z]
    data.imu_w_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [imu_w_fil_x]
    data.imu_w_fil_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [imu_w_fil_y]
    data.imu_w_fil_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [imu_w_fil_z]
    data.imu_w_fil_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [imu_w_c_x]
    data.imu_w_c_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [imu_w_c_y]
    data.imu_w_c_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [imu_w_c_z]
    data.imu_w_c_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [imu_beta_fil_x]
    data.imu_beta_fil_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [imu_beta_fil_y]
    data.imu_beta_fil_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [imu_beta_fil_z]
    data.imu_beta_fil_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rpm1]
    data.rpm1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rpm2]
    data.rpm2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rpm3]
    data.rpm3 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rpm4]
    data.rpm4 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rpm1_fil]
    data.rpm1_fil = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rpm2_fil]
    data.rpm2_fil = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rpm3_fil]
    data.rpm3_fil = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rpm4_fil]
    data.rpm4_fil = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [sumrpm2]
    data.sumrpm2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [thrust_force]
    data.thrust_force = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [thrust_acc]
    data.thrust_acc = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [sumrpm2_fil]
    data.sumrpm2_fil = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [thrust_force_fil]
    data.thrust_force_fil = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [thrust_acc_fil]
    data.thrust_acc_fil = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [acc_world_x]
    data.acc_world_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [acc_world_y]
    data.acc_world_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [acc_world_z]
    data.acc_world_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ge_acc_x]
    data.ge_acc_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ge_acc_y]
    data.ge_acc_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ge_acc_z]
    data.ge_acc_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ge_bodytorque_x]
    data.ge_bodytorque_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ge_bodytorque_y]
    data.ge_bodytorque_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ge_bodytorque_z]
    data.ge_bodytorque_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [des_ge_bodytorque_x]
    data.des_ge_bodytorque_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [des_ge_bodytorque_y]
    data.des_ge_bodytorque_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [des_ge_bodytorque_z]
    data.des_ge_bodytorque_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [d_ge_torque_x]
    data.d_ge_torque_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [d_ge_torque_y]
    data.d_ge_torque_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [d_ge_torque_z]
    data.d_ge_torque_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [diff_ge_torque_x]
    data.diff_ge_torque_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [diff_ge_torque_y]
    data.diff_ge_torque_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [diff_ge_torque_z]
    data.diff_ge_torque_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ext_torque_x]
    data.ext_torque_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ext_torque_y]
    data.ext_torque_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ext_torque_z]
    data.ext_torque_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [predict_ext_torque_x]
    data.predict_ext_torque_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [predict_ext_torque_y]
    data.predict_ext_torque_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [predict_ext_torque_z]
    data.predict_ext_torque_z = _deserializer.float64(buffer, bufferOffset);
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
    // Deserialize message field [des_j_x]
    data.des_j_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [des_j_y]
    data.des_j_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [des_j_z]
    data.des_j_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [des_s_x]
    data.des_s_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [des_s_y]
    data.des_s_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [des_s_z]
    data.des_s_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [des_yaw]
    data.des_yaw = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [des_yaw_rate]
    data.des_yaw_rate = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [des_yaw_acc]
    data.des_yaw_acc = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [flatctrl_q_w]
    data.flatctrl_q_w = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [flatctrl_q_x]
    data.flatctrl_q_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [flatctrl_q_y]
    data.flatctrl_q_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [flatctrl_q_z]
    data.flatctrl_q_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [flatctrl_roll]
    data.flatctrl_roll = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [flatctrl_pitch]
    data.flatctrl_pitch = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [flatctrl_yaw]
    data.flatctrl_yaw = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [flatctrl_bodyrate_x]
    data.flatctrl_bodyrate_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [flatctrl_bodyrate_y]
    data.flatctrl_bodyrate_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [flatctrl_bodyrate_z]
    data.flatctrl_bodyrate_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [flatctrl_beta_x]
    data.flatctrl_beta_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [flatctrl_beta_y]
    data.flatctrl_beta_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [flatctrl_beta_z]
    data.flatctrl_beta_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [flatctrl_thrust]
    data.flatctrl_thrust = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [flatctrl_torque_x]
    data.flatctrl_torque_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [flatctrl_torque_y]
    data.flatctrl_torque_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [flatctrl_torque_z]
    data.flatctrl_torque_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [flatctrl_ge_acc_x]
    data.flatctrl_ge_acc_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [flatctrl_ge_acc_y]
    data.flatctrl_ge_acc_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [flatctrl_ge_acc_z]
    data.flatctrl_ge_acc_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [flatctrl_drag_acc_x]
    data.flatctrl_drag_acc_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [flatctrl_drag_acc_y]
    data.flatctrl_drag_acc_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [flatctrl_drag_acc_z]
    data.flatctrl_drag_acc_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [flatctrl_ext_acc_x]
    data.flatctrl_ext_acc_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [flatctrl_ext_acc_y]
    data.flatctrl_ext_acc_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [flatctrl_ext_acc_z]
    data.flatctrl_ext_acc_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ge_limit_k]
    data.ge_limit_k = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [fb_vel_x]
    data.fb_vel_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [fb_vel_y]
    data.fb_vel_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [fb_vel_z]
    data.fb_vel_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cmd_vel_x]
    data.cmd_vel_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cmd_vel_y]
    data.cmd_vel_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cmd_vel_z]
    data.cmd_vel_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [compensate_acc_x]
    data.compensate_acc_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [compensate_acc_y]
    data.compensate_acc_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [compensate_acc_z]
    data.compensate_acc_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [fb_acc_x]
    data.fb_acc_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [fb_acc_y]
    data.fb_acc_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [fb_acc_z]
    data.fb_acc_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cmd_acc_x]
    data.cmd_acc_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cmd_acc_y]
    data.cmd_acc_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cmd_acc_z]
    data.cmd_acc_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cmd_acc_norm]
    data.cmd_acc_norm = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cmd_acc_norm_by_body]
    data.cmd_acc_norm_by_body = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cmd_q_w]
    data.cmd_q_w = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cmd_q_x]
    data.cmd_q_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cmd_q_y]
    data.cmd_q_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cmd_q_z]
    data.cmd_q_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cmd_roll]
    data.cmd_roll = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cmd_pitch]
    data.cmd_pitch = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cmd_yaw]
    data.cmd_yaw = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [fb_bodyrate_x]
    data.fb_bodyrate_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [fb_bodyrate_y]
    data.fb_bodyrate_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [fb_bodyrate_z]
    data.fb_bodyrate_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cmd_bodyrate_x]
    data.cmd_bodyrate_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cmd_bodyrate_y]
    data.cmd_bodyrate_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cmd_bodyrate_z]
    data.cmd_bodyrate_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [fb_beta_x]
    data.fb_beta_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [fb_beta_y]
    data.fb_beta_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [fb_beta_z]
    data.fb_beta_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cmd_beta_x]
    data.cmd_beta_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cmd_beta_y]
    data.cmd_beta_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cmd_beta_z]
    data.cmd_beta_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [compensate_torque_x]
    data.compensate_torque_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [compensate_torque_y]
    data.compensate_torque_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [compensate_torque_z]
    data.compensate_torque_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [bodytorque_x]
    data.bodytorque_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [bodytorque_y]
    data.bodytorque_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [bodytorque_z]
    data.bodytorque_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cmd_torque_body_x]
    data.cmd_torque_body_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cmd_torque_body_y]
    data.cmd_torque_body_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cmd_torque_body_z]
    data.cmd_torque_body_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [diff_indi_torque_x]
    data.diff_indi_torque_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [diff_indi_torque_y]
    data.diff_indi_torque_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [diff_indi_torque_z]
    data.diff_indi_torque_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [diff_torque_x]
    data.diff_torque_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [diff_torque_y]
    data.diff_torque_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [diff_torque_z]
    data.diff_torque_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cmd_rpm1]
    data.cmd_rpm1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cmd_rpm2]
    data.cmd_rpm2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cmd_rpm3]
    data.cmd_rpm3 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cmd_rpm4]
    data.cmd_rpm4 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cmd_sumrpm2]
    data.cmd_sumrpm2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cmd_sumrpm2_to_acc]
    data.cmd_sumrpm2_to_acc = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [fb_thrust1]
    data.fb_thrust1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [fb_thrust2]
    data.fb_thrust2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [fb_thrust3]
    data.fb_thrust3 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [fb_thrust4]
    data.fb_thrust4 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ref_thrust1]
    data.ref_thrust1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ref_thrust2]
    data.ref_thrust2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ref_thrust3]
    data.ref_thrust3 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ref_thrust4]
    data.ref_thrust4 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cmd_thrust1]
    data.cmd_thrust1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cmd_thrust2]
    data.cmd_thrust2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cmd_thrust3]
    data.cmd_thrust3 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cmd_thrust4]
    data.cmd_thrust4 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Fgh]
    data.Fgh = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ref_thrust_acc]
    data.ref_thrust_acc = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [thrust_acc_fil_x]
    data.thrust_acc_fil_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [thrust_acc_fil_y]
    data.thrust_acc_fil_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [thrust_acc_fil_z]
    data.thrust_acc_fil_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [imu_acc_fil_x]
    data.imu_acc_fil_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [imu_acc_fil_y]
    data.imu_acc_fil_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [imu_acc_fil_z]
    data.imu_acc_fil_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [extforce_acc_x]
    data.extforce_acc_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [extforce_acc_y]
    data.extforce_acc_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [extforce_acc_z]
    data.extforce_acc_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [extforce_acc_fil_x]
    data.extforce_acc_fil_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [extforce_acc_fil_y]
    data.extforce_acc_fil_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [extforce_acc_fil_z]
    data.extforce_acc_fil_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [poly_thrust]
    data.poly_thrust = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [fb_thrust]
    data.fb_thrust = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [sum_thrust]
    data.sum_thrust = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 1568;
  }

  static datatype() {
    // Returns string type for a message object
    return 'quadrotor_msgs/geDebug';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '488d08f267b0b36a062742ffec509736';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new geDebug(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.odom_roll !== undefined) {
      resolved.odom_roll = msg.odom_roll;
    }
    else {
      resolved.odom_roll = 0.0
    }

    if (msg.odom_pitch !== undefined) {
      resolved.odom_pitch = msg.odom_pitch;
    }
    else {
      resolved.odom_pitch = 0.0
    }

    if (msg.odom_yaw !== undefined) {
      resolved.odom_yaw = msg.odom_yaw;
    }
    else {
      resolved.odom_yaw = 0.0
    }

    if (msg.odomC_roll !== undefined) {
      resolved.odomC_roll = msg.odomC_roll;
    }
    else {
      resolved.odomC_roll = 0.0
    }

    if (msg.odomC_pitch !== undefined) {
      resolved.odomC_pitch = msg.odomC_pitch;
    }
    else {
      resolved.odomC_pitch = 0.0
    }

    if (msg.odomC_yaw !== undefined) {
      resolved.odomC_yaw = msg.odomC_yaw;
    }
    else {
      resolved.odomC_yaw = 0.0
    }

    if (msg.ge_angle_roll !== undefined) {
      resolved.ge_angle_roll = msg.ge_angle_roll;
    }
    else {
      resolved.ge_angle_roll = 0.0
    }

    if (msg.ge_angle_pitch !== undefined) {
      resolved.ge_angle_pitch = msg.ge_angle_pitch;
    }
    else {
      resolved.ge_angle_pitch = 0.0
    }

    if (msg.ge_angle_yaw !== undefined) {
      resolved.ge_angle_yaw = msg.ge_angle_yaw;
    }
    else {
      resolved.ge_angle_yaw = 0.0
    }

    if (msg.imu_a_x !== undefined) {
      resolved.imu_a_x = msg.imu_a_x;
    }
    else {
      resolved.imu_a_x = 0.0
    }

    if (msg.imu_a_y !== undefined) {
      resolved.imu_a_y = msg.imu_a_y;
    }
    else {
      resolved.imu_a_y = 0.0
    }

    if (msg.imu_a_z !== undefined) {
      resolved.imu_a_z = msg.imu_a_z;
    }
    else {
      resolved.imu_a_z = 0.0
    }

    if (msg.imu_a_fil_x !== undefined) {
      resolved.imu_a_fil_x = msg.imu_a_fil_x;
    }
    else {
      resolved.imu_a_fil_x = 0.0
    }

    if (msg.imu_a_fil_y !== undefined) {
      resolved.imu_a_fil_y = msg.imu_a_fil_y;
    }
    else {
      resolved.imu_a_fil_y = 0.0
    }

    if (msg.imu_a_fil_z !== undefined) {
      resolved.imu_a_fil_z = msg.imu_a_fil_z;
    }
    else {
      resolved.imu_a_fil_z = 0.0
    }

    if (msg.imu_w_x !== undefined) {
      resolved.imu_w_x = msg.imu_w_x;
    }
    else {
      resolved.imu_w_x = 0.0
    }

    if (msg.imu_w_y !== undefined) {
      resolved.imu_w_y = msg.imu_w_y;
    }
    else {
      resolved.imu_w_y = 0.0
    }

    if (msg.imu_w_z !== undefined) {
      resolved.imu_w_z = msg.imu_w_z;
    }
    else {
      resolved.imu_w_z = 0.0
    }

    if (msg.imu_w_fil_x !== undefined) {
      resolved.imu_w_fil_x = msg.imu_w_fil_x;
    }
    else {
      resolved.imu_w_fil_x = 0.0
    }

    if (msg.imu_w_fil_y !== undefined) {
      resolved.imu_w_fil_y = msg.imu_w_fil_y;
    }
    else {
      resolved.imu_w_fil_y = 0.0
    }

    if (msg.imu_w_fil_z !== undefined) {
      resolved.imu_w_fil_z = msg.imu_w_fil_z;
    }
    else {
      resolved.imu_w_fil_z = 0.0
    }

    if (msg.imu_w_c_x !== undefined) {
      resolved.imu_w_c_x = msg.imu_w_c_x;
    }
    else {
      resolved.imu_w_c_x = 0.0
    }

    if (msg.imu_w_c_y !== undefined) {
      resolved.imu_w_c_y = msg.imu_w_c_y;
    }
    else {
      resolved.imu_w_c_y = 0.0
    }

    if (msg.imu_w_c_z !== undefined) {
      resolved.imu_w_c_z = msg.imu_w_c_z;
    }
    else {
      resolved.imu_w_c_z = 0.0
    }

    if (msg.imu_beta_fil_x !== undefined) {
      resolved.imu_beta_fil_x = msg.imu_beta_fil_x;
    }
    else {
      resolved.imu_beta_fil_x = 0.0
    }

    if (msg.imu_beta_fil_y !== undefined) {
      resolved.imu_beta_fil_y = msg.imu_beta_fil_y;
    }
    else {
      resolved.imu_beta_fil_y = 0.0
    }

    if (msg.imu_beta_fil_z !== undefined) {
      resolved.imu_beta_fil_z = msg.imu_beta_fil_z;
    }
    else {
      resolved.imu_beta_fil_z = 0.0
    }

    if (msg.rpm1 !== undefined) {
      resolved.rpm1 = msg.rpm1;
    }
    else {
      resolved.rpm1 = 0.0
    }

    if (msg.rpm2 !== undefined) {
      resolved.rpm2 = msg.rpm2;
    }
    else {
      resolved.rpm2 = 0.0
    }

    if (msg.rpm3 !== undefined) {
      resolved.rpm3 = msg.rpm3;
    }
    else {
      resolved.rpm3 = 0.0
    }

    if (msg.rpm4 !== undefined) {
      resolved.rpm4 = msg.rpm4;
    }
    else {
      resolved.rpm4 = 0.0
    }

    if (msg.rpm1_fil !== undefined) {
      resolved.rpm1_fil = msg.rpm1_fil;
    }
    else {
      resolved.rpm1_fil = 0.0
    }

    if (msg.rpm2_fil !== undefined) {
      resolved.rpm2_fil = msg.rpm2_fil;
    }
    else {
      resolved.rpm2_fil = 0.0
    }

    if (msg.rpm3_fil !== undefined) {
      resolved.rpm3_fil = msg.rpm3_fil;
    }
    else {
      resolved.rpm3_fil = 0.0
    }

    if (msg.rpm4_fil !== undefined) {
      resolved.rpm4_fil = msg.rpm4_fil;
    }
    else {
      resolved.rpm4_fil = 0.0
    }

    if (msg.sumrpm2 !== undefined) {
      resolved.sumrpm2 = msg.sumrpm2;
    }
    else {
      resolved.sumrpm2 = 0.0
    }

    if (msg.thrust_force !== undefined) {
      resolved.thrust_force = msg.thrust_force;
    }
    else {
      resolved.thrust_force = 0.0
    }

    if (msg.thrust_acc !== undefined) {
      resolved.thrust_acc = msg.thrust_acc;
    }
    else {
      resolved.thrust_acc = 0.0
    }

    if (msg.sumrpm2_fil !== undefined) {
      resolved.sumrpm2_fil = msg.sumrpm2_fil;
    }
    else {
      resolved.sumrpm2_fil = 0.0
    }

    if (msg.thrust_force_fil !== undefined) {
      resolved.thrust_force_fil = msg.thrust_force_fil;
    }
    else {
      resolved.thrust_force_fil = 0.0
    }

    if (msg.thrust_acc_fil !== undefined) {
      resolved.thrust_acc_fil = msg.thrust_acc_fil;
    }
    else {
      resolved.thrust_acc_fil = 0.0
    }

    if (msg.acc_world_x !== undefined) {
      resolved.acc_world_x = msg.acc_world_x;
    }
    else {
      resolved.acc_world_x = 0.0
    }

    if (msg.acc_world_y !== undefined) {
      resolved.acc_world_y = msg.acc_world_y;
    }
    else {
      resolved.acc_world_y = 0.0
    }

    if (msg.acc_world_z !== undefined) {
      resolved.acc_world_z = msg.acc_world_z;
    }
    else {
      resolved.acc_world_z = 0.0
    }

    if (msg.ge_acc_x !== undefined) {
      resolved.ge_acc_x = msg.ge_acc_x;
    }
    else {
      resolved.ge_acc_x = 0.0
    }

    if (msg.ge_acc_y !== undefined) {
      resolved.ge_acc_y = msg.ge_acc_y;
    }
    else {
      resolved.ge_acc_y = 0.0
    }

    if (msg.ge_acc_z !== undefined) {
      resolved.ge_acc_z = msg.ge_acc_z;
    }
    else {
      resolved.ge_acc_z = 0.0
    }

    if (msg.ge_bodytorque_x !== undefined) {
      resolved.ge_bodytorque_x = msg.ge_bodytorque_x;
    }
    else {
      resolved.ge_bodytorque_x = 0.0
    }

    if (msg.ge_bodytorque_y !== undefined) {
      resolved.ge_bodytorque_y = msg.ge_bodytorque_y;
    }
    else {
      resolved.ge_bodytorque_y = 0.0
    }

    if (msg.ge_bodytorque_z !== undefined) {
      resolved.ge_bodytorque_z = msg.ge_bodytorque_z;
    }
    else {
      resolved.ge_bodytorque_z = 0.0
    }

    if (msg.des_ge_bodytorque_x !== undefined) {
      resolved.des_ge_bodytorque_x = msg.des_ge_bodytorque_x;
    }
    else {
      resolved.des_ge_bodytorque_x = 0.0
    }

    if (msg.des_ge_bodytorque_y !== undefined) {
      resolved.des_ge_bodytorque_y = msg.des_ge_bodytorque_y;
    }
    else {
      resolved.des_ge_bodytorque_y = 0.0
    }

    if (msg.des_ge_bodytorque_z !== undefined) {
      resolved.des_ge_bodytorque_z = msg.des_ge_bodytorque_z;
    }
    else {
      resolved.des_ge_bodytorque_z = 0.0
    }

    if (msg.d_ge_torque_x !== undefined) {
      resolved.d_ge_torque_x = msg.d_ge_torque_x;
    }
    else {
      resolved.d_ge_torque_x = 0.0
    }

    if (msg.d_ge_torque_y !== undefined) {
      resolved.d_ge_torque_y = msg.d_ge_torque_y;
    }
    else {
      resolved.d_ge_torque_y = 0.0
    }

    if (msg.d_ge_torque_z !== undefined) {
      resolved.d_ge_torque_z = msg.d_ge_torque_z;
    }
    else {
      resolved.d_ge_torque_z = 0.0
    }

    if (msg.diff_ge_torque_x !== undefined) {
      resolved.diff_ge_torque_x = msg.diff_ge_torque_x;
    }
    else {
      resolved.diff_ge_torque_x = 0.0
    }

    if (msg.diff_ge_torque_y !== undefined) {
      resolved.diff_ge_torque_y = msg.diff_ge_torque_y;
    }
    else {
      resolved.diff_ge_torque_y = 0.0
    }

    if (msg.diff_ge_torque_z !== undefined) {
      resolved.diff_ge_torque_z = msg.diff_ge_torque_z;
    }
    else {
      resolved.diff_ge_torque_z = 0.0
    }

    if (msg.ext_torque_x !== undefined) {
      resolved.ext_torque_x = msg.ext_torque_x;
    }
    else {
      resolved.ext_torque_x = 0.0
    }

    if (msg.ext_torque_y !== undefined) {
      resolved.ext_torque_y = msg.ext_torque_y;
    }
    else {
      resolved.ext_torque_y = 0.0
    }

    if (msg.ext_torque_z !== undefined) {
      resolved.ext_torque_z = msg.ext_torque_z;
    }
    else {
      resolved.ext_torque_z = 0.0
    }

    if (msg.predict_ext_torque_x !== undefined) {
      resolved.predict_ext_torque_x = msg.predict_ext_torque_x;
    }
    else {
      resolved.predict_ext_torque_x = 0.0
    }

    if (msg.predict_ext_torque_y !== undefined) {
      resolved.predict_ext_torque_y = msg.predict_ext_torque_y;
    }
    else {
      resolved.predict_ext_torque_y = 0.0
    }

    if (msg.predict_ext_torque_z !== undefined) {
      resolved.predict_ext_torque_z = msg.predict_ext_torque_z;
    }
    else {
      resolved.predict_ext_torque_z = 0.0
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

    if (msg.des_j_x !== undefined) {
      resolved.des_j_x = msg.des_j_x;
    }
    else {
      resolved.des_j_x = 0.0
    }

    if (msg.des_j_y !== undefined) {
      resolved.des_j_y = msg.des_j_y;
    }
    else {
      resolved.des_j_y = 0.0
    }

    if (msg.des_j_z !== undefined) {
      resolved.des_j_z = msg.des_j_z;
    }
    else {
      resolved.des_j_z = 0.0
    }

    if (msg.des_s_x !== undefined) {
      resolved.des_s_x = msg.des_s_x;
    }
    else {
      resolved.des_s_x = 0.0
    }

    if (msg.des_s_y !== undefined) {
      resolved.des_s_y = msg.des_s_y;
    }
    else {
      resolved.des_s_y = 0.0
    }

    if (msg.des_s_z !== undefined) {
      resolved.des_s_z = msg.des_s_z;
    }
    else {
      resolved.des_s_z = 0.0
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

    if (msg.flatctrl_q_w !== undefined) {
      resolved.flatctrl_q_w = msg.flatctrl_q_w;
    }
    else {
      resolved.flatctrl_q_w = 0.0
    }

    if (msg.flatctrl_q_x !== undefined) {
      resolved.flatctrl_q_x = msg.flatctrl_q_x;
    }
    else {
      resolved.flatctrl_q_x = 0.0
    }

    if (msg.flatctrl_q_y !== undefined) {
      resolved.flatctrl_q_y = msg.flatctrl_q_y;
    }
    else {
      resolved.flatctrl_q_y = 0.0
    }

    if (msg.flatctrl_q_z !== undefined) {
      resolved.flatctrl_q_z = msg.flatctrl_q_z;
    }
    else {
      resolved.flatctrl_q_z = 0.0
    }

    if (msg.flatctrl_roll !== undefined) {
      resolved.flatctrl_roll = msg.flatctrl_roll;
    }
    else {
      resolved.flatctrl_roll = 0.0
    }

    if (msg.flatctrl_pitch !== undefined) {
      resolved.flatctrl_pitch = msg.flatctrl_pitch;
    }
    else {
      resolved.flatctrl_pitch = 0.0
    }

    if (msg.flatctrl_yaw !== undefined) {
      resolved.flatctrl_yaw = msg.flatctrl_yaw;
    }
    else {
      resolved.flatctrl_yaw = 0.0
    }

    if (msg.flatctrl_bodyrate_x !== undefined) {
      resolved.flatctrl_bodyrate_x = msg.flatctrl_bodyrate_x;
    }
    else {
      resolved.flatctrl_bodyrate_x = 0.0
    }

    if (msg.flatctrl_bodyrate_y !== undefined) {
      resolved.flatctrl_bodyrate_y = msg.flatctrl_bodyrate_y;
    }
    else {
      resolved.flatctrl_bodyrate_y = 0.0
    }

    if (msg.flatctrl_bodyrate_z !== undefined) {
      resolved.flatctrl_bodyrate_z = msg.flatctrl_bodyrate_z;
    }
    else {
      resolved.flatctrl_bodyrate_z = 0.0
    }

    if (msg.flatctrl_beta_x !== undefined) {
      resolved.flatctrl_beta_x = msg.flatctrl_beta_x;
    }
    else {
      resolved.flatctrl_beta_x = 0.0
    }

    if (msg.flatctrl_beta_y !== undefined) {
      resolved.flatctrl_beta_y = msg.flatctrl_beta_y;
    }
    else {
      resolved.flatctrl_beta_y = 0.0
    }

    if (msg.flatctrl_beta_z !== undefined) {
      resolved.flatctrl_beta_z = msg.flatctrl_beta_z;
    }
    else {
      resolved.flatctrl_beta_z = 0.0
    }

    if (msg.flatctrl_thrust !== undefined) {
      resolved.flatctrl_thrust = msg.flatctrl_thrust;
    }
    else {
      resolved.flatctrl_thrust = 0.0
    }

    if (msg.flatctrl_torque_x !== undefined) {
      resolved.flatctrl_torque_x = msg.flatctrl_torque_x;
    }
    else {
      resolved.flatctrl_torque_x = 0.0
    }

    if (msg.flatctrl_torque_y !== undefined) {
      resolved.flatctrl_torque_y = msg.flatctrl_torque_y;
    }
    else {
      resolved.flatctrl_torque_y = 0.0
    }

    if (msg.flatctrl_torque_z !== undefined) {
      resolved.flatctrl_torque_z = msg.flatctrl_torque_z;
    }
    else {
      resolved.flatctrl_torque_z = 0.0
    }

    if (msg.flatctrl_ge_acc_x !== undefined) {
      resolved.flatctrl_ge_acc_x = msg.flatctrl_ge_acc_x;
    }
    else {
      resolved.flatctrl_ge_acc_x = 0.0
    }

    if (msg.flatctrl_ge_acc_y !== undefined) {
      resolved.flatctrl_ge_acc_y = msg.flatctrl_ge_acc_y;
    }
    else {
      resolved.flatctrl_ge_acc_y = 0.0
    }

    if (msg.flatctrl_ge_acc_z !== undefined) {
      resolved.flatctrl_ge_acc_z = msg.flatctrl_ge_acc_z;
    }
    else {
      resolved.flatctrl_ge_acc_z = 0.0
    }

    if (msg.flatctrl_drag_acc_x !== undefined) {
      resolved.flatctrl_drag_acc_x = msg.flatctrl_drag_acc_x;
    }
    else {
      resolved.flatctrl_drag_acc_x = 0.0
    }

    if (msg.flatctrl_drag_acc_y !== undefined) {
      resolved.flatctrl_drag_acc_y = msg.flatctrl_drag_acc_y;
    }
    else {
      resolved.flatctrl_drag_acc_y = 0.0
    }

    if (msg.flatctrl_drag_acc_z !== undefined) {
      resolved.flatctrl_drag_acc_z = msg.flatctrl_drag_acc_z;
    }
    else {
      resolved.flatctrl_drag_acc_z = 0.0
    }

    if (msg.flatctrl_ext_acc_x !== undefined) {
      resolved.flatctrl_ext_acc_x = msg.flatctrl_ext_acc_x;
    }
    else {
      resolved.flatctrl_ext_acc_x = 0.0
    }

    if (msg.flatctrl_ext_acc_y !== undefined) {
      resolved.flatctrl_ext_acc_y = msg.flatctrl_ext_acc_y;
    }
    else {
      resolved.flatctrl_ext_acc_y = 0.0
    }

    if (msg.flatctrl_ext_acc_z !== undefined) {
      resolved.flatctrl_ext_acc_z = msg.flatctrl_ext_acc_z;
    }
    else {
      resolved.flatctrl_ext_acc_z = 0.0
    }

    if (msg.ge_limit_k !== undefined) {
      resolved.ge_limit_k = msg.ge_limit_k;
    }
    else {
      resolved.ge_limit_k = 0.0
    }

    if (msg.fb_vel_x !== undefined) {
      resolved.fb_vel_x = msg.fb_vel_x;
    }
    else {
      resolved.fb_vel_x = 0.0
    }

    if (msg.fb_vel_y !== undefined) {
      resolved.fb_vel_y = msg.fb_vel_y;
    }
    else {
      resolved.fb_vel_y = 0.0
    }

    if (msg.fb_vel_z !== undefined) {
      resolved.fb_vel_z = msg.fb_vel_z;
    }
    else {
      resolved.fb_vel_z = 0.0
    }

    if (msg.cmd_vel_x !== undefined) {
      resolved.cmd_vel_x = msg.cmd_vel_x;
    }
    else {
      resolved.cmd_vel_x = 0.0
    }

    if (msg.cmd_vel_y !== undefined) {
      resolved.cmd_vel_y = msg.cmd_vel_y;
    }
    else {
      resolved.cmd_vel_y = 0.0
    }

    if (msg.cmd_vel_z !== undefined) {
      resolved.cmd_vel_z = msg.cmd_vel_z;
    }
    else {
      resolved.cmd_vel_z = 0.0
    }

    if (msg.compensate_acc_x !== undefined) {
      resolved.compensate_acc_x = msg.compensate_acc_x;
    }
    else {
      resolved.compensate_acc_x = 0.0
    }

    if (msg.compensate_acc_y !== undefined) {
      resolved.compensate_acc_y = msg.compensate_acc_y;
    }
    else {
      resolved.compensate_acc_y = 0.0
    }

    if (msg.compensate_acc_z !== undefined) {
      resolved.compensate_acc_z = msg.compensate_acc_z;
    }
    else {
      resolved.compensate_acc_z = 0.0
    }

    if (msg.fb_acc_x !== undefined) {
      resolved.fb_acc_x = msg.fb_acc_x;
    }
    else {
      resolved.fb_acc_x = 0.0
    }

    if (msg.fb_acc_y !== undefined) {
      resolved.fb_acc_y = msg.fb_acc_y;
    }
    else {
      resolved.fb_acc_y = 0.0
    }

    if (msg.fb_acc_z !== undefined) {
      resolved.fb_acc_z = msg.fb_acc_z;
    }
    else {
      resolved.fb_acc_z = 0.0
    }

    if (msg.cmd_acc_x !== undefined) {
      resolved.cmd_acc_x = msg.cmd_acc_x;
    }
    else {
      resolved.cmd_acc_x = 0.0
    }

    if (msg.cmd_acc_y !== undefined) {
      resolved.cmd_acc_y = msg.cmd_acc_y;
    }
    else {
      resolved.cmd_acc_y = 0.0
    }

    if (msg.cmd_acc_z !== undefined) {
      resolved.cmd_acc_z = msg.cmd_acc_z;
    }
    else {
      resolved.cmd_acc_z = 0.0
    }

    if (msg.cmd_acc_norm !== undefined) {
      resolved.cmd_acc_norm = msg.cmd_acc_norm;
    }
    else {
      resolved.cmd_acc_norm = 0.0
    }

    if (msg.cmd_acc_norm_by_body !== undefined) {
      resolved.cmd_acc_norm_by_body = msg.cmd_acc_norm_by_body;
    }
    else {
      resolved.cmd_acc_norm_by_body = 0.0
    }

    if (msg.cmd_q_w !== undefined) {
      resolved.cmd_q_w = msg.cmd_q_w;
    }
    else {
      resolved.cmd_q_w = 0.0
    }

    if (msg.cmd_q_x !== undefined) {
      resolved.cmd_q_x = msg.cmd_q_x;
    }
    else {
      resolved.cmd_q_x = 0.0
    }

    if (msg.cmd_q_y !== undefined) {
      resolved.cmd_q_y = msg.cmd_q_y;
    }
    else {
      resolved.cmd_q_y = 0.0
    }

    if (msg.cmd_q_z !== undefined) {
      resolved.cmd_q_z = msg.cmd_q_z;
    }
    else {
      resolved.cmd_q_z = 0.0
    }

    if (msg.cmd_roll !== undefined) {
      resolved.cmd_roll = msg.cmd_roll;
    }
    else {
      resolved.cmd_roll = 0.0
    }

    if (msg.cmd_pitch !== undefined) {
      resolved.cmd_pitch = msg.cmd_pitch;
    }
    else {
      resolved.cmd_pitch = 0.0
    }

    if (msg.cmd_yaw !== undefined) {
      resolved.cmd_yaw = msg.cmd_yaw;
    }
    else {
      resolved.cmd_yaw = 0.0
    }

    if (msg.fb_bodyrate_x !== undefined) {
      resolved.fb_bodyrate_x = msg.fb_bodyrate_x;
    }
    else {
      resolved.fb_bodyrate_x = 0.0
    }

    if (msg.fb_bodyrate_y !== undefined) {
      resolved.fb_bodyrate_y = msg.fb_bodyrate_y;
    }
    else {
      resolved.fb_bodyrate_y = 0.0
    }

    if (msg.fb_bodyrate_z !== undefined) {
      resolved.fb_bodyrate_z = msg.fb_bodyrate_z;
    }
    else {
      resolved.fb_bodyrate_z = 0.0
    }

    if (msg.cmd_bodyrate_x !== undefined) {
      resolved.cmd_bodyrate_x = msg.cmd_bodyrate_x;
    }
    else {
      resolved.cmd_bodyrate_x = 0.0
    }

    if (msg.cmd_bodyrate_y !== undefined) {
      resolved.cmd_bodyrate_y = msg.cmd_bodyrate_y;
    }
    else {
      resolved.cmd_bodyrate_y = 0.0
    }

    if (msg.cmd_bodyrate_z !== undefined) {
      resolved.cmd_bodyrate_z = msg.cmd_bodyrate_z;
    }
    else {
      resolved.cmd_bodyrate_z = 0.0
    }

    if (msg.fb_beta_x !== undefined) {
      resolved.fb_beta_x = msg.fb_beta_x;
    }
    else {
      resolved.fb_beta_x = 0.0
    }

    if (msg.fb_beta_y !== undefined) {
      resolved.fb_beta_y = msg.fb_beta_y;
    }
    else {
      resolved.fb_beta_y = 0.0
    }

    if (msg.fb_beta_z !== undefined) {
      resolved.fb_beta_z = msg.fb_beta_z;
    }
    else {
      resolved.fb_beta_z = 0.0
    }

    if (msg.cmd_beta_x !== undefined) {
      resolved.cmd_beta_x = msg.cmd_beta_x;
    }
    else {
      resolved.cmd_beta_x = 0.0
    }

    if (msg.cmd_beta_y !== undefined) {
      resolved.cmd_beta_y = msg.cmd_beta_y;
    }
    else {
      resolved.cmd_beta_y = 0.0
    }

    if (msg.cmd_beta_z !== undefined) {
      resolved.cmd_beta_z = msg.cmd_beta_z;
    }
    else {
      resolved.cmd_beta_z = 0.0
    }

    if (msg.compensate_torque_x !== undefined) {
      resolved.compensate_torque_x = msg.compensate_torque_x;
    }
    else {
      resolved.compensate_torque_x = 0.0
    }

    if (msg.compensate_torque_y !== undefined) {
      resolved.compensate_torque_y = msg.compensate_torque_y;
    }
    else {
      resolved.compensate_torque_y = 0.0
    }

    if (msg.compensate_torque_z !== undefined) {
      resolved.compensate_torque_z = msg.compensate_torque_z;
    }
    else {
      resolved.compensate_torque_z = 0.0
    }

    if (msg.bodytorque_x !== undefined) {
      resolved.bodytorque_x = msg.bodytorque_x;
    }
    else {
      resolved.bodytorque_x = 0.0
    }

    if (msg.bodytorque_y !== undefined) {
      resolved.bodytorque_y = msg.bodytorque_y;
    }
    else {
      resolved.bodytorque_y = 0.0
    }

    if (msg.bodytorque_z !== undefined) {
      resolved.bodytorque_z = msg.bodytorque_z;
    }
    else {
      resolved.bodytorque_z = 0.0
    }

    if (msg.cmd_torque_body_x !== undefined) {
      resolved.cmd_torque_body_x = msg.cmd_torque_body_x;
    }
    else {
      resolved.cmd_torque_body_x = 0.0
    }

    if (msg.cmd_torque_body_y !== undefined) {
      resolved.cmd_torque_body_y = msg.cmd_torque_body_y;
    }
    else {
      resolved.cmd_torque_body_y = 0.0
    }

    if (msg.cmd_torque_body_z !== undefined) {
      resolved.cmd_torque_body_z = msg.cmd_torque_body_z;
    }
    else {
      resolved.cmd_torque_body_z = 0.0
    }

    if (msg.diff_indi_torque_x !== undefined) {
      resolved.diff_indi_torque_x = msg.diff_indi_torque_x;
    }
    else {
      resolved.diff_indi_torque_x = 0.0
    }

    if (msg.diff_indi_torque_y !== undefined) {
      resolved.diff_indi_torque_y = msg.diff_indi_torque_y;
    }
    else {
      resolved.diff_indi_torque_y = 0.0
    }

    if (msg.diff_indi_torque_z !== undefined) {
      resolved.diff_indi_torque_z = msg.diff_indi_torque_z;
    }
    else {
      resolved.diff_indi_torque_z = 0.0
    }

    if (msg.diff_torque_x !== undefined) {
      resolved.diff_torque_x = msg.diff_torque_x;
    }
    else {
      resolved.diff_torque_x = 0.0
    }

    if (msg.diff_torque_y !== undefined) {
      resolved.diff_torque_y = msg.diff_torque_y;
    }
    else {
      resolved.diff_torque_y = 0.0
    }

    if (msg.diff_torque_z !== undefined) {
      resolved.diff_torque_z = msg.diff_torque_z;
    }
    else {
      resolved.diff_torque_z = 0.0
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

    if (msg.cmd_sumrpm2 !== undefined) {
      resolved.cmd_sumrpm2 = msg.cmd_sumrpm2;
    }
    else {
      resolved.cmd_sumrpm2 = 0.0
    }

    if (msg.cmd_sumrpm2_to_acc !== undefined) {
      resolved.cmd_sumrpm2_to_acc = msg.cmd_sumrpm2_to_acc;
    }
    else {
      resolved.cmd_sumrpm2_to_acc = 0.0
    }

    if (msg.fb_thrust1 !== undefined) {
      resolved.fb_thrust1 = msg.fb_thrust1;
    }
    else {
      resolved.fb_thrust1 = 0.0
    }

    if (msg.fb_thrust2 !== undefined) {
      resolved.fb_thrust2 = msg.fb_thrust2;
    }
    else {
      resolved.fb_thrust2 = 0.0
    }

    if (msg.fb_thrust3 !== undefined) {
      resolved.fb_thrust3 = msg.fb_thrust3;
    }
    else {
      resolved.fb_thrust3 = 0.0
    }

    if (msg.fb_thrust4 !== undefined) {
      resolved.fb_thrust4 = msg.fb_thrust4;
    }
    else {
      resolved.fb_thrust4 = 0.0
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

    if (msg.cmd_thrust1 !== undefined) {
      resolved.cmd_thrust1 = msg.cmd_thrust1;
    }
    else {
      resolved.cmd_thrust1 = 0.0
    }

    if (msg.cmd_thrust2 !== undefined) {
      resolved.cmd_thrust2 = msg.cmd_thrust2;
    }
    else {
      resolved.cmd_thrust2 = 0.0
    }

    if (msg.cmd_thrust3 !== undefined) {
      resolved.cmd_thrust3 = msg.cmd_thrust3;
    }
    else {
      resolved.cmd_thrust3 = 0.0
    }

    if (msg.cmd_thrust4 !== undefined) {
      resolved.cmd_thrust4 = msg.cmd_thrust4;
    }
    else {
      resolved.cmd_thrust4 = 0.0
    }

    if (msg.Fgh !== undefined) {
      resolved.Fgh = msg.Fgh;
    }
    else {
      resolved.Fgh = 0.0
    }

    if (msg.ref_thrust_acc !== undefined) {
      resolved.ref_thrust_acc = msg.ref_thrust_acc;
    }
    else {
      resolved.ref_thrust_acc = 0.0
    }

    if (msg.thrust_acc_fil_x !== undefined) {
      resolved.thrust_acc_fil_x = msg.thrust_acc_fil_x;
    }
    else {
      resolved.thrust_acc_fil_x = 0.0
    }

    if (msg.thrust_acc_fil_y !== undefined) {
      resolved.thrust_acc_fil_y = msg.thrust_acc_fil_y;
    }
    else {
      resolved.thrust_acc_fil_y = 0.0
    }

    if (msg.thrust_acc_fil_z !== undefined) {
      resolved.thrust_acc_fil_z = msg.thrust_acc_fil_z;
    }
    else {
      resolved.thrust_acc_fil_z = 0.0
    }

    if (msg.imu_acc_fil_x !== undefined) {
      resolved.imu_acc_fil_x = msg.imu_acc_fil_x;
    }
    else {
      resolved.imu_acc_fil_x = 0.0
    }

    if (msg.imu_acc_fil_y !== undefined) {
      resolved.imu_acc_fil_y = msg.imu_acc_fil_y;
    }
    else {
      resolved.imu_acc_fil_y = 0.0
    }

    if (msg.imu_acc_fil_z !== undefined) {
      resolved.imu_acc_fil_z = msg.imu_acc_fil_z;
    }
    else {
      resolved.imu_acc_fil_z = 0.0
    }

    if (msg.extforce_acc_x !== undefined) {
      resolved.extforce_acc_x = msg.extforce_acc_x;
    }
    else {
      resolved.extforce_acc_x = 0.0
    }

    if (msg.extforce_acc_y !== undefined) {
      resolved.extforce_acc_y = msg.extforce_acc_y;
    }
    else {
      resolved.extforce_acc_y = 0.0
    }

    if (msg.extforce_acc_z !== undefined) {
      resolved.extforce_acc_z = msg.extforce_acc_z;
    }
    else {
      resolved.extforce_acc_z = 0.0
    }

    if (msg.extforce_acc_fil_x !== undefined) {
      resolved.extforce_acc_fil_x = msg.extforce_acc_fil_x;
    }
    else {
      resolved.extforce_acc_fil_x = 0.0
    }

    if (msg.extforce_acc_fil_y !== undefined) {
      resolved.extforce_acc_fil_y = msg.extforce_acc_fil_y;
    }
    else {
      resolved.extforce_acc_fil_y = 0.0
    }

    if (msg.extforce_acc_fil_z !== undefined) {
      resolved.extforce_acc_fil_z = msg.extforce_acc_fil_z;
    }
    else {
      resolved.extforce_acc_fil_z = 0.0
    }

    if (msg.poly_thrust !== undefined) {
      resolved.poly_thrust = msg.poly_thrust;
    }
    else {
      resolved.poly_thrust = 0.0
    }

    if (msg.fb_thrust !== undefined) {
      resolved.fb_thrust = msg.fb_thrust;
    }
    else {
      resolved.fb_thrust = 0.0
    }

    if (msg.sum_thrust !== undefined) {
      resolved.sum_thrust = msg.sum_thrust;
    }
    else {
      resolved.sum_thrust = 0.0
    }

    return resolved;
    }
};

module.exports = geDebug;
