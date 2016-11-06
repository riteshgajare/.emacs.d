(add-to-list 'auto-mode-alist '("ino$" . c-mode))
(setq
 ;; use gdb-many-windows by default
 gdb-many-windows t
 ;; Non-nil means display source file containing the main routine at startup
 gdb-show-main t
 )

;;(add-to-list 'auto-mode-alist '("Makefile" . whitespace-mode)
;(add-to-list 'load-path "/path/to/flycheck-clangcheck") ;; if you installed manually

;;(require 'fic-mode)
(add-hook 'c++-mode-hook 'turn-on-fic-mode)
(add-hook 'c-mode-hook 'turn-on-fic-mode)

;; Compilation output
(setq compilation-scroll-output t)
