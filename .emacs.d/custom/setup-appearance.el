(use-package gruvbox-theme
  :init
  (load-theme 'gruvbox-dark-medium t))

(use-package rainbow-mode)

(rainbow-mode 1)

(use-package rainbow-delimiters
  :config
  (add-hook 'prog-mode-hook 'rainbow-delimiters-mode))

(provide 'setup-appearance)
