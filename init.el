(setq-default indent-tabs-mode nil)

(global-display-line-numbers-mode t)
(setq-default display-line-numbers-type 'relative)

(electric-pair-mode t)

(save-place-mode t)

(setq make-backup-files nil)

(setq column-number-mode t)

(setq use-dialog-box nil)

(setq global-auto-revert-non-file-buffers t)
(global-auto-revert-mode t)

;; Tabs
(setq tab-bar-new-tab-choice "*scratch*")
(setq tab-bar-new-tab-to 'rightmost)
(setq tab-bar-close-button-show nil)
(setq tab-bar-new-button-show nil)

;; Keybinds #####################################################################

(global-set-key (kbd "<escape>") 'keyboard-escape-quit) ;; Make ESC quit prompts
(global-set-key (kbd "C-c d")    'cd) ;; Change default directory
(global-set-key (kbd "C-c C-d")  'cd) ;; Change default directory

(global-unset-key (kbd "C-h"))  ;; Can still use help with F1
(global-unset-key (kbd "C-l"))  ;; Can use evil zz
(global-unset-key (kbd "C-j"))  ;; Not useful before
(global-unset-key (kbd "C-k"))  ;; Not useful either

;; MELPA ########################################################################

;; Adding packages
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("elpa" . "https://elpa.gnu.org/packages/") t)
;(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/") t)
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

;; Custom File ##################################################################

(setq custom-file "~/.config/emacs/custom-vars.el")
(load custom-file 'noerror 'nomessage)

;; Plugin Files #################################################################

;; Doom theme
(load "~/.config/emacs/config/plugins/colors.el")

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

;; Buffer Completion - Vertico
(load "~/.config/emacs/config/plugins/buffer-completion.el")

;; Auto Complete - Company
(load "~/.config/emacs/config/plugins/auto-complete.el")
