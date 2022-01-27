;; Auto-generated. Do not edit!


(when (boundp 'line_tracing::cmd_stamped)
  (if (not (find-package "LINE_TRACING"))
    (make-package "LINE_TRACING"))
  (shadow 'cmd_stamped (find-package "LINE_TRACING")))
(unless (find-package "LINE_TRACING::CMD_STAMPED")
  (make-package "LINE_TRACING::CMD_STAMPED"))

(in-package "ROS")
;;//! \htmlinclude cmd_stamped.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass line_tracing::cmd_stamped
  :super ros::object
  :slots (_header _cmd_num ))

(defmethod line_tracing::cmd_stamped
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:cmd_num __cmd_num) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _cmd_num (round __cmd_num))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:cmd_num
   (&optional __cmd_num)
   (if __cmd_num (setq _cmd_num __cmd_num)) _cmd_num)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int8 _cmd_num
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int8 _cmd_num
       (write-byte _cmd_num s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int8 _cmd_num
     (setq _cmd_num (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _cmd_num 127) (setq _cmd_num (- _cmd_num 256)))
   ;;
   self)
  )

(setf (get line_tracing::cmd_stamped :md5sum-) "32c7c280a81068f50612cb2e16ef6493")
(setf (get line_tracing::cmd_stamped :datatype-) "line_tracing/cmd_stamped")
(setf (get line_tracing::cmd_stamped :definition-)
      "std_msgs/Header header
int8 cmd_num

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
# 0: no frame
# 1: global frame
string frame_id

")



(provide :line_tracing/cmd_stamped "32c7c280a81068f50612cb2e16ef6493")


