;; Which Key ####################################################################

(use-package which-key
  :ensure t
  :init
  (setq which-key-idle-delay 1)
  :config
  (which-key-mode t)
  (which-key-setup-side-window-right))
