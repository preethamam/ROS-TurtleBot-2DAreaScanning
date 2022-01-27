;; Auto-generated. Do not edit!


(when (boundp 'line_tracing::hsv_thresh)
  (if (not (find-package "LINE_TRACING"))
    (make-package "LINE_TRACING"))
  (shadow 'hsv_thresh (find-package "LINE_TRACING")))
(unless (find-package "LINE_TRACING::HSV_THRESH")
  (make-package "LINE_TRACING::HSV_THRESH"))

(in-package "ROS")
;;//! \htmlinclude hsv_thresh.msg.html


(defclass line_tracing::hsv_thresh
  :super ros::object
  :slots (_k_size _e_size _d_size _lowH _highH _lowS _highS _lowV _highV ))

(defmethod line_tracing::hsv_thresh
  (:init
   (&key
    ((:k_size __k_size) 0)
    ((:e_size __e_size) 0)
    ((:d_size __d_size) 0)
    ((:lowH __lowH) 0)
    ((:highH __highH) 0)
    ((:lowS __lowS) 0)
    ((:highS __highS) 0)
    ((:lowV __lowV) 0)
    ((:highV __highV) 0)
    )
   (send-super :init)
   (setq _k_size (round __k_size))
   (setq _e_size (round __e_size))
   (setq _d_size (round __d_size))
   (setq _lowH (round __lowH))
   (setq _highH (round __highH))
   (setq _lowS (round __lowS))
   (setq _highS (round __highS))
   (setq _lowV (round __lowV))
   (setq _highV (round __highV))
   self)
  (:k_size
   (&optional __k_size)
   (if __k_size (setq _k_size __k_size)) _k_size)
  (:e_size
   (&optional __e_size)
   (if __e_size (setq _e_size __e_size)) _e_size)
  (:d_size
   (&optional __d_size)
   (if __d_size (setq _d_size __d_size)) _d_size)
  (:lowH
   (&optional __lowH)
   (if __lowH (setq _lowH __lowH)) _lowH)
  (:highH
   (&optional __highH)
   (if __highH (setq _highH __highH)) _highH)
  (:lowS
   (&optional __lowS)
   (if __lowS (setq _lowS __lowS)) _lowS)
  (:highS
   (&optional __highS)
   (if __highS (setq _highS __highS)) _highS)
  (:lowV
   (&optional __lowV)
   (if __lowV (setq _lowV __lowV)) _lowV)
  (:highV
   (&optional __highV)
   (if __highV (setq _highV __highV)) _highV)
  (:serialization-length
   ()
   (+
    ;; uint8 _k_size
    1
    ;; uint8 _e_size
    1
    ;; uint8 _d_size
    1
    ;; uint8 _lowH
    1
    ;; uint8 _highH
    1
    ;; uint8 _lowS
    1
    ;; uint8 _highS
    1
    ;; uint8 _lowV
    1
    ;; uint8 _highV
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _k_size
       (write-byte _k_size s)
     ;; uint8 _e_size
       (write-byte _e_size s)
     ;; uint8 _d_size
       (write-byte _d_size s)
     ;; uint8 _lowH
       (write-byte _lowH s)
     ;; uint8 _highH
       (write-byte _highH s)
     ;; uint8 _lowS
       (write-byte _lowS s)
     ;; uint8 _highS
       (write-byte _highS s)
     ;; uint8 _lowV
       (write-byte _lowV s)
     ;; uint8 _highV
       (write-byte _highV s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _k_size
     (setq _k_size (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _e_size
     (setq _e_size (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _d_size
     (setq _d_size (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _lowH
     (setq _lowH (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _highH
     (setq _highH (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _lowS
     (setq _lowS (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _highS
     (setq _highS (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _lowV
     (setq _lowV (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _highV
     (setq _highV (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get line_tracing::hsv_thresh :md5sum-) "0a5aabfc8bbb0749ec67edd76bf4b306")
(setf (get line_tracing::hsv_thresh :datatype-) "line_tracing/hsv_thresh")
(setf (get line_tracing::hsv_thresh :definition-)
      "uint8 k_size
uint8 e_size
uint8 d_size
uint8 lowH
uint8 highH
uint8 lowS
uint8 highS
uint8 lowV
uint8 highV

")



(provide :line_tracing/hsv_thresh "0a5aabfc8bbb0749ec67edd76bf4b306")


