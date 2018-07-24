(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   '("melpa" . "http://melpa.org/packages/") t)
  (add-to-list
   'package-archives
   '("melpa-stable" . "http://melpa-stable.milkbox.net/packages/") t)
  (package-initialize))


(add-to-list 'load-path "~/.emacs.d/config")
(load-library "interface") 
(load-library "programming")
(load-library "languagues")

;;General settings

;;IDO mode
(ido-mode 1)
(ido-everywhere 1)

(use-package ido-completing-read+
  :ensure t
  :init
  (ido-ubiquitous-mode 1))
(use-package ido-vertical-mode
  :ensure t
  :init
  (ido-vertical-mode 1)
  (setq ido-vertical-define-keys 'C-n-and-C-p-only))

;;Smex
(use-package smex
  :ensure t
  :init
  (smex-initialize) ; Can be omitted. This might cause a (minimal) delay
					; when Smex is auto-initialized on its first run.
  (global-set-key (kbd "M-x") 'smex)
  (global-set-key (kbd "M-X") 'smex-major-mode-commands)
  ;; This is your old M-x.
  (global-set-key (kbd "C-c C-c M-x") 'execute-extended-command))


;;Magit
;;Magit
(use-package magit
  :ensure t
  :bind (("C-x g" . magit-status)
         ("C-x M-g" . magit-dispatch-popup)))

;;Save ~files elsewhere
(setq backup-directory-alist '(("" . "~/.emacs.d/emacs-backup")))















(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("a24c5b3c12d147da6cef80938dca1223b7c7f70f2f382b26308eba014dc4833a" "876fe28b6263ef36feeff1fa10db90a08ed899d1c6505b1d040d556db8ed0d2d" "c968804189e0fc963c641f5c9ad64bca431d41af2fb7e1d01a2a6666376f819c" "6daa09c8c2c68de3ff1b83694115231faa7e650fdbb668bc76275f0f2ce2a437" "6de7c03d614033c0403657409313d5f01202361e35490a3404e33e46663c2596" "1db337246ebc9c083be0d728f8d20913a0f46edc0a00277746ba411c149d7fe5" "ed317c0a3387be628a48c4bbdb316b4fa645a414838149069210b66dd521733f" "938d8c186c4cb9ec4a8d8bc159285e0d0f07bad46edf20aa469a89d0d2a586ea" "9be1d34d961a40d94ef94d0d08a364c3d27201f3c98c9d38e36f10588469ea57" "fee4e306d9070a55dce4d8e9d92d28bd9efe92625d2ba9d4d654fc9cd8113b7f" "82fce2cada016f736dbcef237780516063a17c2436d1ee7f42e395e38a15793b" "858a353233c58b69dbe3a06087fc08905df2d8755a0921ad4c407865f17ab52f" default)))
 '(fci-rule-color "#2e2e2e")
 '(package-selected-packages
   (quote
    (nimbus-theme yaml-mode tldr ediprolog clang-format base16-theme gruvbox-theme aggressive-indent use-package sudo-edit smartparens rust-mode rainbow-delimiters projectile org-bullets multiple-cursors magit haskell-mode flx-ido ensime elpy diminish cyberpunk-theme auctex ample-zen-theme ample-theme)))
 '(vc-annotate-background "#3b3b3b")
 '(vc-annotate-color-map
   (quote
    ((20 . "#dd5542")
     (40 . "#CC5542")
     (60 . "#fb8512")
     (80 . "#baba36")
     (100 . "#bdbc61")
     (120 . "#7d7c61")
     (140 . "#6abd50")
     (160 . "#6aaf50")
     (180 . "#6aa350")
     (200 . "#6a9550")
     (220 . "#6a8550")
     (240 . "#6a7550")
     (260 . "#9b55c3")
     (280 . "#6CA0A3")
     (300 . "#528fd1")
     (320 . "#5180b3")
     (340 . "#6380b3")
     (360 . "#DC8CC3"))))
 '(vc-annotate-very-old-color "#DC8CC3"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
					;Ciao
(if (file-exists-p "~/.ciaoroot/master/ciao_emacs/elisp/ciao-site-file.el")
    (load-file "~/.ciaoroot/master/ciao_emacs/elisp/ciao-site-file.el")) 
