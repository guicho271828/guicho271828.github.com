
(defpackage :coleslaw-sane-deploy
  (:use :cl)
  (:import-from :coleslaw #:*config*
                          #:deploy
                          #:deploy-dir)
  (:export #:enable))

(in-package :coleslaw-sane-deploy)

(defvar *excludes* nil)

(defmethod deploy (staging)
  (coleslaw::run-program "rsync --delete ~{--exclude '~a'~} -avz ~a ~a" *excludes* staging (deploy-dir *config*)))

(defun enable (&rest excludes)
  (setf *excludes* excludes))
