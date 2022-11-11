;; Terminals ####################################################################

(use-package vterm
  :ensure t
  :defer t
  :commands vterm)

(define-key evil-normal-state-map (kbd "SPC t t") 'vterm)

(add-hook 'vterm-mode-hook
          (lambda ()
            (display-line-numbers-mode 0)))
