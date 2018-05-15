;;Rust
(use-package rust-mode
  :ensure t
  :config
  (define-key rust-mode-map (kbd "TAB") #'company-indent-or-complete-common)
  (setq company-tooltip-align-annotations t))

(use-package racer
  :ensure t
  :config
  (add-hook 'rust-mode-hook #'racer-mode)
  (add-hook 'racer-mode-hook #'eldoc-mode)
  (add-hook 'racer-mode-hook #'company-mode))

;;Python
(use-package elpy
  :ensure t
  :config(elpy-enable))

;;Java
(use-package meghanada
  :ensure t
  :config
  (add-hook 'java-mode-hook
	    (lambda ()
	      ;; meghanada-mode on
	      (meghanada-mode t)
	      (flycheck-mode +1)
	      (setq c-basic-offset 4))))


;;;;Prolog
;;(autoload 'run-prolog "prolog" "Start a Prolog sub-process." t)
;;(autoload 'prolog-mode "prolog" "Major mode for editing Prolog programs." t)
;;(autoload 'mercury-mode "prolog" "Major mode for editing Mercury programs." t)
;;(setq prolog-system 'swi)
;;(setq auto-mode-alist (append '(("\\.pl$" . prolog-mode)
;;                                ("\\.m$" . mercury-mode))
;;			      auto-mode-alist))
;;
;;(use-package ediprolog
;;  :ensure t)
