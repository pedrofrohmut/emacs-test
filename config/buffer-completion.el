(use-package vertico
  :ensure t
  :init
  (add-hook 'after-init-hook 'vertico-mode)
  :config
  (setq vertico-cycle t))


(use-package orderless
  :ensure t
  :custom
  (completion-styles '(orderless basic))
  (completion-category-overrides '((file (styles basic partial-completion)))))

(use-package marginalia
  :ensure t
  :bind (("M-a" . marginalia-cycle)
         :map minibuffer-local-map
         ("M-a" . marginalia-cycle))
  :init
  (marginalia-mode))
