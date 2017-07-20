(setq helm-gtags-prefix-key "\C-cg")

(use-package helm-gtags
	:init
	(progn
		(setq helm-gtags-ignore-case t
					helm-gtags-auto-update t
					helm-gtags-use-input-at-cursor t
					helm-gtags-prefix-key "\C-cg"
					helm-gtags-suggested-key-mapping t)

		(add-hook 'dired-mode-hook 'helm-gtags-mode)

		(add-hook 'eshell-mode-hook 'helm-gtags-mode)

		(add-hook 'c-mode-hook 'helm-gtags-mode)
		(add-hook 'c++-mode-hook 'helm-gtags-mode)
		(add-hook 'java-mode-hook 'helm-gtags-mode)
		(add-hook 'asm-mode-hook 'helm-gtags-mode)

		(with-eval-after-load 'helm-gtags
			(define-key helm-gtags-mode-map (kbd "C-c g a") 'helm-gtags-tags-in-this-function)
      (define-key helm-gtags-mode-map (kbd "C-j") 'helm-gtags-select)
      (define-key helm-gtags-mode-map (kbd "M-.") 'helm-gtags-dwim)
      (define-key helm-gtags-mode-map (kbd "M-,") 'helm-gtags-pop-stack)
      (define-key helm-gtags-mode-map (kbd "C-c <") 'helm-gtags-previous-history)
      (define-key helm-gtags-mode-map (kbd "C-c >") 'helm-gtags-next-history))))

(provide 'setup-helm-gtags)
