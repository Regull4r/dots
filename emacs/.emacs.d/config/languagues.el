;;Rust
(use-package rust-mode
  :ensure t)

(use-package racer
  :ensure t)

(add-hook 'rust-mode-hook #'racer-mode)
(add-hook 'racer-mode-hook #'eldoc-mode)

(add-hook 'racer-mode-hook #'company-mode)

(require 'rust-mode)
(define-key rust-mode-map (kbd "TAB") #'company-indent-or-complete-common)
(setq company-tooltip-align-annotations t)

;;Python
(use-package elpy
  :ensure t
  :config(elpy-enable))

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
