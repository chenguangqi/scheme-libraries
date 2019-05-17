(import (scheme)
	(cairo cairo))

(define WIDTH 600)
(define HEIGHT 275)
(define STRIDE (* WIDTH 4))


(define (star-path cr)
  (cairo-move-to cr 0.0 0.0)
  (do ((i 0 (+ i 1))
       (theta (/ (* 4 3.1415926) 5.0)))
      ((not (< i 4)))
    (cairo-rel-line-to cr 1.0 0.0)
    (cairo-rotate cr theta))
  (cairo-close-path cr))


(define (draw-stars cr width height)
  (cairo-set-source-rgb cr 0.0 0.0 0.0)
  (cairo-save cr)
  (cairo-translate cr 5.0 (/ height 2.6))
  (cairo-scale cr height height)
  (star-path cr)
  (cairo-set-fill-rule cr CAIRO-FILL-RULE-WINDING)
  (cairo-fill cr)
  (cairo-restore cr)

  (cairo-save cr)
  (cairo-translate cr (- width height 5) (/ height 2.6))
  (cairo-scale cr height height)
  (star-path cr)
  (cairo-set-fill-rule cr CAIRO-FILL-RULE-EVEN-ODD)
  (cairo-fill cr)
  (cairo-restore cr))
  

(define (main)
  (let* ((image (foreign-alloc (* STRIDE HEIGHT)))
	 (surface (cairo-image-surface-create-for-data image CAIRO-FORMAT-ARGB32 WIDTH HEIGHT STRIDE))
	 (cr (cairo-create surface)))

    (cairo-rectangle cr 0.0 0.0 (fixnum->flonum WIDTH) (fixnum->flonum HEIGHT))
    (cairo-set-source-rgb cr 1.0 1.0 1.0)
    (cairo-fill cr)

    (draw-stars cr (fixnum->flonum WIDTH) (fixnum->flonum HEIGHT))

    (cairo-surface-write-to-png surface "stars.png")
    (cairo-destroy cr)
    (cairo-surface-destroy surface)
    (foreign-free image)))

(main)
