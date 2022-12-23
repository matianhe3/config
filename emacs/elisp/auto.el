(use-package go-mode)

(use-package lua-mode)

(use-package typescript-mode)
 
(use-package web-mode
  :mode ("\\.vue\\'" "\\.html\\'")
  :init
  (setq web-mode-content-types-alist '(("vue" . "\\.vue\\'"))
          web-mode-css-indent-offset 2
          web-mode-code-indent-offset 2
          web-mode-markup-indent-offset 2
          web-mode-enable-css-colorization t
          web-mode-enable-current-column-highlight nil))

(use-package python-black
  :demand t
  :after python
  :hook (python-mode . python-black-on-save-mode))

(use-package markdown-mode
  :ensure t
  :mode ("README\\.md\\'" . gfm-mode)
  :init (setq markdown-command "multimarkdown"))

(use-package posframe)

(use-package yasnippet
  :hook (prog-mode . yas-minor-mode)
  :bind ("C-c y" . 'company-yasnippet)
  :config (yas-reload-all))


(use-package yasnippet-snippets
  :after yasnippet)


(add-to-list 'load-path "~/.cache/lsp-bridge")
(require 'lsp-bridge)
(global-lsp-bridge-mode)


(provide 'auto)
