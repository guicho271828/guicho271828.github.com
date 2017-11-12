
(defpackage :coleslaw-sane-deploy
  (:use :cl)
  (:import-from :coleslaw #:*config*
                          #:deploy
                          #:deploy-dir)
  (:export #:enable))

(in-package :coleslaw-sane-deploy)

(defvar *args* nil)

(defmethod deploy (staging)
  (coleslaw::run-program "rsync --delete ~{~A~^ ~} -avz ~a ~a" *args* staging (deploy-dir *config*)))

(defun enable (&rest args)
  (setf *args* args))
