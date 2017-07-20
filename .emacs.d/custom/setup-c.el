;; company-c headers
(use-package company-c-headers
  :init
  (add-to-list 'company-backends 'company-c-headers))

(add-hook 'c-mode-common-hook 'hs-minor-mode)

(setq c-default-style "java")

(use-package cc-mode
  :bind ((:map c-mode-map   ("tab" . company-complete))
         (:map c++-mode-map ("tab" . company-complete))))

(provide 'setup-c)
