;; Evil #########################################################################

(setq evil-want-C-u-scroll t)
(setq evil-want-C-u-delete t)
(setq evil-want-C-i-jump t)
(setq evil-want-Y-yank-to-eol t)
(setq evil-vsplit-window-right t)
(setq evil-split-window-below t)
(setq evil-cross-lines t)
(setq evil-move-beyond-eol t)
(setq evil-undo-system 'undo-redo)
(setq evil-want-keybinding nil) ; Evil collection asks for it

(require 'evil)
(add-hook 'after-init-hook 'evil-mode)

;; Evil Unbind ##################################################################
(define-key evil-normal-state-map (kbd "C-p") nil)
(define-key evil-normal-state-map (kbd "C-n") nil)
(define-key evil-normal-state-map (kbd "<normal-state> C-b") nil)
(define-key evil-normal-state-map (kbd "<normal-state> C-f") nil)
(define-key evil-normal-state-map (kbd "s")   nil)
(define-key evil-normal-state-map (kbd "S")   nil)

;; Redo
(define-key evil-normal-state-map (kbd "U") 'evil-redo)

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

;; Scroll up
(define-key evil-normal-state-map (kbd "C-k")
  (lambda ()
    (interactive)
    (evil-scroll-line-up 12)))

;; Resize Windows
(define-key evil-normal-state-map (kbd "<up>") 'evil-window-increase-height)
(define-key evil-normal-state-map (kbd "<down>") 'evil-window-decrease-height)
(define-key evil-normal-state-map (kbd "<right>") 'evil-window-increase-width)
(define-key evil-normal-state-map (kbd "<left>") 'evil-window-decrease-width)

;; Evil - Must Have #############################################################

;; ;; Makes evil keys consistent in more places than just evil mode default
(with-eval-after-load 'evil
  (require 'evil-collection)
  (evil-collection-init)
  (message "evil-collection loaded"))

;; Evil Commentary gcc gc<object>
(with-eval-after-load 'evil
  (require 'evil-commentary)
  (evil-commentary-mode t))

;; Evil Surround (emulate tim pope)
(with-eval-after-load 'evil
  (require 'evil-surround)
  (global-evil-surround-mode t))

;; Evil-numbers
(with-eval-after-load 'evil
  (require 'evil-numbers))

;; Evil Increase hovered number
(define-key evil-normal-state-map (kbd "C--") 'evil-numbers/dec-at-pt)
;; Evil Decrease hovered number
(define-key evil-normal-state-map (kbd "C-=") 'evil-numbers/inc-at-pt)

;; Evil Lion Align stuff by stuff gl= gL, gl; gL(
(with-eval-after-load 'evil
  (require 'evil-lion)
  (evil-lion-mode t))
