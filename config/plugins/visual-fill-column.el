;; Fill Column ##################################################################

(use-package visual-fill-column
  :ensure t
  :config
  (setq-default visual-fill-column-width 121)
  (setq-default visual-fill-column-center-text t)
  :config
  (global-visual-fill-column-mode t))
