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

(setq packages '(
		 company
		 company-jedi
		 editorconfig
		 evil
		 grizzl
		 helm
		 helm-projectile
		 js2-mode
		 magit
		 markdown-mode
		 prodigy
		 projectile
		 pyvenv
		 rjsx-mode
		 smartparens
		 use-package
		 zenburn
		 ))

(mapcar #'package-install packages)

(use-package evil
  :config
  (evil-mode 1))

(use-package projectile
  :config
  (projectile-mode +1))

(use-package helm-projectile
  :config
  (helm-projectile-on))

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
  (add-hook 'rjsx-mode-hook #'smartparens-mode)
  )

(use-package editorconfig
  :ensure t
  :config
  (editorconfig-mode 1))

(use-package company
  :config
  (global-company-mode t)
  (add-to-list 'company-backends '(company-jedi company-files)))

(use-package js2-mode
  :config
  (add-to-list 'auto-mode-alist '("\.js'" . js2-mode)))
