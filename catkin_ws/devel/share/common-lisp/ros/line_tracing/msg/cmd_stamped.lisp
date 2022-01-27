; Auto-generated. Do not edit!


(cl:in-package line_tracing-msg)


;//! \htmlinclude cmd_stamped.msg.html

(cl:defclass <cmd_stamped> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (cmd_num
    :reader cmd_num
    :initarg :cmd_num
    :type cl:fixnum
    :initform 0))
)

(cl:defclass cmd_stamped (<cmd_stamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <cmd_stamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'cmd_stamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name line_tracing-msg:<cmd_stamped> is deprecated: use line_tracing-msg:cmd_stamped instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <cmd_stamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader line_tracing-msg:header-val is deprecated.  Use line_tracing-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'cmd_num-val :lambda-list '(m))
(cl:defmethod cmd_num-val ((m <cmd_stamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader line_tracing-msg:cmd_num-val is deprecated.  Use line_tracing-msg:cmd_num instead.")
  (cmd_num m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <cmd_stamped>) ostream)
  "Serializes a message object of type '<cmd_stamped>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'cmd_num)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <cmd_stamped>) istream)
  "Deserializes a message object of type '<cmd_stamped>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cmd_num) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<cmd_stamped>)))
  "Returns string type for a message object of type '<cmd_stamped>"
  "line_tracing/cmd_stamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cmd_stamped)))
  "Returns string type for a message object of type 'cmd_stamped"
  "line_tracing/cmd_stamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<cmd_stamped>)))
  "Returns md5sum for a message object of type '<cmd_stamped>"
  "32c7c280a81068f50612cb2e16ef6493")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'cmd_stamped)))
  "Returns md5sum for a message object of type 'cmd_stamped"
  "32c7c280a81068f50612cb2e16ef6493")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<cmd_stamped>)))
  "Returns full string definition for message of type '<cmd_stamped>"
  (cl:format cl:nil "std_msgs/Header header~%int8 cmd_num~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'cmd_stamped)))
  "Returns full string definition for message of type 'cmd_stamped"
  (cl:format cl:nil "std_msgs/Header header~%int8 cmd_num~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <cmd_stamped>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <cmd_stamped>))
  "Converts a ROS message object to a list"
  (cl:list 'cmd_stamped
    (cl:cons ':header (header msg))
    (cl:cons ':cmd_num (cmd_num msg))
))
