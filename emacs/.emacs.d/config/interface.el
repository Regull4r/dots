;;Kill toolbars
(tooltip-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

;;Position info
(global-linum-mode 1)
(column-number-mode t)

;;Paren info
(setq show-paren-delay 0)
(show-paren-mode 1)

;;Colored ()
(use-package rainbow-delimiters
  :ensure t
  :init
  (add-hook 'prog-mode-hook #'rainbow-delimiters-mode))

;;Theme
(use-package ample-zen-theme
  :ensure t
  :config (load-theme 'ample-zen t))

;;Org Bullets
(use-package org-bullets
  :ensure t
  :init (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))))