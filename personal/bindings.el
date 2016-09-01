;; Following are the binding that are customized. Please read throught the comments to understand what it really do.

(global-set-key [(f2)]              'ag-project-regexp)
(global-set-key [(meta f2)]         'ag-regexp)
(global-set-key [(shift f2)]        'occur)
(global-set-key [(control meta f2)] 'ag-dired-regexp)

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

;; Easy inserts
(global-set-key (kbd "C-.") 'insert-arrow)

;; Repeat
(global-set-key [(control z)] 'repeat) ; was suspend-frame

;; ibuffer > list-buffers
(global-set-key (kbd "C-x C-b") 'ibuffer)

(global-set-key (kbd "C-c f") 'textmate-goto-file)
(global-set-key [(control return)] 'textmate-next-line)

;(global-unset-key (kbd "C-t"))
