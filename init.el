(require 'package)

(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/") t)

(package-initialize)
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; zenburn color theme
;; reference: https://github.com/bbatsov/zenburn-emacs
(use-package zenburn-theme
  :ensure t
  :config
  (load-theme 'zenburn t))

(setq zenburn-use-variable-pitch t)
(setq zenburn-scale-org-headlines t)
(setq zenburn-scale-outline-headlines t)

;; changing font
(set-face-attribute 'default nil :font "DejaVu Sans Mono")

;; disabling menu-bar, tool-bar and scroll-bar
;; reference: http://kb.mit.edu/confluence/display/istcontrib/Disabling+the+Emacs+menubar%2C+toolbar%2C+or+scrollbar
(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)

;; disabling startup welcome screen
(setq inhibit-startup-screen t)

;; displaying line number in relative mode
;; reference: https://stackoverflow.com/a/54392862/22342267
(global-display-line-numbers-mode 1)
(setq display-line-numbers-type 'relative)

;; mouse scroll speed reduction
;; reference: https://stackoverflow.com/a/26053341/22342267
(setq mouse-wheel-scroll-amount '(0.07))
(setq mouse-wheel-progressive-speed nil)
(setq ring-bell-function 'ignore)

;; syntax highlighting
(setq font-lock-maximum-decoration t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(zenburn-theme use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(setq indo-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

(setq resize-mini-windows  t)

