(import (scheme)
	(cairo cairo))

(define M-PI 3.1415926)


(define (draw-arc cr)
  (let* ((xc 128.0)
	 (yc 128.0)
	 (radius 100.0)
	 (angle1 (* 45.0 (/ M-PI 180.0)))
	 (angle2 (* 180.0 (/ M-PI 180.0))))
    (begin
      (cairo-set-line-width cr 10.0)
      (cairo-arc cr xc yc radius angle1 angle2)
      (cairo-stroke cr)

    ;; draw helping lines
      (cairo-set-source-rgba cr 1.0 0.2 0.2 0.6)
      (cairo-set-line-width cr 6.0)
      
      (cairo-arc cr xc yc 10.0 0.0 (* 2 M-PI))
      (cairo-fill cr)

      (cairo-arc cr xc yc radius angle1 angle1)
      (cairo-line-to cr xc yc)

      (cairo-arc cr xc yc radius angle2 angle2)
      (cairo-line-to cr xc yc)
      
      (cairo-stroke cr))))

(define (draw-arc-negative cr)
  (let* ((xc 128.0)
	 (yc 128.0)
	 (radius 100.0)
	 (angle1 (* 45.0 (/ M-PI 180.0)))
	 (angle2 (* 180.0 (/ M-PI 180.0))))
    (begin
      (cairo-set-line-width cr 10.0)
      (cairo-arc-negative cr xc yc radius angle1 angle2)
      (cairo-stroke cr)

    ;; draw helping lines
      (cairo-set-source-rgba cr 1.0 0.2 0.2 0.6)
      (cairo-set-line-width cr 6.0)
      
      (cairo-arc cr xc yc 10.0 0.0 (* 2 M-PI))
      (cairo-fill cr)

      (cairo-arc cr xc yc radius angle1 angle1)
      (cairo-line-to cr xc yc)

      (cairo-arc cr xc yc radius angle2 angle2)
      (cairo-line-to cr xc yc)
      
      (cairo-stroke cr))))

(define (draw-clip cr)
  (cairo-arc cr 128.0 128.0 76.8 0.0 (* 2.0 M-PI))
  (cairo-clip cr)
  (cairo-new-path cr)
  (cairo-rectangle cr 0.0 0.0 256.0 256.0)
  (cairo-fill cr)
  (cairo-set-source-rgb cr 0.0 1.0 0.0)
  (cairo-move-to cr 0.0 0.0)
  (cairo-line-to cr 256.0 256.0)
  (cairo-move-to cr 256.0 0.0)
  (cairo-line-to cr 0.0 256.0)
  (cairo-set-line-width cr 10.0)
  (cairo-stroke cr)
  )


(define (make-image-surface width height stride)
  (let ((image (foreign-alloc (* width height stride))))
    (cairo-image-surface-create-for-data image CAIRO-FORMAT-ARGB32 width height stride)))

(define (with-cairo-context fname draw width height)
  (let* ((surface (cairo-image-surface-create CAIRO-FORMAT-ARGB32 width height))
	 (cr (cairo-create surface)))
    (draw cr)
    (cairo-surface-write-to-png surface fname)
    (cairo-destroy cr)
    (cairo-surface-destroy surface)))

(with-cairo-context "arc.png" draw-arc 256 256)
(with-cairo-context "arc-negative.png" draw-arc-negative 256 256)
(with-cairo-context "clip.png" draw-clip 256 256)
     
