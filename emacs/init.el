(require 'package)

(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("marmalade" . "https://marmalade-repo.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))

(package-initialize)

(if (not (file-exists-p "~/.emacs.d/elpa"))
    (package-refresh-contents))


(tool-bar-mode -1)

(add-hook 'emacs-lisp-mode-hook #'eldoc-mode)

(defvar my-packages '(js2-mode))

(mapcar #'package-install my-packages)


(load-theme 'wombat)
