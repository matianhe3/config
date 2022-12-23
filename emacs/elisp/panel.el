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

(use-package which-key
  :init (which-key-mode)
  :config
  (setq which-key-show-early-on-C-h t))

(use-package doom-modeline
  :hook (after-init . doom-modeline-mode))

(use-package ivy
  :config
    (ivy-mode)
    (setq ivy-use-virtual-buffers t)
    (setq enable-recursive-minibuffers t)
  :bind
    ("C-s" . 'swiper)
    ("M-x" . counsel-M-x)
    ("C-x C-f" . 'counsel-find-file))

(use-package counsel)

(provide 'panel)
