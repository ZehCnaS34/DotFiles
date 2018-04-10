;; core
(setq custom-file "~/.emacs.d/custom.el")

(setq backup-directory-alist `(("." . "~/.saves")))

;; initialize package
(require 'package)
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
			 ("marmalade" . "https://marmalade-repo.org/packages/")
			 ("melpa" . "https://melpa.org/packages/")))
(package-initialize)
(if (not (file-exists-p "~/.emacs.d/elpa"))
    (package-refresh-contents))

;; ui config
(tool-bar-mode -1)
(setq inhibit-startup-screen t)
(setq ring-bell-function 'ignore)
(set-face-attribute 'default nil :font "inconsolata-12")
(set-frame-font "source code pro-12" nil t)


(setq packages '(
		 ace-jump-mode
		 clojure-mode
		 julia-mode
		 company
		 company-jedi
		 dockerfile-mode
		 editorconfig
		 evil
		 evil-exchange
		 evil-leader
		 grizzl
		 helm
		 helm-projectile
		 js2-mode
		 magit
		 markdown-mode
		 prodigy
		 projectile
		 pyvenv
		 racer
		 rainbow-delimiters
		 rjsx-mode
		 rust-mode
		 smartparens
		 use-package
		 zenburn-theme
		 ))

(mapcar #'package-install packages)

(use-package evil
  :config
  (evil-mode 1)
  (use-package evil-exchange
    :init
    (setq evil-exchange-key (kbd "zx"))
    :config
    (evil-exchange-install))
  (use-package evil-leader
    :config
    (global-evil-leader-mode)
    (evil-leader/set-leader "<SPC>")

    (evil-leader/set-key
      "<SPC>" 'helm-M-x

      ;; files
      "ff" 'helm-find-files

      ;; projectile
      "pf" 'helm-projectile-find-file
      "pp" 'helm-projectile-switch-project
      "pd" 'helm-projectile-dired-find-dir

      ;; window
      "wl" 'evil-window-right
      "wh" 'evil-window-left
      "wj" 'evil-window-down
      "wk" 'evil-window-up
      "ws" 'evil-window-split
      "wv" 'evil-window-vsplit
      "wd" 'evil-window-delete

      ;; buffer
      "bd" 'evil-delete-buffer
      "bb" 'helm-buffers-list

      ;; magit
      "gs" 'magit-status
      )
    )
  )

(use-package projectile
  :config
  (projectile-mode +1)
  )

(use-package helm-projectile
  :config
  (helm-projectile-on)
  )

(use-package gruvbox-theme
  :config
  (load-theme 'gruvbox t)
  )

(use-package smartparens
  :init
  (require 'smartparens-config)
  :config
  (add-hook 'prog-mode-hook #'smartparens-mode)
  )

(use-package editorconfig
  :ensure t
  :config
  (editorconfig-mode 1)
  )

(use-package company
  :config
  (global-company-mode t)
  (add-to-list 'company-backends '(company-jedi company-files))
  )

(use-package rjsx-mode
  :config
  (add-to-list 'auto-mode-alist '("\\.js\\'" . rjsx-mode))
  )

(use-package ace-jump-mode
  :config
  (define-key global-map (kbd "C-c SPC") 'ace-jump-mode)
  )

(use-package rainbow-delimiters
  :config
  (add-hook 'emacs-lisp-mode-hook #'rainbow-delimiters-mode)
  (add-hook 'clojure-mode-hook #'rainbow-delimiters-mode)
  )
