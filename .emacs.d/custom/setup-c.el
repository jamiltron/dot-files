(use-package company-c-headers
  :init
  (add-to-list 'company-backends 'company-c-headers))

(add-hook 'c-mode-common-hook 'hs-minor-mode)

(setq c-default-style "java")

(use-package cc-mode
  :init
  :bind
  (:map c-mode-map
        ("TAB" .  company-complete)
   :map c++-mode-map
        ("TAB" . company-complete)))

(provide 'setup-c)
