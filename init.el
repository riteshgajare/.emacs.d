;; Most of the work is borrowed from Ryan McGreary prior work
;; You can clone his work at https://github.com/rmm5t/dotfiles

(setq custom-file "~/.emacs.d/personal/custom.el")
(load custom-file 'noerror)

(load "~/.emacs.d/personal/defuns")

(personal 'bindings)
(personal 'c)
(personal 'diff)
(personal 'dired)
(personal 'disabled)
(personal 'flymake)
(personal 'fonts)
(personal 'global)
(personal 'grep)
(personal 'javascript)
(personal 'mac)
(personal 'magit)
(personal 'org)
(personal 'private)
(personal 'recentf)
(personal 'rectangle)
(personal 'saveplace)
;(personal 'scratch) ;; Not used by me
(personal 'server-mode)
(personal 'shell-mode)
(personal 'tabs)
(personal 'theme)
(personal 'zoom)
(personal 'utf-8)
;(personal 'irony) ;;unused


;; Showing the line numbers for all files
(global-linum-mode t)
;; submodule managed
;; ------------------
(add-to-list 'load-path "~/.emacs.d/vendor/")

(vendor 'feature-mode)
(vendor 'filladapt)
(vendor 'jekyll)
;; (vendor 'key-chord)     ;; unused
(vendor 'mode-line-bell)
(vendor 'rcodetools    'xmp)
(vendor 'insert-time   'insert-time 'insert-date 'insert-date-time 'insert-personal-time-stamp)
(vendor 'electric-align 'electric-align-mode)
(add-hook 'prog-mode-hook 'electric-align-mode)

;; elpa managed
;; ------------------
(require 'package)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")
                         ("melpa" . "http://melpa.org/packages/")))
(package-initialize)
(when (not package-archive-contents) (package-refresh-contents))

(package 'ag)
(package 'browse-kill-ring+)
(package 'csv-mode)
(package 'dired-details+)
(package 'dropdown-list)
(package 'expand-region)
(package 'nlinum)
(package 'exec-path-from-shell)
(package 'feature-mode)
(package 'flx-ido)
(package 'flx-isearch)
(package 'haml-mode)
(package 'htmlize)
;(package 'js2-mode)
;(package 'irony)
(package 'lua-mode)
(package 'magit)
(package 'magit-gh-pulls)
(package 'markdown-mode)
(package 'maxframe)
(package 'motion-mode)
(package 'multiple-cursors)
(package 'powerline)
(package 'projectile)
(package 'sass-mode)
(package 'shell-pop)
(package 'toggle-quotes)
(package 'textile-mode)
(package 'yaml-mode)
(package 'yasnippet)
(package 'auto-complete)
(package 'auto-complete-c-headers)
(personal 'auto-complete-c++)
(personal 'yasnippet)
