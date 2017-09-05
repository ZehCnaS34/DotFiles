;; core
(setq custom-file "~/.emacs.d/custom.el")


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
(set-face-attribute 'default nil :font "source code pro-13")
(set-frame-font "source code pro-13" nil t)

(setq packages '(magit
		 projectile
		 markdown-mode
		 editorconfig
		 zenburn
		 evil
		 js2-mode
		 smartparens
		 helm
		 company
		 use-package))

(mapcar #'package-install packages)

(use-package evil
  :config
  (evil-mode 1))

(use-package projectile
  :config
  (projectile-mode +1))

(use-package zenburn-theme
  :config
  (load-theme 'zenburn t))

(use-package smartparens
  :init
  (require 'smartparens-config)
  :config
  (add-hook 'emacs-lisp-mode-hook #'smartparens-mode)
  (add-hook 'js2-mode-hook #'smartparens-mode)
  (add-hook 'python-mode-hook #'smartparens-mode)
  )

(use-package editorconfig
  :ensure t
  :config
  (editorconfig-mode 1))

(use-package company
  :config
  (global-company-mode t))

(use-package js2-mode
  :config
  (add-to-list 'auto-mode-alist '("\.js'" . js2-mode)))
