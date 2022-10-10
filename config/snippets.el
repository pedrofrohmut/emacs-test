;; Ya Snippets ##################################################################

(use-package yasnippet
  :ensure t
  :config
  (yas-global-mode t))
  ;; :hook (company-mode . yas-global-mode))

(define-key evil-insert-state-map  (kbd "C-j") 'yas-expand)

;; (add-hook 'global-company-mode
;;           (lambda ()
;;             (define-key company-active-map (kbd "C-j") 'yas-expand)))

(use-package yasnippet-snippets
  :ensure t)

;;   :after yasnippet
;;   :hook yas-global-mode
;;   :ensure t)
