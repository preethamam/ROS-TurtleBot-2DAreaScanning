
(cl:in-package :asdf)

(defsystem "line_tracing-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "cmd_stamped" :depends-on ("_package_cmd_stamped"))
    (:file "_package_cmd_stamped" :depends-on ("_package"))
    (:file "hsv_thresh" :depends-on ("_package_hsv_thresh"))
    (:file "_package_hsv_thresh" :depends-on ("_package"))
    (:file "theta_stamped" :depends-on ("_package_theta_stamped"))
    (:file "_package_theta_stamped" :depends-on ("_package"))
  ))