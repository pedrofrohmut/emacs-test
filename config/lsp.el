;; LSP #########################################################################

(use-package lsp-mode
  :ensure t
  :commands lsp)

;; GoTo
(define-key evil-normal-state-map (kbd "g d") 'lsp-find-definition)
(define-key evil-normal-state-map (kbd "g t") 'lsp-find-type-definition)
(define-key evil-normal-state-map (kbd "g h") 'lsp-find-implementation)
(define-key evil-normal-state-map (kbd "g r") 'lsp-find-references)
(define-key evil-normal-state-map (kbd "C-p") 'flymake-goto-prev-error)
(define-key evil-normal-state-map (kbd "C-n") 'flymake-goto-next-error)
;; Actions
(define-key evil-normal-state-map (kbd "SPC c a") 'lsp-execute-code-action)
(define-key evil-normal-state-map (kbd "SPC r n") 'lsp-rename)

(use-package lsp-ui
  :ensure t
  :commands lsp-ui-mode)

(setq lsp-keymap-prefix "C-c l")

;; Config lsp features
(setq lsp-enable-symbol-highlighting nil)   ;; Highlight work under cursor
;; (setq lsp-ui-doc-show-with-cursor t)        ;; Show docs on cursor hover
;; (setq lsp-ui-doc-show-with-mouse nil)       ;; Show docs on mouse hover
(setq lsp-lens-enable nil)                  ;; Code lens
(setq lsp-headerline-breadcrumb-enable t) ;; Breadcrumb

;; Hooks
(add-hook 'csharp-mode-hook 'lsp)
(add-hook 'lsp-mode         'lsp-enable-which-key-integration)


;; TODO: lsp-treemacs, dap-mode
