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
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-term-color-vector
	 [unspecified "#FFFFFF" "#d15120" "#5f9411" "#d2ad00" "#6b82a7" "#a66bab" "#6b82a7" "#505050"])
 '(compilation-message-face (quote default))
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#657b83")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(fci-rule-character-color "#d9d9d9")
 '(fci-rule-color "#eee8d5")
 '(highlight-changes-colors (quote ("#d33682" "#6c71c4")))
 '(highlight-symbol-colors
	 (--map
		(solarized-color-blend it "#fdf6e3" 0.25)
		(quote
		 ("#b58900" "#2aa198" "#dc322f" "#6c71c4" "#859900" "#cb4b16" "#268bd2"))))
 '(highlight-symbol-foreground-color "#586e75")
 '(highlight-tail-colors
	 (quote
		(("#eee8d5" . 0)
		 ("#B4C342" . 20)
		 ("#69CABF" . 30)
		 ("#69B7F0" . 50)
		 ("#DEB542" . 60)
		 ("#F2804F" . 70)
		 ("#F771AC" . 85)
		 ("#eee8d5" . 100))))
 '(hl-bg-colors
	 (quote
		("#DEB542" "#F2804F" "#FF6E64" "#F771AC" "#9EA0E5" "#69B7F0" "#69CABF" "#B4C342")))
 '(hl-fg-colors
	 (quote
		("#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3")))
 '(hl-paren-colors (quote ("#2aa198" "#b58900" "#268bd2" "#6c71c4" "#859900")))
 '(jdee-db-active-breakpoint-face-colors (cons "#1B2229" "#51afef"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#1B2229" "#98be65"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#1B2229" "#3f444a"))
 '(linum-format " %7i ")
 '(magit-diff-use-overlays nil)
 '(nrepl-message-colors
	 (quote
		("#dc322f" "#cb4b16" "#b58900" "#546E00" "#B4C342" "#00629D" "#2aa198" "#d33682" "#6c71c4")))
 '(org-agenda-files nil)
 '(package-selected-packages
	 (quote
		(plan9-theme zerodark-theme zenburn-theme ycm yaml-mode xterm-color xah-find web-mode w3m vim-empty-lines-mode undo-tree ujelly-theme twilight-bright-theme twilight-anti-bright-theme tide telephone-line sublimity sublime-themes subatomic256-theme subatomic-theme spacemacs-theme spacegray-theme sourcerer-theme soothe-theme solarized-theme smooth-scroll sml-modeline smex smart-mode-line-powerline-theme slime-company slack rjsx-mode rebecca-theme rainbow-mode rainbow-delimiters purple-haze-theme pg ox-gfm org-gcal omnisharp obsidian-theme nyan-mode nord-theme nimbus-theme neotree mustang-theme monokai-theme moe-theme minimap meghanada material-theme markdown-mode magit-filenotify lush-theme leuven-theme lcr kaolin-themes json-mode js-comint java-snippets intero indent-guide imenu-anywhere image+ hy-mode heroku-theme helm-spotify helm-dash hamburg-theme gruvbox-theme groovy-mode groovy-imports graphql-mode grandshell-theme gradle-mode goto-chg gotham-theme google-this google-maps go-mode gandalf-theme fsharp-mode fringe-helper flymake-json flymake-jshint flymake-cursor flatui-theme flatui-dark-theme flatland-theme flatland-black-theme finalize exec-path-from-shell epc emojify-logos elpy dracula-theme doom-themes doom-modeline dockerfile-mode diminish dashboard darktooth-theme darcula-theme dakrone-theme cyberpunk-theme cuda-mode creamsody-theme company-irony company-emacs-eclim color-theme-solarized color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized color-theme-modern clojure-mode-extra-font-locking cider cherry-blossom-theme calfw-gcal calfw bubbleberry-theme boron-theme base16-theme badwolf-theme badger-theme atom-one-dark-theme atom-dark-theme ample-theme all-the-icons-dired ahungry-theme afternoon-theme ac-helm abyss-theme)))
 '(pdf-view-midnight-colors (quote ("#655370" . "#fbf8ef")))
 '(pos-tip-background-color "#eee8d5")
 '(pos-tip-foreground-color "#586e75")
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#eee8d5" 0.2))
 '(term-default-bg-color "#fdf6e3")
 '(term-default-fg-color "#657b83")
 '(vc-annotate-background nil)
 '(vc-annotate-background-mode nil)
 '(vc-annotate-color-map
	 (quote
		((20 . "#dc322f")
		 (40 . "#c9485ddd1797")
		 (60 . "#bf7e73b30bcb")
		 (80 . "#b58900")
		 (100 . "#a5a58ee30000")
		 (120 . "#9d9d91910000")
		 (140 . "#9595943e0000")
		 (160 . "#8d8d96eb0000")
		 (180 . "#859900")
		 (200 . "#67119c4632dd")
		 (220 . "#57d79d9d4c4c")
		 (240 . "#489d9ef365ba")
		 (260 . "#3963a04a7f29")
		 (280 . "#2aa198")
		 (300 . "#288e98cbafe2")
		 (320 . "#27c19460bb87")
		 (340 . "#26f38ff5c72c")
		 (360 . "#268bd2"))))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
	 (quote
		(unspecified "#fdf6e3" "#eee8d5" "#990A1B" "#dc322f" "#546E00" "#859900" "#7B6000" "#b58900" "#00629D" "#268bd2" "#93115C" "#d33682" "#00736F" "#2aa198" "#657b83" "#839496")))
 '(xterm-color-names
	 ["#eee8d5" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#073642"])
 '(xterm-color-names-bright
	 ["#fdf6e3" "#cb4b16" "#93a1a1" "#839496" "#657b83" "#6c71c4" "#586e75" "#002b36"]))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
