(global-set-key (kbd "RET") 'newline-and-indent)

;; https://github.com/syohex/emacs-anzu
;; provides a minor mode which displays _current match_ and
;; _total match_ information in the mode-line in various search modes
(use-package anzu
  :init (global-anzu-mode)
  :bind
  (("M-%"   . anzu-query-replace)
   ("C-M-%" . anzu-query-replace-regexp)))

;; https://github.com/pmarinov/clean-aindent-mode
;; clean auto-indent and backspace unindent
(use-package clean-aindent-mode
  :init (add-hook 'prog-mode-hook 'clean-aindent-mode))

;; https://github.com/jscheid/dtrt-indent
;; guesses the indentation offset and adjusts
(use-package dtrt-indent
  :init
  (dtrt-indent-mode 1)
  (setq dtrt-indent-verbosity 0))

;; http://www.flycheck.org/en/latest/
(use-package flycheck
  :init
  (global-flycheck-mode))

;; https://github.com/victorhge/iedit
;; edit multiple regions in the same way simultaneously
(use-package iedit
  :init (setq iedit-toggle-key-default nil)
  :bind (("C-;" . iedit-mode)))

;; https://www.emacswiki.org/emacs/MarkdownMode
(use-package markdown-mode
  :commands (markdown-mode gfm-mode)
  :mode (("README\\.md\\'" . gfm-mode)
         ("\\.md\\."       . markdown-mode)
         ("\\.markdown\\'" . markdown-mode))
  :init (setq markdown-command "multimarkdown"))

;; https://github.com/Fuco1/smartparens
(use-package smartparens
  :diminish smartparens-mode
  :config
  (progn
    (require 'smartparens-config)
    (show-smartparens-global-mode t)))

(add-hook 'prog-mode-hook 'turn-on-smartparens-strict-mode)
(add-hook 'markdown-mode-hook 'turn-on-smartparents-strict-mode)

;; https://www.emacswiki.org/emacs/UndoTree
(use-package undo-tree
  :init (global-undo-tree-mode 1))

;; https://github.com/k-talo/volatile-highlights.el
;; brings feedback by highlighting some portions related to operations
(use-package volatile-highlights
  :init (volatile-highlights-mode t))

;; https://github.com/lewang/ws-butler
;; unobtrusive way to trim spaces from end of line
(use-package ws-butler
  :init
  (add-hook 'prog-mode-hook 'ws-butler-mode)
  (add-hook 'text-mode 'ws-butler-mode)
  (add-hook 'fundamental-mode 'ws-butler-mode))

(provide 'setup-editing)
