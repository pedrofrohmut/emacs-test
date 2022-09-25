;; Evil #########################################################################

;; Evil Mode
(use-package evil
  :ensure t
  :init
  (setq evil-want-C-u-scroll t)
  (setq evil-want-C-u-delete t)
  (setq evil-want-C-i-jump t)
  (setq evil-want-keybinding nil) ; Evil collection asks for it
  (setq evil-want-Y-yank-to-eol t)
  (setq evil-vsplit-window-right t)
  (setq evil-split-window-below t)
  (setq evil-cross-lines t)
  (setq evil-move-beyond-eol t)
  :config
  (evil-mode t))

;; Evil - Must Have #############################################################

;; Makes evil keys consistent in more places than just evil mode default
(use-package evil-collection
  :ensure t
  :after evil
  :config
  (evil-collection-init))

;; Evil Commentary 'gc<motion>' 'gcc' ...
(use-package evil-commentary
  :ensure t
  :after evil
  :config
  (evil-commentary-mode t))

;; Evil Surround (emulate tim pope)
(use-package evil-surround
  :ensure t
  :after evil
  :config
  (global-evil-surround-mode t))

;; Evil-numbers
(use-package evil-numbers
  :ensure t
  :after evil)

;; Evil Goggles displays a visual hint when editing
(use-package evil-goggles
  :ensure t
  :after evil
  :config
  (evil-goggles-mode t))

;; Evil Lion Align stuff by stuff gl= gL, gl; gL( 
(use-package evil-lion
  :ensure t
  :config
  (evil-lion-mode))

;; Evil Unbind ##################################################################
(define-key evil-normal-state-map (kbd "C-p") nil)
(define-key evil-normal-state-map (kbd "C-n") nil)
(define-key evil-insert-state-map (kbd "C-p") nil)
(define-key evil-insert-state-map (kbd "C-n") nil)
(define-key evil-normal-state-map (kbd "s") nil)
(define-key evil-normal-state-map (kbd "S") nil)

;; Easy insert linebreak in normal mode
(define-key evil-normal-state-map (kbd "RET") (kbd "i RET <escape>"))

;; Ctrl-h as backspace
(define-key evil-insert-state-map (kbd "C-h") 'evil-delete-backward-char-and-join)

;; Ctrl-l as delete
(define-key evil-insert-state-map (kbd "C-l") 'evil-delete-char)

;; Change tab normal mode
(define-key evil-normal-state-map (kbd "C-l") 'tab-next)
(define-key evil-normal-state-map (kbd "C-h") 'tab-previous)

;; Scroll down
(define-key evil-normal-state-map (kbd "C-j")
  (lambda ()
    (interactive)
    (evil-scroll-line-down 12)))

(define-key evil-normal-state-map (kbd "C-d")
  (lambda ()
    (interactive)
    (evil-scroll-line-down 25)))

;; Scroll up
(define-key evil-normal-state-map (kbd "C-k")
  (lambda ()
    (interactive)
    (evil-scroll-line-up 12)))

(define-key evil-normal-state-map (kbd "C-u")
  (lambda ()
    (interactive)
    (evil-scroll-line-up 25)))

;; Resize Windows
(define-key evil-normal-state-map (kbd "<up>") 'evil-window-increase-height)
(define-key evil-normal-state-map (kbd "<down>") 'evil-window-decrease-height)
(define-key evil-normal-state-map (kbd "<right>") 'evil-window-increase-width)
(define-key evil-normal-state-map (kbd "<left>") 'evil-window-decrease-width)

;; Evil Increase hovered number
(define-key evil-normal-state-map (kbd "C--") 'evil-numbers/dec-at-pt)

;; Evil Decrease hovered number
(define-key evil-normal-state-map (kbd "C-=") 'evil-numbers/inc-at-pt)