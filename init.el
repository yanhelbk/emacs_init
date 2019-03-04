;;package init setting
(require 'package)

(add-to-list 'package-archives
	     '("melpa-stable" . "http://stable.melpa.org/packages/") t)

(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/") t)

(package-initialize)


;;appearance
(setq frame-title-format "emacs")
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(set-default 'cursor-type 'hbar)
(column-number-mode)
(show-paren-mode)
(column-number-mode)
(load-theme 'monokai t)

;;window 
(windmove-default-keybindings)
(winner-mode t)

;;cutting and pasting 
(setq x-select-enable-clipboard t)
(setq x-select-enable-primary t)

;;ido mode
(ido-mode)

;;smex
(global-set-key (kbd "M-x") 'smex)

;;ace jump
(global-set-key (kbd "C-c j") 'ace-jump-mode)

;;customize mark cmd
(global-set-key (kbd "C-c m") 'set-mark-command)

;;tramp
(setq tramp-default-method "ssh")

;;company
(add-hook 'c++-mode-hook 'global-company-mode)
(add-hook 'c-mode-hook 'global-company-mode)

(require 'company-lsp)
(push 'company-lsp company-backends)

;;lsp
(require 'lsp-mode)
(add-hook 'c++-mode-hook 'lsp)
(add-hook 'c-mode-hook 'lsp)

	  
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
    (company-lsp lsp-clangd lsp-mode dash cquery rtags magit company-irony tramp-theme smex nlinum monokai-theme irony ace-jump-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

