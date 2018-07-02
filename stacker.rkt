#lang br/quicklang

; setup read-syntax function with 2 arguments
(define (read-syntax path port)
  (define src-lines (port->lines port)) ; convert port contents to a list of strings
  (define src-datums (format-datums '(handle ~a) src-lines))
  (define module-datum `(module stacker-mod "stacker.rkt"
                          ,@src-datums))
  (datum->syntax #f module-datum))

; export read-syntax function
(provide read-syntax)
