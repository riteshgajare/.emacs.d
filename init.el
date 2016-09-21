;; Most of the work is borrowed from Ryan McGreary prior work
;; You can clone his work at https://github.com/rmm5t/dotfiles

(setq custom-file "~/.emacs.d/personal/custom.el")
(load custom-file 'noerror)
(if (< emacs-major-version 24) (progn (load "~/.emacs.d/package.el")))
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
;;(personal 'hl-line)
(personal 'javascript)
(personal 'org)
(personal 'paren-mode)
(personal 'recentf)
(personal 'rectangle)
(personal 'saveplace)
;(personal 'scratch) ;; Not used by me
(personal 'server-mode)
(personal 'shell-mode)
(personal 'shell-pop)
(personal 'tabs)
(personal 'zoom)
(personal 'utf-8)
;(personal 'irony) ;;unused
(message "Personal *.el loaded succesfully...")
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
(package 'flx-ido)
;(package 'js2-mode)
;(package 'irony)

(package 'maxframe)
(package 'motion-mode)
(package 'multiple-cursors)
(package 'textile-mode)
(package 'toggle-quotes)
(package 'yasnippet)
(package 'auto-complete)
(package 'auto-complete-c-headers)
(personal 'auto-complete-c++)
(personal 'yasnippet)


(if (>= emacs-major-version 24)
    (progn
      ;; Do something for Emacs 24 or later
      (personal 'theme)
      (package 'lua-mode)
      (package 'flx-isearch)
      (package 'haml-mode)
      (package 'htmlize)
      (package 'markdown-mode)
      (personal 'magit)
      (package 'magit)
      (package 'magit-gh-pulls)
      (package 'sass-mode)
      (package 'smartparens)
      (personal 'smartparens)
      (package 'yaml-mode)
      (package 'powerline)
      (package 'projectile)
      (package 'shell-pop)
      )
  ;; Do something else for Emacs 23 or less
  )

(cond
 ((eq system-type 'windows-nt)
  ;; Do something on Windows NT
  )
 ((eq system-type 'darwind)
  ;; Do something on MAC OS
  (personal 'mac)
  )
 ((eq system-type 'gnu/linux)
  ;; Do something on GNU/Linux
  ))

;;Showing the line numbers for all files
(global-linum-mode t)
;;submodule managed
;;------------------
(add-to-list 'load-path "~/.emacs.d/vendor/")
(vendor 'llvm-mode)
;; To add copy-paste feature in Macs
(vendor 'simpleclip 'simpleclip-mode)
(vendor 'filladapt)
;; (vendor 'key-chord)     ;; unused
(vendor 'mode-line-bell)
(vendor 'insert-time   'insert-time 'insert-date 'insert-date-time 'insert-personal-time-stamp)
(vendor 'electric-align 'electric-align-mode)
(add-hook 'prog-mode-hook 'electric-align-mode)
