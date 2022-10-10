;; Auto Complete ###############################################################

(use-package company
  :ensure t
  :bind (:map company-active-map
              ("C-e" . company-abort)
              ("C-j" . yas-expand)
              ("C-k" . nil))
  :init
  (add-hook 'after-init-hook 'global-company-mode))

; No delay in showing suggestions.
(setq company-idle-delay 0)

; Show suggestions after entering one character.
(setq company-minimum-prefix-length 1)

; Goes to top of comp list when reaches the end
(setq company-selection-wrap-around t)

(use-package company-box
  :ensure t
  :defer t
  :hook (company-mode . company-box-mode))

(use-package company-quickhelp
  :ensure t
  :defer t
  :hook (company-mode . company-quickhelp-mode))