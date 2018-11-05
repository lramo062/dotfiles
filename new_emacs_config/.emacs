;;; package --- Summary
;;; Commentary:

;;; Code:

;; ansi term
; edit text mode: C-c C-j
; switch to terminal mode C-c C-k

;; search for files anywhere
;; Mx find-file-in-directory

;; find text in project
;; Mx rgrep

;; Load packages
(load-file "~/.emacs.d/.packages.el")

;; load theme settings
(load-file "~/.emacs.d/.theme.el")

;; load general settings 
(load-file "~/.emacs.d/.settings.el")

;; load programming-langauges settings
(load-file "~/.emacs.d/.programming_lang.el")

;; load org-mode settings
(load-file "~/.emacs.d/.org.el")

;; load custom functions
(load-file "~/.emacs.d/.custom-functions.el")

;; mac path thingy
(exec-path-from-shell-initialize)

;; Open .emacs.d files
(defun init ()
  (interactive)
  (find-file "~/.emacs.d/."))
;;; END
