;; Fill Column ##################################################################

(use-package visual-fill-column
  :ensure t
  :init
  (add-hook 'after-init-hook 'global-visual-fill-column-mode)
  :config
  (setq-default visual-fill-column-width 121)
  (setq-default visual-fill-column-center-text t))

