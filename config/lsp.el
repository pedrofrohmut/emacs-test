;; LSP Clietn Configuration #####################################################

(use-package eglot
  :ensure t)

(add-hook 'csharp-mode 'eglot-ensure)

(define-key evil-normal-state-map (kbd "C-p") 'flymake-goto-prev-error)
(define-key evil-normal-state-map (kbd "C-n") 'flymake-goto-next-error)

(define-key evil-normal-state-map (kbd "SPC c a") 'eglot-code-actions)

(define-key evil-normal-state-map (kbd "SPC r n") 'eglot-rename)
