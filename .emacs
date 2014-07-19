(require 'package)
(package-initialize)
 (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(require 'project-explorer)
(setq-default pe/width 28)  

(iswitchb-mode 1)
(add-hook 'c-mode-common-hook '(lambda ()
      (local-set-key (kbd "RET") 'newline-and-indent)))
(add-hook 'python-mode-hook '(lambda () (define-key python-mode-map "\C-m" 'newline-and-indent)))

(electric-pair-mode 1)
(electric-indent-mode +1)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("5cbfbbc76f64d4035c2d1647f2fac8d89080e3d9f9d0f3b57a1ac886d246276e" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(global-linum-mode t)
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'ujelly t)
