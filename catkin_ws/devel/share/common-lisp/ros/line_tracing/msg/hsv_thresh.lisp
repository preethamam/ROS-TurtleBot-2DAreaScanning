; Auto-generated. Do not edit!


(cl:in-package line_tracing-msg)


;//! \htmlinclude hsv_thresh.msg.html

(cl:defclass <hsv_thresh> (roslisp-msg-protocol:ros-message)
  ((k_size
    :reader k_size
    :initarg :k_size
    :type cl:fixnum
    :initform 0)
   (e_size
    :reader e_size
    :initarg :e_size
    :type cl:fixnum
    :initform 0)
   (d_size
    :reader d_size
    :initarg :d_size
    :type cl:fixnum
    :initform 0)
   (lowH
    :reader lowH
    :initarg :lowH
    :type cl:fixnum
    :initform 0)
   (highH
    :reader highH
    :initarg :highH
    :type cl:fixnum
    :initform 0)
   (lowS
    :reader lowS
    :initarg :lowS
    :type cl:fixnum
    :initform 0)
   (highS
    :reader highS
    :initarg :highS
    :type cl:fixnum
    :initform 0)
   (lowV
    :reader lowV
    :initarg :lowV
    :type cl:fixnum
    :initform 0)
   (highV
    :reader highV
    :initarg :highV
    :type cl:fixnum
    :initform 0))
)

(cl:defclass hsv_thresh (<hsv_thresh>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <hsv_thresh>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'hsv_thresh)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name line_tracing-msg:<hsv_thresh> is deprecated: use line_tracing-msg:hsv_thresh instead.")))

(cl:ensure-generic-function 'k_size-val :lambda-list '(m))
(cl:defmethod k_size-val ((m <hsv_thresh>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader line_tracing-msg:k_size-val is deprecated.  Use line_tracing-msg:k_size instead.")
  (k_size m))

(cl:ensure-generic-function 'e_size-val :lambda-list '(m))
(cl:defmethod e_size-val ((m <hsv_thresh>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader line_tracing-msg:e_size-val is deprecated.  Use line_tracing-msg:e_size instead.")
  (e_size m))

(cl:ensure-generic-function 'd_size-val :lambda-list '(m))
(cl:defmethod d_size-val ((m <hsv_thresh>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader line_tracing-msg:d_size-val is deprecated.  Use line_tracing-msg:d_size instead.")
  (d_size m))

(cl:ensure-generic-function 'lowH-val :lambda-list '(m))
(cl:defmethod lowH-val ((m <hsv_thresh>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader line_tracing-msg:lowH-val is deprecated.  Use line_tracing-msg:lowH instead.")
  (lowH m))

(cl:ensure-generic-function 'highH-val :lambda-list '(m))
(cl:defmethod highH-val ((m <hsv_thresh>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader line_tracing-msg:highH-val is deprecated.  Use line_tracing-msg:highH instead.")
  (highH m))

(cl:ensure-generic-function 'lowS-val :lambda-list '(m))
(cl:defmethod lowS-val ((m <hsv_thresh>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader line_tracing-msg:lowS-val is deprecated.  Use line_tracing-msg:lowS instead.")
  (lowS m))

(cl:ensure-generic-function 'highS-val :lambda-list '(m))
(cl:defmethod highS-val ((m <hsv_thresh>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader line_tracing-msg:highS-val is deprecated.  Use line_tracing-msg:highS instead.")
  (highS m))

(cl:ensure-generic-function 'lowV-val :lambda-list '(m))
(cl:defmethod lowV-val ((m <hsv_thresh>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader line_tracing-msg:lowV-val is deprecated.  Use line_tracing-msg:lowV instead.")
  (lowV m))

(cl:ensure-generic-function 'highV-val :lambda-list '(m))
(cl:defmethod highV-val ((m <hsv_thresh>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader line_tracing-msg:highV-val is deprecated.  Use line_tracing-msg:highV instead.")
  (highV m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <hsv_thresh>) ostream)
  "Serializes a message object of type '<hsv_thresh>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'k_size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'e_size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'd_size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lowH)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'highH)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lowS)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'highS)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lowV)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'highV)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <hsv_thresh>) istream)
  "Deserializes a message object of type '<hsv_thresh>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'k_size)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'e_size)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'd_size)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lowH)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'highH)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lowS)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'highS)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lowV)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'highV)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<hsv_thresh>)))
  "Returns string type for a message object of type '<hsv_thresh>"
  "line_tracing/hsv_thresh")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'hsv_thresh)))
  "Returns string type for a message object of type 'hsv_thresh"
  "line_tracing/hsv_thresh")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<hsv_thresh>)))
  "Returns md5sum for a message object of type '<hsv_thresh>"
  "0a5aabfc8bbb0749ec67edd76bf4b306")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'hsv_thresh)))
  "Returns md5sum for a message object of type 'hsv_thresh"
  "0a5aabfc8bbb0749ec67edd76bf4b306")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<hsv_thresh>)))
  "Returns full string definition for message of type '<hsv_thresh>"
  (cl:format cl:nil "uint8 k_size~%uint8 e_size~%uint8 d_size~%uint8 lowH~%uint8 highH~%uint8 lowS~%uint8 highS~%uint8 lowV~%uint8 highV~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'hsv_thresh)))
  "Returns full string definition for message of type 'hsv_thresh"
  (cl:format cl:nil "uint8 k_size~%uint8 e_size~%uint8 d_size~%uint8 lowH~%uint8 highH~%uint8 lowS~%uint8 highS~%uint8 lowV~%uint8 highV~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <hsv_thresh>))
  (cl:+ 0
     1
     1
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <hsv_thresh>))
  "Converts a ROS message object to a list"
  (cl:list 'hsv_thresh
    (cl:cons ':k_size (k_size msg))
    (cl:cons ':e_size (e_size msg))
    (cl:cons ':d_size (d_size msg))
    (cl:cons ':lowH (lowH msg))
    (cl:cons ':highH (highH msg))
    (cl:cons ':lowS (lowS msg))
    (cl:cons ':highS (highS msg))
    (cl:cons ':lowV (lowV msg))
    (cl:cons ':highV (highV msg))
))
