(use-package helm
  :diminish helm-mode
  :init
  (progn
    (require 'helm-config)
    (defun helm-hide-minibuffer-maybe ()
      (when (with-helm-buffer helm-echo-input-in-header-line)
        (let ((ov (make-overlay (point-min) (point-max) nil nil t)))
          (overlay-put ov 'window (selected-window))
          (overlay-put ov 'face (let ((bg-color (face-background 'default nil)))
                                  `(:background ,bg-color :foreground ,bg-color)))
          (setq-local cursor-type nil))))
    (add-hook 'helm-minibuffer-set-up-hook 'helm-hide-minibuffer-maybe)
    (when (executable-find "curl")
      (setq helm-google-suggest-use-curl-p t))
    (setq helm-candidate-number-limit 100
          helm-idle-delay 0.0
          helm-input-idle-delay 0.01
          helm-yas-display-key-on-candidate t
          helm-quick-update t
          helm-M-x-requires-pattern nil
          helm-ff-skip-boring-files t
          helm-ff-search-library-in-sexp t
          helm-ff-file-name-history-use-recentf t
          helm-scroll-amount 4
          helm-split-window-in-side-p t
          helm-echo-input-in-header-line t
          helm-move-to-line-cycle-in-source t
          helm-mode-fuzzy-match t
          helm-buffers-fuzzy-matching t
          helm-org-headings-fontify t
          helm-M-x-fuzzy-matching t
          helm-imenu-fuzzy-match t
          helm-lisp-fuzzy-completion t
          helm-apropos-fuzzy-match t
          helm-buffer-skip-remote-checking t
          helm-locate-fuzzy-match t
          helm-display-header-line nil)
    (helm-mode 1))
  :bind
  (("C-c h"   . helm-command-prefix)
   ("M-y"     . helm-show-kill-ring)
   ("C-x b"   . helm-buffers-list)
   ("C-x C-f" . helm-find-files)
   ("C-c r"   . helm-recentf)
   ("C-h SPC" . helm-all-mark-rings)
   ("C-c h o" . helm-occur)
   ("C-c h w" . helm-wikipedia-suggest)
   ("C-c h g" . helm-google-suggest)
   :map helm-map
   ("TAB"     . helm-execute-persistent-action)
   ("C-i"     . helm-execute-persistent-action)
   ("C-z"     . helm-select-action)
   :map helm-grep-mode-map
   ("RET"     . helm-grep-mode-jump-other-window)
   ("n"       . helm-grep-mode-jump-other-window-forward)
   ("p"       . helm-grep-mode-jump-other-window-backward)
   )
  :config
  (global-unset-key (kbd "C-x c"))
  (add-to-list 'helm-sources-using-default-as-input 'helm-source-man-pages)
  (use-package helm-grep)
  (use-package helm-smex
    :bind
    (("M-x"     . helm-smex)
     ("M-X"     . helm-smex-major-mode-commands))))

(provide 'setup-helm)
