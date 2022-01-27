
(cl:in-package :asdf)

(defsystem "localize-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "slam_stamped" :depends-on ("_package_slam_stamped"))
    (:file "_package_slam_stamped" :depends-on ("_package"))
    (:file "theta_stamped" :depends-on ("_package_theta_stamped"))
    (:file "_package_theta_stamped" :depends-on ("_package"))
  ))