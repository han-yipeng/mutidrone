;; Auto-generated. Do not edit!


(when (boundp 'quadrotor_msgs::trigger)
  (if (not (find-package "QUADROTOR_MSGS"))
    (make-package "QUADROTOR_MSGS"))
  (shadow 'trigger (find-package "QUADROTOR_MSGS")))
(unless (find-package "QUADROTOR_MSGS::TRIGGER")
  (make-package "QUADROTOR_MSGS::TRIGGER"))

(in-package "ROS")
;;//! \htmlinclude trigger.msg.html


(intern "*TRIGGERTAKEOFF*" (find-package "QUADROTOR_MSGS::TRIGGER"))
(shadow '*TRIGGERTAKEOFF* (find-package "QUADROTOR_MSGS::TRIGGER"))
(defconstant quadrotor_msgs::trigger::*TRIGGERTAKEOFF* 1)
(intern "*TRIGGERSWITCHCONTROL*" (find-package "QUADROTOR_MSGS::TRIGGER"))
(shadow '*TRIGGERSWITCHCONTROL* (find-package "QUADROTOR_MSGS::TRIGGER"))
(defconstant quadrotor_msgs::trigger::*TRIGGERSWITCHCONTROL* 2)
(intern "*TRIGGERFLIGHT*" (find-package "QUADROTOR_MSGS::TRIGGER"))
(shadow '*TRIGGERFLIGHT* (find-package "QUADROTOR_MSGS::TRIGGER"))
(defconstant quadrotor_msgs::trigger::*TRIGGERFLIGHT* 3)

(defun quadrotor_msgs::trigger-to-symbol (const)
  (cond
        ((= const 1) 'quadrotor_msgs::trigger::*triggerTakeOff*)
        ((= const 2) 'quadrotor_msgs::trigger::*triggerSwitchControl*)
        ((= const 3) 'quadrotor_msgs::trigger::*triggerFlight*)
        (t nil)))

(defclass quadrotor_msgs::trigger
  :super ros::object
  :slots (_trigger_cmd ))

(defmethod quadrotor_msgs::trigger
  (:init
   (&key
    ((:trigger_cmd __trigger_cmd) 0)
    )
   (send-super :init)
   (setq _trigger_cmd (round __trigger_cmd))
   self)
  (:trigger_cmd
   (&optional __trigger_cmd)
   (if __trigger_cmd (setq _trigger_cmd __trigger_cmd)) _trigger_cmd)
  (:serialization-length
   ()
   (+
    ;; uint8 _trigger_cmd
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _trigger_cmd
       (write-byte _trigger_cmd s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _trigger_cmd
     (setq _trigger_cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get quadrotor_msgs::trigger :md5sum-) "8009a0fa43f357a00d4ef52b41eda254")
(setf (get quadrotor_msgs::trigger :datatype-) "quadrotor_msgs/trigger")
(setf (get quadrotor_msgs::trigger :definition-)
      "uint8 triggerTakeOff = 1
uint8 triggerSwitchControl = 2
uint8 triggerFlight = 3
uint8 trigger_cmd
")



(provide :quadrotor_msgs/trigger "8009a0fa43f357a00d4ef52b41eda254")


