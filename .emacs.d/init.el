(require 'package)
(setq package-archives 
      '(("org"       . "http://orgmode.org/elpa/")
	("gnu"       . "http://elpa.gnu.org/packages/")
	("melpa"     . "http://melpa.org/packages/")
	("marmalade" . "https://marmalade-repo.org/packages/")))

(package-initialize)
(package-refresh-contents)
(add-to-list 'load-path "~/.emacs.d/custom")

(unless (package-installed-p 'use-package)
  (package-install 'use-package))
(setq use-package-verbose t)
(setq use-package-always-ensure t)
(require 'use-package)
(use-package auto-compile
  :config (auto-compile-on-load-mode))
(setq load-prefer-newer t)

(require 'setup-appearance)
(require 'setup-general)
(require 'setup-editing)
(require 'setup-helm)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (auto-compile use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
