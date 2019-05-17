(library (cairo cairo)
	 (export cairo-version
		 cairo-version-string
		 cairo-image-surface-create-for-data
		 cairo-create
		 cairo-rectangle
		 cairo-set-source-rgb
		 cairo-set-source-rgba
		 cairo-fill
		 cairo-fill-preserve
		 cairo-surface-write-to-png
		 cairo-destroy
		 cairo-surface-destroy
		 cairo-save
		 cairo-restore
		 cairo-translate
		 cairo-scale
		 cairo-move-to
		 cairo-rel-line-to
		 cairo-rotate
		 cairo-close-path
		 cairo-set-fill-rule

		 ;; contants
		 CAIRO-FORMAT-INVALID
		 CAIRO-FORMAT-ARGB32
		 CAIRO-FORMAT-RGB24
		 CAIRO-FORMAT-A8
		 CAIRO-FORMAT-A1
		 CAIRO-FORMAT-RGB16_565
		 CAIRO-FORMAT-RGB30


		 CAIRO-FILL-RULE-WINDING
		 CAIRO-FILL-RULE-EVEN-ODD)
	 (import (utils)
		 (chezscheme))
	 
	 (define libcairo (load-shared-object "libcairo.so"))


	 ;;typedef enum _cairo_format {
	 ;;    CAIRO_FORMAT_INVALID   = -1,
	 ;;    CAIRO_FORMAT_ARGB32    = 0,
	 ;;    CAIRO_FORMAT_RGB24     = 1,
	 ;;    CAIRO_FORMAT_A8        = 2,
	 ;;    CAIRO_FORMAT_A1        = 3,
	 ;;    CAIRO_FORMAT_RGB16_565 = 4,
	 ;;    CAIRO_FORMAT_RGB30     = 5
	 ;;} cairo_format_t;
	 ;; (define cairo-format-t int)
	 (define CAIRO-FORMAT-INVALID   -1)
	 (define CAIRO-FORMAT-ARGB32     0)
	 (define CAIRO-FORMAT-RGB24      1)
	 (define CAIRO-FORMAT-A8         2)
	 (define CAIRO-FORMAT-A1         3)
	 (define CAIRO-FORMAT-RGB16_565  4)
	 (define CAIRO-FORMAT-RGB30      5)

	 ;; typedef enum _cairo_fill_rule {
	 ;;     CAIRO_FILL_RULE_WINDING,
	 ;;     CAIRO_FILL_RULE_EVEN_ODD
	 ;; } cairo_fill_rule_t
	 (define CAIRO-FILL-RULE-WINDING  0)
	 (define CAIRO-FILL-RULE-EVEN-ODD 1)

	 ;; cairo_public int
	 ;; cairo_version (void);
	 (define-c-function cairo_version () int)

	 
	 ;; cairo_public const char*
	 ;; cairo_version_string (void);
	 (define-c-function cairo_version_string () string)

	 ;; cairo_public cairo_surface_t *
	 ;; cairo_image_surface_create_for_data (unsigned char             *data,
         ;;                            cairo_format_t             format,
         ;;                            int                        width,
         ;;                            int                        height,
         ;;                            int                        stride);
	 (define-c-function cairo_image_surface_create_for_data (uptr int int int int) uptr)
	 ;; cairo_public cairo_t *
	 ;; cairo_create (cairo_surface_t *target);
	 (define-c-function cairo_create (uptr) uptr)

	 ;; cairo_public void
	 ;; cairo_rectangle (cairo_t *cr,
         ;;         double x, double y,
         ;;         double width, double height);
	 (define-c-function cairo_rectangle (uptr double double double double) void)

	 ;; cairo_public void
	 ;; cairo_set_source_rgb (cairo_t *cr, double red, double green, double blue);
	 (define-c-function cairo_set_source_rgb (uptr double double double) void)

	 ;; cairo_public void
	 ;; cairo_set_source_rgba (cairo_t *cr,
         ;;              double red, double green, double blue,
         ;;              double alpha);
	 (define-c-function cairo_set_source_rgba (uptr double double double double) void)
	 
	 ;; cairo_public void
	 ;; cairo_fill (cairo_t *cr);
	 (define-c-function cairo_fill (uptr) void)

	 ;; cairo_public void
	 ;; cairo_fill_preserve (cairo_t *cr);
	 (define-c-function cairo_fill_preserve (uptr) void)

	 ;; cairo_public cairo_status_t
	 ;; cairo_surface_write_to_png (cairo_surface_t     *surface,
	 ;;                            const char          *filename);
	 (define-c-function cairo_surface_write_to_png (uptr string) int)

	 ;; cairo_public void
	 ;; cairo_destroy (cairo_t *cr);
	 (define-c-function cairo_destroy (uptr) void)

	 ;; cairo_public void
	 ;; cairo_surface_destroy (cairo_surface_t *surface);
	 (define-c-function cairo_surface_destroy (uptr) void)

	 ;; cairo_public void
	 ;; cairo_save (cairo_t *cr);
	 (define-c-function cairo_save (uptr) void)

	 ;; cairo_public void
	 ;; cairo_restore (cairo_t *cr);
	 (define-c-function cairo_restore (uptr) void)

	 ;; cairo_public void
	 ;; cairo_translate (cairo_t *cr, double tx, double ty);
	 (define-c-function cairo_translate (uptr double double) void)

	 ;; cairo_public void
	 ;; cairo_scale (cairo_t *cr, double sx, double sy);	 
	 (define-c-function cairo_scale (uptr double double) void)

	 ;; cairo_public void
	 ;; cairo_move_to (cairo_t *cr, double x, double y);	 
	 (define-c-function cairo_move_to (uptr double double) void)

	 ;; cairo_public void
	 ;; cairo_rel_line_to (cairo_t *cr, double dx, double dy);	 
	 (define-c-function cairo_rel_line_to (uptr double double) void)

	 
	 ;; cairo_public void
	 ;; cairo_rotate (cairo_t *cr, double angle);
	 (define-c-function cairo_rotate (uptr double) void)
	 
	 ;; cairo_public void
	 ;; cairo_close_path (cairo_t *cr);
	 (define-c-function cairo_close_path (uptr) void)

	 ;; cairo_public void
	 ;; cairo_set_fill_rule (cairo_t *cr, cairo_fill_rule_t fill_rule);
	 (define-c-function cairo_set_fill_rule (uptr int) void)
	 )
