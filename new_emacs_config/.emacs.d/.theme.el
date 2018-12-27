;; set transparency of emacs
(defun transparency (value)
  "Sets the transparency of the frame window. 0=transparent/100=opaque"
  (interactive "nTransparency Value 0 - 100 opaque:")
     (set-frame-parameter (selected-frame) 'alpha value))

(defun remove-colored-fringe ()
  (interactive)
	;; remove the highlighted fringe in most themes
  (set-face-attribute 'fringe nil :background nil))

;; color-theme
(setq my-themes '(spacemacs-dark solarized-dark doom-dracula material atom-one-dark))

;; toggle randomlly between themes
(defun toggle-theme ()
  (interactive)
  (if window-system
     (progn
      (mapcar #'disable-theme custom-enabled-themes) 
      (load-theme (nth (random (length my-themes)) my-themes) t)
      (doom-modeline-init)
      (remove-colored-fringe)
      (transparency 95))
    (load-theme 'base16-solarized-dark t)))

(if window-system
    (progn
      (load-theme 'solarized-dark t)
      (doom-modeline-init)
      (remove-colored-fringe)
      (transparency 100))
  (load-theme 'solarized-dark t))

;; (set-background-color "#00000")
;; (set-cursor-color "#00a1f9")
;; (set-border-color "#805bb5")
;; (set-face-background hl-line-face "#606060")

;; dired all the icons
(add-hook 'dired-mode-hook 'all-the-icons-dired-mode)

;; neotree customizations
(setq neo-theme (if (display-graphic-p) 'icons 'arrow))
(setq neo-window-fixed-size nil)

(provide '.theme.el)
