(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   '("melpa" . "http://melpa.org/packages/") t)
  (add-to-list
   'package-archives
   '("melpa-stable" . "http://melpa-stable.milkbox.net/packages/") t)
  (package-initialize))

;;Use-package
(unless (featurep 'use-package)
  (package-refresh-contents)
  (package-install 'use-package)
  ) 
;;Interface
(tooltip-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(global-linum-mode 1)
(column-number-mode t)
(set-fringe-mode 0)

;;No se
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("1db337246ebc9c083be0d728f8d20913a0f46edc0a00277746ba411c149d7fe5" "938d8c186c4cb9ec4a8d8bc159285e0d0f07bad46edf20aa469a89d0d2a586ea" "b571f92c9bfaf4a28cb64ae4b4cdbda95241cd62cf07d942be44dc8f46c491f4" default)))
 '(package-selected-packages
   (quote
    (ample-zen-theme projectile sudo-edit rust-mode ensime auctex org-bullets magit elpy company-mode ample-theme haskell-mode multiple-cursors rainbow-delimiters smartparens use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;;Completion
(ido-mode t)
(use-package flx-ido
  :ensure t)
(require 'flx-ido)
(ido-mode 1)
(ido-everywhere 1)
(flx-ido-mode 1)
;; disable ido faces to see flx highlights.
(setq ido-enable-flex-matching t)
(setq ido-use-faces nil)
;;Theme
(Use-package ample-theme
  :init
  (load-theme 'ample)
  :ensure t)
;;Projectile
(use-package projectile
  :ensure t )
;;Parens
(setq show-paren-delay 0)
(show-paren-mode 1)

(electric-pair-mode 1)

(use-package rainbow-delimiters
  :ensure t
  :init
  (add-hook 'prog-mode-hook #'rainbow-delimiters-mode))

;;Multiple Cursors
(use-package multiple-cursors
  :ensure t
  :bind (("C-S-c C-S-c" . mc/edit-lines)
         ("C->" . mc/mark-next-like-this)
         ("C-<" . mc/mark-previous-like-this)
         ("C-c C-<" . mc/add-cursor-on-click)))

;;Company 
(use-package company-mode
  :ensure t
  :init(add-hook 'after-init-hook 'global-company-mode)
  )

;;Backup files
(setq backup-directory-alist '(("" . "~/.emacs.d/emacs-backup")))
;;Org Bullet
(use-package org-bullets
  :ensure t
  :init (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
  )
;;Magit
(use-package magit
  :ensure t
  :bind (("C-x g" . magit-status)
         ("C-x M-g" . magit-dispatch-popup))
  )
;;Sudo Edit
(use-package sudo-edit
  :ensure t)
;;Language
;;Haskell
(use-package haskell-mode
  :ensure t)
;;Python
(use-package elpy
  :ensure t
  :init(elpy-enable))
;;Scala
(use-package ensime
  :ensure t
  :pin melpa-stable)
;;Rust
(use-package rust-mode
  :ensure t)










