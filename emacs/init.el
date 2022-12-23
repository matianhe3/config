;; Proxy config
(setq url-proxy-services nil)
(defun toggle-proxy ()
  "Toggle proxy for the url.el library."
  (interactive)
  (cond
   (url-proxy-services
    (message "Turn off URL proxy")
    (setq url-proxy-services nil))
   (t
    (message "Turn on URL proxy")
    (setq url-proxy-services
          '(("http" . "http://localhost:8889")
            ("https" . "http://localhost:8889")
            ("no_proxy" . "0.0.0.0"))))))

(defun open-init-file()
  "Open init file."
  (interactive)
  (dired "~/.config/emacs"))
(global-set-key (kbd "<f1>") 'open-init-file)

;; Cache Dirs
(setq user-emacs-directory "~/.cache/emacs"
      url-history-file (expand-file-name "url/history" user-emacs-directory))

;; Package Manager
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))
(setq package-enable-at-startup nil)

(straight-use-package 'use-package)
(setq straight-use-package-by-default t)
(use-package no-littering)


;; Clear config
(setq inhibit-startup-message t
      initial-scratch-message nil
      revert-without-query '(".*")
      history-length 25
      backup-by-copying nil
      auto-save-default nil
      make-backup-files nil)


;; Turn off some unneeded UI elements
(menu-bar-mode -1)
(tool-bar-mode -1)
(tooltip-mode -1)
(scroll-bar-mode -1)
(set-fringe-mode 10)
(global-display-line-numbers-mode 1)

;; some modes
(recentf-mode 1)
(savehist-mode 1)
(save-place-mode 1)

;; Move customization variables to a separate file and load it
(setq custom-file (locate-user-emacs-file "custom-vars.el"))
(load custom-file 'noerror 'nomessage)
(defalias 'yes-or-no-p 'y-or-n-p)

;; Don't pop up UI dialogs when prompting
(setq use-dialog-box nil)

;; Revert buffers when the underlying file has changed
(global-auto-revert-mode 1)
;; Revert Dired and other buffers
(setq global-auto-revert-non-file-buffers t)

;; Theme And Fonts
;; (use-package solarized-theme
;;  :init (load-theme 'solarized-dark t))
(add-to-list 'custom-theme-load-path "~/.cache/emacs/everforest")
(load-theme 'everforest-hard-dark t)

(set-face-attribute 'default nil
                    :font "MesloLGS NF"
                    :height 160)
(use-package all-the-icons
  :if (display-graphic-p))


;; macOS support ls
(when (string= system-type "darwin")
  (setq dired-use-ls-dired nil))

(use-package exec-path-from-shell)
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))


;; load diy config
(push "~/.config/emacs/elisp" load-path)

(require 'project)
(require 'editor)
(require 'auto)
(require 'panel)
