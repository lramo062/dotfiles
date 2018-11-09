;; remove top menu bar in mac
(setq ns-auto-hide-menu-bar t)

;; removes *messages* from the buffer.
(setq-default message-log-max nil)
(kill-buffer "*Messages*")

;; removes *Completions* from buffer after you've opened a file.
(add-hook 'minibuffer-exit-hook
      '(lambda ()
         (let ((buffer "*Completions*"))
           (and (get-buffer buffer)
                (kill-buffer buffer)))))

;; don't show *Buffer list* when opening multiple files at the same time.
(setq inhibit-startup-buffer-menu t)

;; show only one active window when opening multiple files at the same time.
(add-hook 'window-setup-hook 'delete-other-windows)

;; show no recent buffers garbage text
(global-set-key (kbd "C-x b") 'helm-buffers-list)

;; column line wrap settings
(require 'whitespace)
(setq whitespace-line-column 80) ;; limit line length
(setq whitespace-style '(face lines-tail))
(add-hook 'prog-mode-hook 'whitespace-mode)

;; line-numbers
;;(global-linum-mode 1)
(line-number-mode 1)

;; no tool-bar (GUI)
(tool-bar-mode -1)
(menu-bar-mode -1)

;; no scroll bar
(scroll-bar-mode -1)

;; smooth scrolling
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1))) ;; one line at a time
(setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling
(setq mouse-wheel-follow-mouse 't) ;; scroll window under mouse
(setq scroll-step 1) ;; keyboard scroll one line at a time

;; highlight matching paren.
(show-paren-mode 1)

;; tabs
(setq-default indent-tabs-mode t)
(setq-default tab-width 2)
(setq-default typescript-indent-level 2)

;; no-backups
(setq make-backup-files nil)

;; column-number-mode
(setq column-number-mode t)

;; font
(set-face-attribute 'default nil :height 115)
(set-default-font "Monaco")

;; no splash-screen
(setq inhibit-splash-screen t
     initial-scratch-message nil
     initial-major-mode 'text-mode)

;; remove back ups
(setq make-backup-files nil)

;; yes & no = y & n
(defalias 'yes-or-no-p 'y-or-n-p)

;; previous-terminal-commmands
(progn (require 'comint)
      (define-key comint-mode-map (kbd "<up>") 'comint-previous-input)
      (define-key comint-mode-map (kbd "<down>") 'comint-next-input))

(require 'diminish)
(diminish 'whitespace-mode)
(diminish 'helm-mode)
(diminish 'company-mode)
(diminish 'auto-complete-mode)
(diminish 'yasnippet)
(diminish 'flycheck-mode)
(diminish 'yas-minor-mode)
(diminish 'eldoc-mode)

;; highlight current line
(defface hl-line '((t (:background "Gray")))
  "Face to use for `hl-line-face'." :group 'hl-line)
(setq hl-line-face 'hl-line)
(global-hl-line-mode t)

;; empty line charcters at the end of file
(vim-empty-lines-mode t)

;; magit Status short-cut
(global-set-key (kbd "C-x g") 'magit-status)

;; pop-up shell
(defun gk-pop-shell (arg)
  "Pop a shell in a side window.
Pass arg to ‘shell’."
  (interactive "P")
  (select-window
   (display-buffer-in-side-window
    (save-window-excursion
      (let ((prefix-arg arg))
        (call-interactively #'ansi-term))
      (current-buffer))
    '((side . bottom)))))

(global-set-key (kbd "C-x ]") 'gk-pop-shell)

(provide '.settings)
