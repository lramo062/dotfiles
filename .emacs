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

;; Color-Theme
(if window-system
    (load-theme 'monokai t)
  (load-theme 'monokai t))

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
(set-default-font "Monaco")
(set-face-attribute 'default nil :height 115)


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
(transparency 100)


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

;;; END
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   (vector "#ffffff" "#f36c60" "#8bc34a" "#fff59d" "#4dd0e1" "#b39ddb" "#81d4fa" "#263238"))
 '(custom-safe-themes
   (quote
    ("f81a9aabc6a70441e4a742dfd6d10b2bae1088830dc7aba9c9922f4b1bd2ba50" default)))
 '(eclim-eclipse-dirs
   (quote
    ("~/.emacs.d/java-neon/Eclipse.app/Contents/Eclipse/")))
 '(eclim-executable "~/.emacs.d/java-neon/Eclipse.app/Contents/Eclipse/eclim")
 '(fci-rule-color "#37474f")
 '(hl-sexp-background-color "#1c1f26")
 '(package-selected-packages
   (quote
    (monokai-theme zenburn-theme ycm xterm-color w3m undo-tree twilight-bright-theme twilight-anti-bright-theme sublime-themes spacemacs-theme solarized-theme sml-modeline smex rich-minority rainbow-mode rainbow-delimiters projectile powerline org-gcal omnisharp material-theme magit leuven-theme js2-mode js-comint java-snippets helm-spotify helm-dash groovy-mode grandshell-theme gradle-mode goto-chg gotham-theme fsharp-mode fringe-helper flymake-jshint flymake-cursor f exec-path-from-shell epc emacsql-psql doom-themes creamsody-theme company-irony company-emacs-eclim color-theme-sanityinc-tomorrow clojure-mode-extra-font-locking cider calfw-gcal calfw ac-helm abyss-theme)))
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#f36c60")
     (40 . "#ff9800")
     (60 . "#fff59d")
     (80 . "#8bc34a")
     (100 . "#81d4fa")
     (120 . "#4dd0e1")
     (140 . "#b39ddb")
     (160 . "#f36c60")
     (180 . "#ff9800")
     (200 . "#fff59d")
     (220 . "#8bc34a")
     (240 . "#81d4fa")
     (260 . "#4dd0e1")
     (280 . "#b39ddb")
     (300 . "#f36c60")
     (320 . "#ff9800")
     (340 . "#fff59d")
     (360 . "#8bc34a"))))
 '(vc-annotate-very-old-color nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
