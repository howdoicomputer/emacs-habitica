;;; habitica-tools.el --- tooling for the habitica library

;; Copyright (C) 2016 Tyler Hampton <dr.frankinfurter@gmail.com>

;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License
;; as published by the Free Software Foundation; either version 2
;; of the License, or (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program; if not, write to the Free Software
;; Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA
;; 02110-1301, USA.

;;; Commentary:

;;; Code:

(require 'request)
(require 'json)
(require 's)

(require 'habitica-api)

;; Errors
(eval-and-compile
  (unless (fboundp 'define-error)
    ;; Shamelessly copied from Emacs trunk :)
    (defun define-error (name message &optional parent)
      "Define NAME as a new error signal.
MESSAGE is a string that will be output to the echo area if such an error
is signaled without being caught by a `condition-case'.
PARENT is either a signal or a list of signals from which it inherits.
Defaults to `error'."
      (unless parent (setq parent 'error))
      (let ((conditions
             (if (consp parent)
                 (apply #'nconc
                        (mapcar (lambda (parent)
                                  (cons parent
                                        (or (get parent 'error-conditions)
                                            (error "Unknown signal `%s'" parent))))
                                parent))
               (cons parent (get parent 'error-conditions)))))
        (put name 'error-conditions
             (delete-dups (copy-sequence (cons name conditions))))
        (when message (put name 'error-message message))))))

(define-error 'habitica-error "Habitica error")

(define-error 'habitica-http-error "HTTP Error" 'habitica-error)

;; HTTP tools


(defun habitica--get-rest-uri (uri)
  "Retrieve the Habitica API complete url using the API version.
`URI` is the api path."
  (if (habitica--get-host)
      (s-concat (habitica--get-host) "/api/" habitica-api-version "/" uri)
    (error (signal 'habitica-error '("Habitica host unknown.")))))
;;; habitica-tools.el ends here
