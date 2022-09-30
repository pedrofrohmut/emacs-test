;; Garbace Collection ajusted for faster startup time (reajusted after)

(setq gc-cons-threshold 15000000)

;; Apperance ###################################################################

(add-to-list 'default-frame-alist '(background-color . "#1a1b26"))
(add-to-list 'default-frame-alist '(foreground-color . "#a3a3a3"))
(add-to-list 'default-frame-alist '(font . "FiraCode Nerd Font Mono 12"))
(add-to-list 'default-frame-alist '(alpha . (90 . 90)))

(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)
(setq inhibit-startup-message t)
