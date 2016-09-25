;; Following are the binding that are customized. Please read throught the comments to understand what it really do.

(global-set-key [(f2)]              'helm-do-grep-ag)
(global-set-key [(meta f2)]         'helm-do-ag)
(global-set-key [(shift f2)]        'occur)
(global-set-key [(control meta f2)] 'ag-dired-regexp)

;; Code commenting
;; Keyboard macros
(global-set-key [(shift f4)] 'kmacro-start-macro-or-insert-counter)

;; Query Replace
(global-set-key [(f6)]         'query-replace)
(global-set-key [(control f6)] 'query-replace-regexp)


;; Indenting and alignment
(global-set-key [(f8)]         'indent-region)
(global-set-key [(control f8)] 'align)
(global-set-key [(shift f8)]   'align-current)
(global-set-key [(meta f8)]    'align-regexp)

;; Version control and change related
(global-set-key [(control f9)] 'magit-status)
(global-set-key [(f9)]         'magit-status)

(add-hook 'dired-mode-hook (lambda () (define-key dired-mode-map (kbd "M-o") 'other-window))) ; was dired-omit-mode
;; Replace ibuffer's M-o
(add-hook 'ibuffer-mode-hook (lambda () (define-key ibuffer-mode-map (kbd "M-o") 'other-window))) ;

(global-set-key (kbd "M-a") 'mark-whole-buffer) ; was backward-sentence.

;; Find matching parens
(global-set-key (kbd "C-'") 'match-paren)

(global-set-key (kbd "C-c C-c RET") 'comment-region)
(global-set-key (kbd "C-c C-u") 'uncomment-region)

;; Easy inserts
(global-set-key (kbd "C-.") 'insert-arrow)

;; Repeat
(global-set-key [(control z)] 'repeat) ; was suspend-frame

;; ibuffer > list-buffers
(global-set-key (kbd "C-x C-b") 'ibuffer)

(global-set-key (kbd "C-c f") 'textmate-goto-file)
(global-set-key [(control return)] 'textmate-next-line)

;(global-unset-key (kbd "C-t"))

(global-set-key (kbd "<f5>") (lambda () (interactive) (call-interactively 'compile)))
;Mouse binding
;; (defun go-click (button)
;;    (print (button-get button 'point))
;;    (let ((win (get-buffer-window (button-get button 'buffer)))
;;          (cur-win (get-buffer-window (current-buffer))))
;;      (select-window cur-win)
;;      (if win
;;          (progn
;;            (select-window win)
;;            (goto-char (button-get button 'point)))
;;          (message "open a window with the location"))))

;; Enable mouse support
(setq x-select-enable-clipboard t)

;; (unless window-system
;;    (require 'mouse)
;;     (xterm-mouse-mode t))
;;  ;;    (setq mouse-sel-mode t))
