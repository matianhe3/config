(use-package which-key
  :init (which-key-mode)
  :config
  (setq which-key-show-early-on-C-h t))


(use-package web-mode
  :config
  (add-to-list 'auto-mode-alist '("\\.[jt]sx\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode)))

(use-package typescript-mode)
(use-package go-mode)

(use-package eglot
  :config
  (add-to-list 'eglot-server-programs '(web-mode . ("typescript-language-server" "--stdio")))
  :hook
  (go-mode . eglot-ensure)
  (python-mode . eglot-ensure)
  (typescript-mode . eglot-ensure)
  (web-mode . eglot-ensure))


(use-package company
  :hook
  (prog-mode . global-company-mode))

(use-package yasnippet
  :hook (prog-mode . yas-minor-mode)
  :bind ("C-c y" . 'company-yasnippet)
  :config (yas-reload-all))

(use-package yasnippet-snippets
  :after yasnippet)



(provide 'auto)
