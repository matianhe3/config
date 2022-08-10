(use-package projectile
  :init
  (projectile-mode +1)
  
  :bind (:map projectile-mode-map
              ("s-p" . projectile-command-map)
              ("C-c p" . projectile-command-map))
  :custom
  (projectile-indexing-method 'native)
  (projectile-sort-order 'recentf)
  (projectile-enable-caching t)
  (projectile-require-project-root nil))
  




(provide 'project)
