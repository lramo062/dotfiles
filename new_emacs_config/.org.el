;; org-mode
(setq org-agenda-files (list "~/Fall-18/school.org"))
(setq org-src-fontify-natively t)
(setq org-log-done 'time)
(setq org-src-tab-acts-natively t)
(setq org-src-preserve-indentation t)
(org-babel-do-load-languages
 'org-babel-load-languages '((python . t)))

(provide '.org.el)
