(use-package vertico
  :ensure t
  :config (vertico-mode t)
          (setq vertico-cycle t))

(use-package orderless
  :ensure t
  :after vertico
  :custom (completion-styles '(orderless basic))
          (completion-category-overrides '((file (styles basic partial-completion)))))

(use-package marginalia
  :ensure t
  :after vertico
  :bind (("M-a" . marginalia-cycle)
         :map minibuffer-local-map
         ("M-a" . marginalia-cycle))
  :init (marginalia-mode))
