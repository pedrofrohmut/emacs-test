;; Auto Complete ###############################################################

(use-package company
  :ensure t
  :init
  (add-hook 'after-init-hook 'global-company-mode))

; No delay in showing suggestions.
(setq company-idle-delay 0)

; Show suggestions after entering one character.
(setq company-minimum-prefix-length 1)

; Goes to top of comp list when reaches the end
(setq company-selection-wrap-around t)
