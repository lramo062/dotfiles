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

;; Initialize Packages
(setq package-enable-at-startup nil)
(package-initialize)

;; Load packages
(load-file "~/.emacs.d/.packages.el")

;; Load Programming Lang
(load-file "~/.emacs.d/.programming_lang.el")

;; Load Settings 
(load-file "~/.emacs.d/.settings.el")

;; mac path thingy
(exec-path-from-shell-initialize)

;; Open .emacs
(defun init ()
  (interactive)
  (find-file "~/.enmacs"))


;; Set Transparency of Emacs
(defun transparency (value)
  "Sets the transparency of the frame window. 0=transparent/100=opaque"
  (interactive "nTransparency Value 0 - 100 opaque:")
     (set-frame-parameter (selected-frame) 'alpha value))

;; Color-Theme
(if window-system
		(progn
			(load-theme 'atom-one-dark t)
			(remove-colored-fringe)
			(transparency 95))
  (load-theme 'base16-solarized-dark t))

;; neotree customizations
;; (setq neo-theme (if (display-graphic-p) 'icons 'arrow))
;; (setq neo-window-fixed-size nil)

(defun remove-colored-fringe ()
	;; remove the highlighted fringe in most themes
  (set-face-attribute 'fringe nil :background nil))

;; Org-Mode
(setq org-agenda-files (list "~/Fall-18/school.org"))
(setq org-src-fontify-natively t)
(setq org-log-done 'time)
(setq org-src-tab-acts-natively t)
(setq org-src-preserve-indentation t)
(org-babel-do-load-languages
 'org-babel-load-languages '((python . t)))

; JSON Prettier
(defun json-prettier ()
(interactive)
(save-excursion
  (shell-command-on-region
   (mark) (point) "python -m json.tool"
   (buffer-name) t)))

; Kill all helm buffers
(defun kill-helm ()
  (interactive)
  (kill-matching-buffers "helm"))

;; Toggle window split
(defun toggle-window-split ()
  (interactive)
  (if (= (count-windows) 2)
      (let* ((this-win-buffer (window-buffer))
             (next-win-buffer (window-buffer (next-window)))
             (this-win-edges (window-edges (selected-window)))
             (next-win-edges (window-edges (next-window)))
             (this-win-2nd (not (and (<= (car this-win-edges)
                                         (car next-win-edges))
                                     (<= (cadr this-win-edges)
                                         (cadr next-win-edges)))))
             (splitter
              (if (= (car this-win-edges)
                     (car (window-edges (next-window))))
                  'split-window-horizontally
                'split-window-vertically)))
        (delete-other-windows)
        (let ((first-win (selected-window)))
          (funcall splitter)
          (if this-win-2nd (other-window 1))
          (set-window-buffer (selected-window) this-win-buffer)
          (set-window-buffer (next-window) next-win-buffer)
          (select-window first-win)
          (if this-win-2nd (other-window 1))))))

(global-set-key (kbd "C-x |") 'toggle-window-split)

;; Magit Status short-cut
(global-set-key (kbd "C-x g") 'magit-status)

;; inferior lisp program
;; this sets up a repl for what ever lisp language we need
;; use run-lisp to start a repl
(setq inferior-lisp-program "~/nba-stats-hy/hy/bin/hy")

(defun show-file-name ()
  "Show the full path file name in the minibuffer."
  (interactive)
  (message (buffer-file-name)))
;;; END
