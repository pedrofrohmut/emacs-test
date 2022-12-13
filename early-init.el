;; Garbace Collection ajusted for faster startup time (reajusted after)

(setq gc-cons-threshold 15000000)

;; Apperance ###################################################################

(add-to-list 'default-frame-alist '(background-color . "#1a1b26"))
(add-to-list 'default-frame-alist '(foreground-color . "#d5d5d5"))
(add-to-list 'default-frame-alist '(font . "FiraCode Nerd Font Mono 12"))
(add-to-list 'default-frame-alist '(alpha . (90 . 90)))

(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)
(set-fringe-mode 12) ;; Adds side padding to frames

(setq inhibit-startup-message t)

;; Tranparency for Terminal #####################################################
(defun set-background-for-terminal (&optional frame)
  (or frame (setq frame (selected-frame)))
  "unsets the background color in terminal mode"
  (unless (display-graphic-p frame)
    (set-face-background 'default "unspecified-bg" frame)))

(add-hook 'after-make-frame-functions 'set-background-for-terminal)
(add-hook 'window-setup-hook          'set-background-for-terminal)
