
;; Org-Gcal
(require 'org)
(require 'org-gcal)

(setq org-gcal-client-id "1093351195296-r2f77gdi4pngo84q5mefc0sm20d42qhh.apps.googleusercontent.com"
      org-gcal-client-secret "9dsu4vE99jHZl5tsTXOozGF9"
      org-gcal-file-alist '(("lramo0729@gmail.com" .  "~/.emacs.d/calendar.org")))

;; Org-Agenda
(setq org-agenda-files (list "~/.emacs.d/agenda.org"))


;; Calendar UI
(require 'calfw)
(require 'calfw-org)
(provide '.org)
;;; .org.el ENDS HERE
