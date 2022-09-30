;; Terminals ####################################################################

(use-package vterm
  :ensure t
  :defer t
  :commands vterm)

(define-key evil-normal-state-map (kbd "SPC t t") 'vterm)

(use-package vterm-toggle
  :ensure t
  :defer t
  :bind ("C-'" . vterm-toggle)
  :commands vterm-toggle)
