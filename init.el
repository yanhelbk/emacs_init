(setq frame-title-format "emacs")

(menu-bar-mode -1)

(tool-bar-mode -1)

(scroll-bar-mode -1)

(set-default 'cursor-type 'hbar)

(ido-mode)

(column-number-mode)

(show-paren-mode)

(column-number-mode)

(winner-mode t)

(windmove-default-keybindings)

(setq x-select-enable-clipboard t)

(setq x-select-enable-primary t)

(require 'package)

(add-to-list 'package-archives
	     '("melpa" . "http://stable.melpa.org/packages/") t)

(package-initialize)

(nlinum-mode)

(load-theme 'monokai t)

(global-set-key (kbd "M-x") 'smex)

(global-set-key (kbd "C-c j") 'ace-jump-mode)

(global-set-key (kbd "C-c m") 'set-mark-command)

(setq tramp-default-method "ssh")

(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'c-mode-hook 'irony-mode)
(add-hook 'objc-mode-hook 'irony-mode)

(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)

(eval-after-load 'company
  '(add-to-list 'company-backends 'company-irony))

(add-hook 'c++-mode-hook 'company-mode)
(add-hook 'c-mode-hook 'company-mode)
(add-hook 'objc-mode-hook 'company-mode)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("5f27195e3f4b85ac50c1e2fac080f0dd6535440891c54fcfa62cdcefedf56b1b" default)))
 '(package-selected-packages
   (quote
    (rtags magit company-irony tramp-theme smex nlinum monokai-theme irony ace-jump-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
