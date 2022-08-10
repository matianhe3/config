(use-package dashboard
  :config
  (dashboard-setup-startup-hook)
  :custom
  (dashboard-banner-logo-title "MTH hacks Emacs.")
  ;; (dashboard-startup-banner 1)
  (dashboard-center-content t)
  (dashboard-show-shortcuts nil)
  (dashboard-items '((recents  . 7)
                     (projects . 7)))
  (dashboard-set-heading-icons t)
  (dashboard-set-file-icons t))


(provide 'dashboard)
