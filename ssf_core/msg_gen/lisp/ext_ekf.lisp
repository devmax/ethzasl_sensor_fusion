; Auto-generated. Do not edit!


(cl:in-package ssf_core-msg)


;//! \htmlinclude ext_ekf.msg.html

(cl:defclass <ext_ekf> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (angular_velocity
    :reader angular_velocity
    :initarg :angular_velocity
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (linear_acceleration
    :reader linear_acceleration
    :initarg :linear_acceleration
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (state
    :reader state
    :initarg :state
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (flag
    :reader flag
    :initarg :flag
    :type cl:integer
    :initform 0))
)

(cl:defclass ext_ekf (<ext_ekf>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ext_ekf>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ext_ekf)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ssf_core-msg:<ext_ekf> is deprecated: use ssf_core-msg:ext_ekf instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ext_ekf>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ssf_core-msg:header-val is deprecated.  Use ssf_core-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'angular_velocity-val :lambda-list '(m))
(cl:defmethod angular_velocity-val ((m <ext_ekf>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ssf_core-msg:angular_velocity-val is deprecated.  Use ssf_core-msg:angular_velocity instead.")
  (angular_velocity m))

(cl:ensure-generic-function 'linear_acceleration-val :lambda-list '(m))
(cl:defmethod linear_acceleration-val ((m <ext_ekf>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ssf_core-msg:linear_acceleration-val is deprecated.  Use ssf_core-msg:linear_acceleration instead.")
  (linear_acceleration m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <ext_ekf>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ssf_core-msg:state-val is deprecated.  Use ssf_core-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'flag-val :lambda-list '(m))
(cl:defmethod flag-val ((m <ext_ekf>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ssf_core-msg:flag-val is deprecated.  Use ssf_core-msg:flag instead.")
  (flag m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ext_ekf>)))
    "Constants for message type '<ext_ekf>"
  '((:IGNORE_STATE . 0)
    (:CURRENT_STATE . 1)
    (:INITIALIZATION . 2)
    (:STATE_CORRECTION . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ext_ekf)))
    "Constants for message type 'ext_ekf"
  '((:IGNORE_STATE . 0)
    (:CURRENT_STATE . 1)
    (:INITIALIZATION . 2)
    (:STATE_CORRECTION . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ext_ekf>) ostream)
  "Serializes a message object of type '<ext_ekf>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'angular_velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'linear_acceleration) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'state))
  (cl:let* ((signed (cl:slot-value msg 'flag)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ext_ekf>) istream)
  "Deserializes a message object of type '<ext_ekf>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'angular_velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'linear_acceleration) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'state) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'state)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'flag) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ext_ekf>)))
  "Returns string type for a message object of type '<ext_ekf>"
  "ssf_core/ext_ekf")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ext_ekf)))
  "Returns string type for a message object of type 'ext_ekf"
  "ssf_core/ext_ekf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ext_ekf>)))
  "Returns md5sum for a message object of type '<ext_ekf>"
  "0710aec5a114bc946c3d7687c8e5a0bd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ext_ekf)))
  "Returns md5sum for a message object of type 'ext_ekf"
  "0710aec5a114bc946c3d7687c8e5a0bd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ext_ekf>)))
  "Returns full string definition for message of type '<ext_ekf>"
  (cl:format cl:nil "Header header~%geometry_msgs/Vector3       angular_velocity~%geometry_msgs/Vector3       linear_acceleration~%float32[]                   state~%int32                       flag~%~%uint32                      ignore_state = 0~%uint32                      current_state = 1~%uint32                      initialization = 2~%uint32                      state_correction = 3~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ext_ekf)))
  "Returns full string definition for message of type 'ext_ekf"
  (cl:format cl:nil "Header header~%geometry_msgs/Vector3       angular_velocity~%geometry_msgs/Vector3       linear_acceleration~%float32[]                   state~%int32                       flag~%~%uint32                      ignore_state = 0~%uint32                      current_state = 1~%uint32                      initialization = 2~%uint32                      state_correction = 3~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ext_ekf>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'angular_velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'linear_acceleration))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'state) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ext_ekf>))
  "Converts a ROS message object to a list"
  (cl:list 'ext_ekf
    (cl:cons ':header (header msg))
    (cl:cons ':angular_velocity (angular_velocity msg))
    (cl:cons ':linear_acceleration (linear_acceleration msg))
    (cl:cons ':state (state msg))
    (cl:cons ':flag (flag msg))
))
