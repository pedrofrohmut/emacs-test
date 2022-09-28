;; Ace Jump #####################################################################

(use-package ace-jump-mode
  :ensure t
  :defer t)

(define-key evil-normal-state-map (kbd "s") 'ace-jump-word-mode)
(define-key evil-normal-state-map (kbd "S") 'ace-jump-mode-pop-mark)
