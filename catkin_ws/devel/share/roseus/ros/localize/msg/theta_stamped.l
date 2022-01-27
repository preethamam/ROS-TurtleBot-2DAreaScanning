;; Auto-generated. Do not edit!


(when (boundp 'localize::theta_stamped)
  (if (not (find-package "LOCALIZE"))
    (make-package "LOCALIZE"))
  (shadow 'theta_stamped (find-package "LOCALIZE")))
(unless (find-package "LOCALIZE::THETA_STAMPED")
  (make-package "LOCALIZE::THETA_STAMPED"))

(in-package "ROS")
;;//! \htmlinclude theta_stamped.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass localize::theta_stamped
  :super ros::object
  :slots (_header _data _detect ))

(defmethod localize::theta_stamped
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:data __data) 0.0)
    ((:detect __detect) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _data (float __data))
   (setq _detect (round __detect))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:detect
   (&optional __detect)
   (if __detect (setq _detect __detect)) _detect)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _data
    4
    ;; uint32 _detect
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _data
       (sys::poke _data (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint32 _detect
       (write-long _detect s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _data
     (setq _data (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint32 _detect
     (setq _detect (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get localize::theta_stamped :md5sum-) "846af8458db8de8008694a3ec56b55f2")
(setf (get localize::theta_stamped :datatype-) "localize/theta_stamped")
(setf (get localize::theta_stamped :definition-)
      "std_msgs/Header header

float32 data
uint32 detect

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



(provide :localize/theta_stamped "846af8458db8de8008694a3ec56b55f2")


