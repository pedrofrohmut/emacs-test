;; Language Support

;; CSharp ######################################################################

(use-package tree-sitter
  :defer t
  :ensure nil)

(use-package tree-sitter-langs
  :defer t
  :ensure nil)

(use-package tree-sitter-indent
  :defer t
  :ensure nil)

(use-package csharp-mode)
  ;; :defer t
  ;; :ensure t
  ;; :mode "\\.cs\\'")
  ;; :config
  ;; (add-to-list 'auto-mode-alist '("\\.cs\\'" . csharp-tree-sitter-mode)))

;; Elixir ######################################################################

(unless (package-installed-p 'elixir-mode)
  (package-install 'elixir-mode))

(require 'elixir-mode)

;; Haskell #####################################################################

(unless (package-installed-p 'haskell-mode)
  (package-install 'haskell-mode))

(require 'haskell-mode)
