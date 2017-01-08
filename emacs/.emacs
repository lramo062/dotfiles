;;; Code

;; Initialize Packages
(setq package-enable-at-startup nil)
(package-initialize)


;; Open .emacs
(defun init ()
  (interactive)
  (find-file "~/.emacs"))


;; Line-Numbers
;;(global-linum-mode 1)

;; No Tool-Bar (GUI)
(tool-bar-mode -1)
(menu-bar-mode -1)

;; No scroll bar
(scroll-bar-mode -1)

;; rainbow-delimiters
(rainbow-delimiters-mode)

;; Color-Theme
(if window-system
    (load-theme 'dracula t)
  (load-theme 'wombat t))

;; Smooth scrolling
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1))) ;; one line at a time
(setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling
(setq mouse-wheel-follow-mouse 't) ;; scroll window under mouse
(setq scroll-step 1) ;; keyboard scroll one line at a time


;; Highlight Matching Paren.
(show-paren-mode 1)


;; Tabs
(setq-default indent-tabs-mode nil)
(setq tab-width 4)

;; No-Backups
(setq make-backup-files nil)

;; Column-Number-Mode
(setq column-number-mode t)


;; Font
;;(set-default-font "Monaco")
(set-face-attribute 'default nil :height 105)


;; No Splash-Screen
(setq inhibit-splash-screen t
     initial-scratch-message nil
     initial-major-mode 'text-mode)


;; PATH ENV Variable
(setenv "PATH" (concat (getenv "PATH") "/usr/local/bin"))
(setq exec-path (append exec-path '("/usr/local/bin")))
(exec-path-from-shell-copy-env "PATH")


;; remove back ups
(setq make-backup-files nil)

;; yes & no = y & n
(defalias 'yes-or-no-p 'y-or-n-p)

;; Set Transparency of Emacs
(defun transparency (value)
  "Sets the transparency of the frame window. 0=transparent/100=opaque"
  (interactive "nTransparency Value 0 - 100 opaque:")
     (set-frame-parameter (selected-frame) 'alpha value))
;; Set Transparency at Start-up
(transparency 85)


;; Previous-Terminal-Commmands
(progn(require 'comint)
      (define-key comint-mode-map (kbd "<up>") 'comint-previous-input)
      (define-key comint-mode-map (kbd "<down>") 'comint-next-input))


;; Clear-Terminal
(defun my-shell-hook ()
  (local-set-key "\C-d" 'erase-buffer))
(add-hook 'shell-mode-hook 'my-shell-hook)
(put 'erase-buffer 'disabled nil)

;; Return Path of File
(defun path ()
  (interactive)
  (princ buffer-file-name))

;; Return Extension of File
(defun extension ()
  (interactive)
  (print (file-name-extension buffer-file-name)))


;; Kill all helm buffers
(defun kill-helm ()
  (interactive)
  (kill-matching-buffers "helm"))

;; Org-Mode
(setq org-src-fontify-natively t)

(require 'cider)

;; Load packages
(load-file "~/.emacs.d/.packages.el")

;; Load Programming Lang
(load-file "~/.emacs.d/.programming_lang.el")

;; Load Org-Mode
(load-file "~/.emacs.d/.org.el")

(load-file "~/.emacs.d/nbaScores.el")
;;; END
