;; DirEd Sidebar ################################################################

(use-package dired-sidebar
  :ensure t
  :defer t
  :bind (("<f8>" . dired-sidebar-toggle-sidebar)
         :map evil-normal-state-map
         ("C-b" . dired-sidebar-toggle-sidebar))
  :commands dired-sidebar-toggle-sidebar)
