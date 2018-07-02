#lang br/quicklang

; setup read-syntax function with 2 arguments
(define (read-syntax path port)
  (define src-lines (port->lines port))
  (datum->syntax #f '(module lucy br
                 42)))

; export read-syntax function
(provide read-syntax)
