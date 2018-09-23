;;Insert ( by pairs
(electric-pair-mode 1)

;; Multiple cursors
(use-package multiple-cursors
  :ensure t
  :bind(("C-S-c C-S-c" . mc/edit-lines)
	("C->" . mc/mark-next-like-this)
	("C-<" . mc/mark-previous-like-this)
	("C-c C-<" . mc/add-cursor-on-click)))

;;Aggresive indent
(use-package aggressive-indent
  :ensure t
  :init
  (global-aggressive-indent-mode 1)
  ;;(add-to-list 'aggressive-indent-excluded-modes 'html-mode)
  )

;;Completion
(use-package company
  :ensure t
  :init
  (add-hook 'after-init-hook 'global-company-mode))

;;Flycheck
(use-package flycheck
  :ensure t)
