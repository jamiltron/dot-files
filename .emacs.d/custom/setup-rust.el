(use-package rust-mode
  :init
  (progn
    (use-package flycheck-rust
      :init
      (progn
        (add-hook 'flycheck-mode-hook #'flycheck-rust-setup)))
    (progn
      (use-package racer
        :init
        (progn
          (add-hook 'rust-mode-hook #'racer-mode)
          (add-hook 'racer-mode-hook #'eldoc-mode)
          (add-hook 'racer-mode-hook #'company-mode))
        :bind
        (:map rust-mode-map
              ("TAB" . company-indent-or-complete-common))
        :config
        (setq company-tooltip-align-annotations t)))
    (setq rust-format-on-save t)))

(provide 'setup-rust)
