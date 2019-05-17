(library (utils)
	(export
	 define-c-function
	 define-c-constant)

	(import
	 (scheme))

	(define-syntax define-c-function
	  (lambda (x)
	    (define gen-id
	      (lambda (k value)
		(datum->syntax k (string->symbol
				  ((lambda (x)
				     (list->string (map (lambda (c)
							  (if (char=? c #\_)
							      #\-
							      c))
							(string->list x))))
				   (let ((v (syntax->datum value)))
				     (if (string? v)
					 v
					 (symbol->string v))))))))
	    (syntax-case x ()
	      ((k cname (parameter-types ...) result-type)
	       (with-syntax ((name (gen-id #'k #'cname)))
			    #'(define
				name
				(foreign-procedure
				 (if (string? 'cname)
				     'cname
				     (symbol->string 'cname))
				 (parameter-types ...)
				 result-type)))))))

	(define-syntax define-c-constant
	  (syntax-rules ()
	    ((_ (name value) ...)
	     (begin (define name value) ...)))))
