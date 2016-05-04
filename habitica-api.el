;;; habitica-api.el --- Habitica emacs api settings

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


(defvar habitica-host nil
  "The Habitica API endpoint.")

(defvar habitica-username nil
  "The Habitica username.")

(defvar habitica-token-id nil
  "The Habitica tokenID to perform HTTP requests.")

(defconst habitica-api-version "v3"
  "The Habitica API version.")

(defun habitica--get-host ()
  "Retrieve the Habitica host.
Use `habitica-host' or HABITICA_HOST environment variable"
  (if habitica-host
      habitica-host
    (getenv "HABITICA_HOST")))

(defun habitica--get-username ()
  "Retrieve the habitica username.
Use `habitica-username' or HABITICA_USERNAME environment variable"
  (if habitica-username
      habitica-username
    (getenv "HABITICA_USERNAME")))

(defun habitica--get-token-id ()
  "Retrieve the Habitica token ID.
Use `habitica-token-id' or HABITICA_TOKEN_ID environment variable"
  (if habitica-token-id
      habitica-token-id
    (getenv "HABITICA_TOKEN_ID")))

(provide 'habitica-api)

;;; habitica-api.el ends here
