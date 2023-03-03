
;; Ya Snippets ##################################################################

(use-package yasnippet
  :ensure t
  :defer t
  :hook
  (lsp-mode . yas-global-mode)
  :init
  (setq yas-snippet-dirs "~/.config/emacs/snippets"))

(define-key evil-insert-state-map  (kbd "C-j") 'yas-expand)

(use-package yasnippet-snippets
  :ensure t
  :defer t)

;; Emmet ########################################################################

(use-package emmet-mode
  :ensure t
  :defer t
  :after
  (web-mode css-mode scss-mode)
  :init
  (setq emmet-move-cursor-between-quotes t)
  (setq emmet-self-closing-tag-style " /")
  :config
  (add-hook 'emmet-mode-hook (lambda () (setq emmet-indentation 4)))
  (add-hook 'sgml-mode-hook 'emmet-mode)
  (add-hook 'css-mode-hook  'emmet-mode)
  (unbind-key "C-j" emmet-mode-keymap)
  (unbind-key "<C-return>" emmet-mode-keymap)
  (unbind-key "C-M-<left>" emmet-mode-keymap)
  (unbind-key "C-M-<right>" emmet-mode-keymap))
  ;; :bind
  ;; ("C-k" . emmet-expand-line))

(define-key evil-insert-state-map (kbd "C-k") 'emmet-expand-line)
