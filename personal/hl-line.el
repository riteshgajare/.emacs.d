;;; Highlight current line

(global-hl-line-mode 1)

(add-hook 'c-mode-common-hook
	  (lambda ()
	    (font-lock-add-keywords nil '(("\\<\\(FIXME\\|TODO\\|BUG\\):" 1 font-lock-warning-face t)))))

(add-hook 'js2-mode-hook
	  (lambda()
	    (font-lock-add-keywords nil
				    '(("\\<\\(FIXME\\|TODO\\|XXX+\\|BUG\\):"
				       1 font-lock-warning-face prepend)))))

;;(set-face-underline 'font-lock-warning-face "yellow")
;; Great for black background
;;(set-face-background 'hl-line "black")

;; Other background colors
;; (set-face-background 'hl-line "#181800")
;;(set-face-background 'hl-line "lemon chiffon")
;; (set-face-background 'hl-line "#220")
;; (set-face-background 'hl-line "#110")
;; (set-face-background 'hl-line "#222")
;; (set-face-background 'hl-line "#111")

;; Other foreground colors
;; (set-face-foreground 'hl-line "white")
;; (set-face-foreground 'hl-line nil)
