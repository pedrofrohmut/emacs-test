;; Which Key ####################################################################

(use-package which-key
  :ensure t
  :init
  (add-hook 'after-init-hook 'which-key-mode)
  :config
  (setq which-key-idle-delay 1))

;(which-key-setup-side-window-right)

