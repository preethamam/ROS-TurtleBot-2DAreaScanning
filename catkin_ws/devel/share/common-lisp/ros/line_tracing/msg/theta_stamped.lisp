; Auto-generated. Do not edit!


(cl:in-package line_tracing-msg)


;//! \htmlinclude theta_stamped.msg.html

(cl:defclass <theta_stamped> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (data
    :reader data
    :initarg :data
    :type cl:float
    :initform 0.0)
   (detect
    :reader detect
    :initarg :detect
    :type cl:integer
    :initform 0))
)

(cl:defclass theta_stamped (<theta_stamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <theta_stamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'theta_stamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name line_tracing-msg:<theta_stamped> is deprecated: use line_tracing-msg:theta_stamped instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <theta_stamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader line_tracing-msg:header-val is deprecated.  Use line_tracing-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <theta_stamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader line_tracing-msg:data-val is deprecated.  Use line_tracing-msg:data instead.")
  (data m))

(cl:ensure-generic-function 'detect-val :lambda-list '(m))
(cl:defmethod detect-val ((m <theta_stamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader line_tracing-msg:detect-val is deprecated.  Use line_tracing-msg:detect instead.")
  (detect m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <theta_stamped>) ostream)
  "Serializes a message object of type '<theta_stamped>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'detect)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'detect)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'detect)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'detect)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <theta_stamped>) istream)
  "Deserializes a message object of type '<theta_stamped>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'data) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'detect)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'detect)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'detect)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'detect)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<theta_stamped>)))
  "Returns string type for a message object of type '<theta_stamped>"
  "line_tracing/theta_stamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'theta_stamped)))
  "Returns string type for a message object of type 'theta_stamped"
  "line_tracing/theta_stamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<theta_stamped>)))
  "Returns md5sum for a message object of type '<theta_stamped>"
  "846af8458db8de8008694a3ec56b55f2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'theta_stamped)))
  "Returns md5sum for a message object of type 'theta_stamped"
  "846af8458db8de8008694a3ec56b55f2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<theta_stamped>)))
  "Returns full string definition for message of type '<theta_stamped>"
  (cl:format cl:nil "std_msgs/Header header~%float32 data~%uint32 detect~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'theta_stamped)))
  "Returns full string definition for message of type 'theta_stamped"
  (cl:format cl:nil "std_msgs/Header header~%float32 data~%uint32 detect~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <theta_stamped>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <theta_stamped>))
  "Converts a ROS message object to a list"
  (cl:list 'theta_stamped
    (cl:cons ':header (header msg))
    (cl:cons ':data (data msg))
    (cl:cons ':detect (detect msg))
))
