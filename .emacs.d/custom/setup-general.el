(use-package dash)
(use-package s)

(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-language-environment "UTF-8")
(prefer-coding-system 'utf-8)

(setq gc-cons-threshold 50000000)
(setq gnutls-min-prime-bits 4096)

;; backup stuff
(setq backup-directory-alist '(("." . "~/.emacs.d/backups")))

;; history stuff
(setq savehist-file "~/.emacs.d/savehist")
(savehist-mode 1)
(setq history-length t)
(setq savehist-save-minibuffer-history 1)
(setq savehist-additional-variables
  '(kill-ring
    search-ring
    regexp-search-ring))

;; general stuff
(setq inhibit-startup-screen t)
(setq inhibit-startup-message t)
(tool-bar-mode -1)
(horizontal-scroll-bar-mode -1)
(scroll-bar-mode -1)
(menu-bar-mode -1)
(fset 'yes-or-no-p 'y-or-n-p)
(global-linum-mode t)
(setq column-number-mode t)
(global-hl-line-mode 1)

;; tabs
(setq-default indent-tabs-mode nil)
(setq tab-width 2)
(setq-default tab-always-indent 'complete)

(provide 'setup-general)
