;; Insert spaces  instead of tabs (no \t)
(setq-default indent-tabs-mode nil)

;; (global-display-line-numbers-mode t)
;; (setq-default display-line-numbers-type 'relative)

(electric-pair-mode t)

;; Saves your location in files for the next time you open it
(save-place-mode t)

(setq make-backup-files nil)

(setq auto-save-default nil)

;; Color Column/Ruler
(global-display-fill-column-indicator-mode t)
(setq-default display-fill-column-indicator-column 101)

;; Show cursor position in statusbar
(setq column-number-mode t)

;; Dont open gui dialogs
(setq use-dialog-box nil)

;; Update emacs buffers when the files change outside (keep buffers sync)
(setq global-auto-revert-non-file-buffers t)
(global-auto-revert-mode t)

;; Tabs
(setq tab-bar-new-tab-choice "*scratch*")
(setq tab-bar-new-tab-to 'rightmost)
(setq tab-bar-close-button-show nil)
(setq tab-bar-new-button-show nil)

;; Melpa ########################################################################

;; Adding packages
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("elpa" . "https://elpa.gnu.org/packages/") t)
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/") t)
(package-initialize)

;; Use-Package ##################################################################

;; Install Use-Package
(unless (package-installed-p 'use-package)
    (package-refresh-contents)
    (package-install 'use-package))

;; This is only needed once, near the top of the file
(eval-when-compile
  (add-to-list 'load-path "~/.config/emacs/elpa")
  ;(setq use-package-always-ensure t)
  ;(setq use-package-always-defer t)
  ;(setq use-package-verbose t)
  (require 'use-package))

;; No Littering #################################################################

;; Helps to organize the emacs configuration directory
(use-package no-littering :ensure t)

;; no-littering does not set it by default
(setq auto-save-file-name-transforms
      `((".*" ,(no-littering-expand-var-file-name "auto-save/") t)))

;; Custom File ##################################################################

(setq custom-file "~/.config/emacs/etc/custom-vars.el")
(load custom-file 'noerror 'nomessage)

;; Plugin Files #################################################################

;; Doom theme and Modeline
(load "~/.config/emacs/config/styling.el")

;; Evil
(load "~/.config/emacs/config/evil.el")

;; General
(load "~/.config/emacs/config/general.el")

;; Which Key
(load "~/.config/emacs/config/which-key.el")

;; Ace Jump
(load "~/.config/emacs/config/ace-jump.el")

;; Tree File Explorer
(load "~/.config/emacs/config/tree-file-explorer.el")

;; Utils: Visual Fill Column, Restart Emacs
(load "~/.config/emacs/config/utils.el")

;; Buffer Completion - Vertico
(load "~/.config/emacs/config/buffer-completion.el")

;; Auto Complete - Company
(load "~/.config/emacs/config/completion.el")

;; Snippets
(load "~/.config/emacs/config/snippets.el")

;; Language Support
(load "~/.config/emacs/config/language-support.el")

;; Language Server Protocol Client
(load "~/.config/emacs/config/lsp.el")

;; Shells and Terms
(load "~/.config/emacs/config/terminals.el")

;; Keybinds #####################################################################

(global-unset-key (kbd "C-h"))  ;; Can still use help with F1
(global-unset-key (kbd "C-l"))  ;; Can use evil zz
(global-unset-key (kbd "C-j"))  ;; Not useful before
(global-unset-key (kbd "C-k"))  ;; Not useful either

(global-set-key (kbd "<escape>") 'keyboard-escape-quit) ;; Make ESC quit prompts

;; DirEd Keys
(define-key dired-mode-map (kbd "C-c n f") 'dired-create-empty-file)
(define-key dired-mode-map (kbd "C-c n d") 'dired-create-directory)
(evil-define-key 'normal dired-mode-map (kbd "n f") 'dired-create-empty-file)
(evil-define-key 'normal dired-mode-map (kbd "n d") 'dired-create-directory)

;; Project
(define-key evil-normal-state-map (kbd "C-q") 'project-find-file)

;; Minibuffer
(define-key minibuffer-mode-map (kbd "C-w") 'backward-kill-word)
(define-key minibuffer-mode-map (kbd "C-u") 'backward-kill-sentence)

;; Startup Function #############################################################

(defun my/display-startup-time ()
  (message "Emacs loaded in %s with %d garbage collections."
           (format "%.2f seconds"
                   (float-time
                    (time-subtract after-init-time before-init-time)))
           gcs-done))
(defun my/restore-gc-threshhold ()
  (setq gc-cons-threshold '1600000))

(add-hook 'emacs-startup-hook #'my/display-startup-time)
(add-hook 'emacs-startup-hook #'my/restore-gc-threshhold)
