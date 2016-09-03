(require 'auto-complete)
                                        ; do default config for auto-com
(require 'auto-complete-config)
(ac-config-default)
                                        ; start yasnippet with emacs
                                        ; let's define a function which initializes auto-complete-c-headers and gets called for c/c++ hooks
                                        ; Fix iedit bug in Mac
(defun my:ac-c-header-init ()
   (require 'auto-complete-c-headers)
    (add-to-list 'ac-sources 'ac-source-c-headers)
    (add-to-list 'achead:include-directories '"/Library/Developer/CommandLineTools/usr/bin/../lib/clang/7.3.0/include" ))
                                        ; now let's call this function from c/c++ hooks
(add-hook 'c++-mode-hook 'my:ac-c-header-init)
(add-hook 'c-mode-hook 'my:ac-c-header-init)


(define-key global-map (kbd "C-c ;") 'iedit-mode)

(semantic-mode 1)
; let's define a function which adds semantic as a suggestion backend to auto complete
; and hook this function to c-mode-common-hook
(defun my:add-semantic-to-autocomplete()
  (add-to-list 'ac-sources 'ac-source-semantic))

(add-hook 'c-mode-common-hook 'my:add-semantic-to-autocomplete)
(global-ede-mode 1)
; create a project for our program.
;;(ede-cpp-root-project "my project" :file "~/demos/my_program/src/main.cpp " :include-path '("/../my_inc"))
; you can use system-include-path for setting up the system header file locations.
; turn on automatic reparsing of open buffers in semantic
(global-semantic-idle-scheduler-mode 1)
