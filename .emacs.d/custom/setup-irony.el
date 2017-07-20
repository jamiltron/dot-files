(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'c-mode-hook 'irony-mode)
(add-hook 'objc-mode-hook 'irony-mode)

(defun my-irony-mode-hook ()
	(define-key irony-mode-map [remap completion-at-point]
		'irony-completion-at-point-async)
	(define-key irony-mode-map [remap complete-symbol]
		'irony-completion-at-point-async))

(add-hook 'irony-mode-hook 'my-irony-mode-hook)
(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)

(setq company-backends (delete 'company-semantic company-backends))
(eval-after-load 'company
	'(add-to-list
		'company-backends 'company-irony))

(eval-after-load 'company
	'(add-to-list
		'company-backends 'company-irony))

(require 'company-irony-c-headers)
(eval-after-load 'company
	'(add-to-list
		'company-backends '(company-irony-c-headers company-irony)))


(provide 'setup-irony)
