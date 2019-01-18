(load-theme 'wombat)

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

(global-set-key (kbd "<mouse-2>") 'x-clipboard-yank)

(require 'package)

(add-to-list 'package-archives
	     '("melpa" . "http://stable.melpa.org/packages/") t)

(package-initialize)

(nlinum-mode)

(global-set-key (kbd "M-x") 'smex)

(global-set-key (kbd "C-c j") 'ace-jump-mode)
