(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)
(setq inhibit-startup-message t)

(add-to-list 'default-frame-alist '(font . "FiraCode Nerd Font Mono 12"))

(setq-default indent-tabs-mode nil)

(global-display-line-numbers-mode t)
(setq-default display-line-numbers-type 'relative)

(electric-pair-mode t)

(setq make-backup-files nil)

(setq column-number-mode t)

;; Tabs
(setq tab-bar-new-tab-choice "*scratch*")
(setq tab-bar-new-tab-to 'rightmost)
(setq tab-bar-close-button-show nil)
(setq tab-bar-new-button-show nil)

;; Transparency ################################################################

(defun set-background-for-terminal (&optional frame)
  (or frame (setq frame (selected-frame)))
  "unsets the background color in terminal mode"
  (unless (display-graphic-p frame)
    (set-face-background 'default "unspecified-bg" frame)))

(add-hook 'after-make-frame-functions 'set-background-for-terminal)
(add-hook 'window-setup-hook 'set-background-for-terminal)

(set-frame-parameter (selected-frame) 'alpha '(90 . 90))
(add-to-list 'default-frame-alist '(alpha . (90 . 90)))

;; MELPA ########################################################################

;; Adding packages
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/") t)
(add-to-list 'package-archives '("elpa" . "https://elpa.gnu.org/packages/") t)
(package-initialize)

;; USE-PACKAGE ##################################################################

;; Install Use-Package
(unless (package-installed-p 'use-package)
    (package-refresh-contents)
    (package-install 'use-package))

;; This is only needed once, near the top of the file
(eval-when-compile
  (add-to-list 'load-path "~/.config/emacs/elpa")
  ;(setq use-package-always-ensure t)
  (require 'use-package))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(visual-fill-column ace-jump-mode evil-numbers evil-surround evil-commentary evil-collection evil doom-themes use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Plugin Files #################################################################

;; Doom theme
(load "~/.config/emacs/config/plugins/doom.el")

;; Evil
(load "~/.config/emacs/config/plugins/evil.el")

;; General
(load "~/.config/emacs/config/plugins/general.el")

;; Which Key
(load "~/.config/emacs/config/plugins/which-key.el")

;; Ace Jump
(load "~/.config/emacs/config/plugins/ace-jump.el")

;; Fill Column
(load "~/.config/emacs/config/plugins/visual-fill-column.el")
