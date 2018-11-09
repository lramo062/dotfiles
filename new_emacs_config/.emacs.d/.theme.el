;; set transparency of emacs
(defun transparency (value)
  "Sets the transparency of the frame window. 0=transparent/100=opaque"
  (interactive "nTransparency Value 0 - 100 opaque:")
     (set-frame-parameter (selected-frame) 'alpha value))

(defun remove-colored-fringe ()
	;; remove the highlighted fringe in most themes
  (set-face-attribute 'fringe nil :background nil))

;; color-theme
(if window-system
		(progn
			(load-theme 'atom-one-dark t)
			(remove-colored-fringe)
			(transparency 100))
  (load-theme 'base16-solarized-dark t))

;; dired all the icons
(add-hook 'dired-mode-hook 'all-the-icons-dired-mode)

;; neotree customizations
(setq neo-theme (if (display-graphic-p) 'icons 'arrow))
(setq neo-window-fixed-size nil)

(provide '.theme.el)
