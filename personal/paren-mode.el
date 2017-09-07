(defadvice show-paren-function
    (after show-matching-paren-offscreen activate)
     (interactive)
     (let* ((cb (char-before (point)))
            (matching-text (and cb
                                (char-equal (char-syntax cb) ?\) )
                                (blink-matching-open)))))
)
