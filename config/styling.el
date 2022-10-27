;; Doom Styling #################################################################

(use-package doom-themes
  :ensure t
  :config
  (load-theme 'doom-monokai-pro t))

(set-background-color "#1a1b26")
(set-face-foreground 'line-number "#a3a3a3")

(use-package doom-modeline
  :ensure t
  :config
  (doom-modeline-mode t))

(use-package all-the-icons
  :ensure t)
