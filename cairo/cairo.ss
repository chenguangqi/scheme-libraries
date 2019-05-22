(library (cairo cairo)
  (export 
	  cairo-image-surface-create-for-data
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
	  cairo-line-to
	  cairo-rel-line-to

	  cairo-rotate
	  cairo-close-path
	  cairo-set-fill-rule

	  ;; export symbol of cairo
	  
	  ;; cairo_public int cairo_version (void);
	  cairo-version
	  ;; cairo_public const char* cairo_version_string (void);
	  cairo-version-string
	  ;; cairo_public cairo_t * cairo_create (cairo_surface_t *target);
	  cairo-create
	  ;; cairo_public cairo_t * cairo_reference (cairo_t *cr);
	  ;; cairo_public void cairo_destroy (cairo_t *cr);
	  ;; cairo_public unsigned int cairo_get_reference_count (cairo_t *cr);
	  ;; cairo_public void * cairo_get_user_data (cairo_t *cr, const cairo_user_data_key_t *key);
	  ;; cairo_public cairo_status_t cairo_set_user_data (cairo_t *cr, const cairo_user_data_key_t *key, void *user_data, cairo_destroy_func_t destroy);
	  ;; cairo_public void cairo_save (cairo_t *cr);
	  ;; cairo_public void cairo_restore (cairo_t *cr);
	  ;; cairo_public void cairo_push_group (cairo_t *cr);
	  ;; cairo_public void cairo_push_group_with_content (cairo_t *cr, cairo_content_t content);
	  ;; cairo_public cairo_pattern_t * cairo_pop_group (cairo_t *cr);
	  ;; cairo_public void cairo_pop_group_to_source (cairo_t *cr);
	  ;; cairo_public void cairo_set_operator (cairo_t *cr, cairo_operator_t op);
	  ;; cairo_public void cairo_set_source (cairo_t *cr, cairo_pattern_t *source);
	  ;; cairo_public void cairo_set_source_rgb (cairo_t *cr, double red, double green, double blue);
	  ;; cairo_public void cairo_set_source_rgba (cairo_t *cr, double red, double green, double blue, double alpha);
	  ;; cairo_public void cairo_set_source_surface (cairo_t *cr, cairo_surface_t *surface, double x, double y);
	  ;; cairo_public void cairo_set_tolerance (cairo_t *cr, double tolerance);
	  ;; cairo_public void cairo_set_antialias (cairo_t *cr, cairo_antialias_t antialias);
	  ;; cairo_public void cairo_set_fill_rule (cairo_t *cr, cairo_fill_rule_t fill_rule);
	  ;; cairo_public void cairo_set_line_width (cairo_t *cr, double width);
	  cairo-set-line-width
	  ;; cairo_public void cairo_set_line_cap (cairo_t *cr, cairo_line_cap_t line_cap);
	  ;; cairo_public void cairo_set_line_join (cairo_t *cr, cairo_line_join_t line_join);
	  ;; cairo_public void cairo_set_dash (cairo_t *cr, const double *dashes, int num_dashes, double offset);
	  ;; cairo_public void cairo_set_miter_limit (cairo_t *cr, double limit);
	  ;; cairo_public void cairo_translate (cairo_t *cr, double tx, double ty);
	  ;; cairo_public void cairo_scale (cairo_t *cr, double sx, double sy);
	  ;; cairo_public void cairo_rotate (cairo_t *cr, double angle);
	  ;; cairo_public void cairo_transform (cairo_t *cr, const cairo_matrix_t *matrix);
	  ;; cairo_public void cairo_set_matrix (cairo_t *cr, const cairo_matrix_t *matrix);
	  ;; cairo_public void cairo_identity_matrix (cairo_t *cr);
	  ;; cairo_public void cairo_user_to_device (cairo_t *cr, double *x, double *y);
	  ;; cairo_public void cairo_user_to_device_distance (cairo_t *cr, double *dx, double *dy);
	  ;; cairo_public void cairo_device_to_user (cairo_t *cr, double *x, double *y);
	  ;; cairo_public void cairo_device_to_user_distance (cairo_t *cr, double *dx, double *dy);
	  ;; cairo_public void cairo_new_path (cairo_t *cr);
	  cairo-new-path
	  ;; cairo_public void cairo_move_to (cairo_t *cr, double x, double y);
	  cairo-move-to
	  ;; cairo_public void cairo_new_sub_path (cairo_t *cr);
	  ;; cairo_public void cairo_line_to (cairo_t *cr, double x, double y);
	  ;; cairo_public void cairo_curve_to (cairo_t *cr, double x1, double y1, double x2, double y2, double x3, double y3);
	  ;; cairo_public void cairo_arc (cairo_t *cr, double xc, double yc, double radius, double angle1, double angle2);
	  cairo-arc
	  ;; cairo_public void cairo_arc_negative (cairo_t *cr, double xc, double yc, double radius, double angle1, double angle2);
	  cairo-arc-negative
	  ;; cairo_public void cairo_arc_to (cairo_t *cr, double x1, double y1, double x2, double y2, double radius);
	  ;; cairo_public void cairo_rel_move_to (cairo_t *cr, double dx, double dy);
	  ;; cairo_public void cairo_rel_line_to (cairo_t *cr, double dx, double dy);
	  ;; cairo_public void cairo_rel_curve_to (cairo_t *cr, double dx1, double dy1, double dx2, double dy2, double dx3, double dy3);
	  ;; cairo_public void cairo_rectangle (cairo_t *cr, double x, double y, double width, double height);
	  cairo-rectangle
	  ;; cairo_public void cairo_stroke_to_path (cairo_t *cr);
	  ;; cairo_public void cairo_close_path (cairo_t *cr);
	  ;; cairo_public void cairo_path_extents (cairo_t *cr, double *x1, double *y1, double *x2, double *y2);
	  ;; cairo_public void cairo_paint (cairo_t *cr);
	  ;; cairo_public void cairo_paint_with_alpha (cairo_t *cr, double alpha);
	  ;; cairo_public void cairo_mask (cairo_t *cr, cairo_pattern_t *pattern);
	  ;; cairo_public void cairo_mask_surface (cairo_t *cr, cairo_surface_t *surface, double surface_x, double surface_y);
	  ;; cairo_public void cairo_stroke (cairo_t *cr);
	  cairo-stroke
	  ;; cairo_public void cairo_stroke_preserve (cairo_t *cr);
	  ;; cairo_public void cairo_fill (cairo_t *cr);
	  ;; cairo_public void cairo_fill_preserve (cairo_t *cr);
	  ;; cairo_public void cairo_copy_page (cairo_t *cr);
	  ;; cairo_public void cairo_show_page (cairo_t *cr);
	  ;; cairo_public cairo_bool_t cairo_in_stroke (cairo_t *cr, double x, double y);
	  ;; cairo_public cairo_bool_t cairo_in_fill (cairo_t *cr, double x, double y);
	  ;; cairo_public cairo_bool_t cairo_in_clip (cairo_t *cr, double x, double y);
	  ;; cairo_public void cairo_stroke_extents (cairo_t *cr, double *x1, double *y1, double *x2, double *y2);
	  ;; cairo_public void cairo_fill_extents (cairo_t *cr, double *x1, double *y1, double *x2, double *y2);
	  ;; cairo_public void cairo_reset_clip (cairo_t *cr);
	  ;; cairo_public void cairo_clip (cairo_t *cr);
	  cairo-clip
	  ;; cairo_public void cairo_clip_preserve (cairo_t *cr);
	  ;; cairo_public void cairo_clip_extents (cairo_t *cr, double *x1, double *y1, double *x2, double *y2);
	  ;; cairo_public cairo_rectangle_list_t * cairo_copy_clip_rectangle_list (cairo_t *cr);
	  ;; cairo_public void cairo_rectangle_list_destroy (cairo_rectangle_list_t *rectangle_list);
	  ;; cairo_public cairo_glyph_t * cairo_glyph_allocate (int num_glyphs);
	  ;; cairo_public void cairo_glyph_free (cairo_glyph_t *glyphs);
	  ;; cairo_public cairo_text_cluster_t * cairo_text_cluster_allocate (int num_clusters);
	  ;; cairo_public void cairo_text_cluster_free (cairo_text_cluster_t *clusters);
	  ;; cairo_public cairo_font_options_t * cairo_font_options_create (void);
	  ;; cairo_public cairo_font_options_t * cairo_font_options_copy (const cairo_font_options_t *original);
	  ;; cairo_public void cairo_font_options_destroy (cairo_font_options_t *options);
	  ;; cairo_public cairo_status_t cairo_font_options_status (cairo_font_options_t *options);
	  ;; cairo_public void cairo_font_options_merge (cairo_font_options_t *options, const cairo_font_options_t *other);
	  ;; cairo_public cairo_bool_t cairo_font_options_equal (const cairo_font_options_t *options, const cairo_font_options_t *other);
	  ;; cairo_public unsigned long cairo_font_options_hash (const cairo_font_options_t *options);
	  ;; cairo_public void cairo_font_options_set_antialias (cairo_font_options_t *options, cairo_antialias_t antialias);
	  ;; cairo_public cairo_antialias_t cairo_font_options_get_antialias (const cairo_font_options_t *options);
	  ;; cairo_public void cairo_font_options_set_subpixel_order (cairo_font_options_t *options, cairo_subpixel_order_t subpixel_order);
	  ;; cairo_public cairo_subpixel_order_t cairo_font_options_get_subpixel_order (const cairo_font_options_t *options);
	  ;; cairo_public void cairo_font_options_set_hint_style (cairo_font_options_t *options, cairo_hint_style_t hint_style);
	  ;; cairo_public cairo_hint_style_t cairo_font_options_get_hint_style (const cairo_font_options_t *options);
	  ;; cairo_public void cairo_font_options_set_hint_metrics (cairo_font_options_t *options, cairo_hint_metrics_t hint_metrics);
	  ;; cairo_public cairo_hint_metrics_t cairo_font_options_get_hint_metrics (const cairo_font_options_t *options);
	  ;; cairo_public void cairo_select_font_face (cairo_t *cr, const char *family, cairo_font_slant_t slant, cairo_font_weight_t weight);
	  ;; cairo_public void cairo_set_font_size (cairo_t *cr, double size);
	  ;; cairo_public void cairo_set_font_matrix (cairo_t *cr, const cairo_matrix_t *matrix);
	  ;; cairo_public void cairo_get_font_matrix (cairo_t *cr, cairo_matrix_t *matrix);
	  ;; cairo_public void cairo_set_font_options (cairo_t *cr, const cairo_font_options_t *options);
	  ;; cairo_public void cairo_get_font_options (cairo_t *cr, cairo_font_options_t *options);
	  ;; cairo_public void cairo_set_font_face (cairo_t *cr, cairo_font_face_t *font_face);
	  ;; cairo_public cairo_font_face_t * cairo_get_font_face (cairo_t *cr);
	  ;; cairo_public void cairo_set_scaled_font (cairo_t *cr, const cairo_scaled_font_t *scaled_font);
	  ;; cairo_public cairo_scaled_font_t * cairo_get_scaled_font (cairo_t *cr);
	  ;; cairo_public void cairo_show_text (cairo_t *cr, const char *utf8);
	  ;; cairo_public void cairo_show_glyphs (cairo_t *cr, const cairo_glyph_t *glyphs, int num_glyphs);
	  ;; cairo_public void cairo_show_text_glyphs (cairo_t *cr, const char *utf8, int utf8_len, const cairo_glyph_t *glyphs, int num_glyphs, const cairo_text_cluster_t *clusters, int num_clusters, cairo_text_cluster_flags_t cluster_flags);
	  ;; cairo_public void cairo_text_path (cairo_t *cr, const char *utf8);
	  ;; cairo_public void cairo_glyph_path (cairo_t *cr, const cairo_glyph_t *glyphs, int num_glyphs);
	  ;; cairo_public void cairo_text_extents (cairo_t *cr, const char *utf8, cairo_text_extents_t *extents);
	  ;; cairo_public void cairo_glyph_extents (cairo_t *cr, const cairo_glyph_t *glyphs, int num_glyphs, cairo_text_extents_t *extents);
	  ;; cairo_public void cairo_font_extents (cairo_t *cr, cairo_font_extents_t *extents);
	  ;; cairo_public cairo_font_face_t * cairo_font_face_reference (cairo_font_face_t *font_face);
	  ;; cairo_public void cairo_font_face_destroy (cairo_font_face_t *font_face);
	  ;; cairo_public unsigned int cairo_font_face_get_reference_count (cairo_font_face_t *font_face);
	  ;; cairo_public cairo_status_t cairo_font_face_status (cairo_font_face_t *font_face);
	  ;; cairo_public cairo_font_type_t cairo_font_face_get_type (cairo_font_face_t *font_face);
	  ;; cairo_public void * cairo_font_face_get_user_data (cairo_font_face_t *font_face, const cairo_user_data_key_t *key);
	  ;; cairo_public cairo_status_t cairo_font_face_set_user_data (cairo_font_face_t *font_face, const cairo_user_data_key_t *key, void *user_data, cairo_destroy_func_t destroy);
	  ;; cairo_public cairo_scaled_font_t * cairo_scaled_font_create (cairo_font_face_t *font_face, const cairo_matrix_t *font_matrix, const cairo_matrix_t *ctm, const cairo_font_options_t *options);
	  ;; cairo_public cairo_scaled_font_t * cairo_scaled_font_reference (cairo_scaled_font_t *scaled_font);
	  ;; cairo_public void cairo_scaled_font_destroy (cairo_scaled_font_t *scaled_font);
	  ;; cairo_public unsigned int cairo_scaled_font_get_reference_count (cairo_scaled_font_t *scaled_font);
	  ;; cairo_public cairo_status_t cairo_scaled_font_status (cairo_scaled_font_t *scaled_font);
	  ;; cairo_public cairo_font_type_t cairo_scaled_font_get_type (cairo_scaled_font_t *scaled_font);
	  ;; cairo_public void * cairo_scaled_font_get_user_data (cairo_scaled_font_t *scaled_font, const cairo_user_data_key_t *key);
	  ;; cairo_public cairo_status_t cairo_scaled_font_set_user_data (cairo_scaled_font_t *scaled_font, const cairo_user_data_key_t *key, void *user_data, cairo_destroy_func_t destroy);
	  ;; cairo_public void cairo_scaled_font_extents (cairo_scaled_font_t *scaled_font, cairo_font_extents_t *extents);
	  ;; cairo_public void cairo_scaled_font_text_extents (cairo_scaled_font_t *scaled_font, const char *utf8, cairo_text_extents_t *extents);
	  ;; cairo_public void cairo_scaled_font_glyph_extents (cairo_scaled_font_t *scaled_font, const cairo_glyph_t *glyphs, int num_glyphs, cairo_text_extents_t *extents);
	  ;; cairo_public cairo_status_t cairo_scaled_font_text_to_glyphs (cairo_scaled_font_t *scaled_font, double x, double y, const char *utf8, int utf8_len, cairo_glyph_t **glyphs, int *num_glyphs, cairo_text_cluster_t **clusters, int *num_clusters, cairo_text_cluster_flags_t *cluster_flags);
	  ;; cairo_public cairo_font_face_t * cairo_scaled_font_get_font_face (cairo_scaled_font_t *scaled_font);
	  ;; cairo_public void cairo_scaled_font_get_font_matrix (cairo_scaled_font_t *scaled_font, cairo_matrix_t *font_matrix);
	  ;; cairo_public void cairo_scaled_font_get_ctm (cairo_scaled_font_t *scaled_font, cairo_matrix_t *ctm);
	  ;; cairo_public void cairo_scaled_font_get_scale_matrix (cairo_scaled_font_t *scaled_font, cairo_matrix_t *scale_matrix);
	  ;; cairo_public void cairo_scaled_font_get_font_options (cairo_scaled_font_t *scaled_font, cairo_font_options_t *options);
	  ;; cairo_public cairo_font_face_t * cairo_toy_font_face_create (const char *family, cairo_font_slant_t slant, cairo_font_weight_t weight);
	  ;; cairo_public const char * cairo_toy_font_face_get_family (cairo_font_face_t *font_face);
	  ;; cairo_public cairo_font_slant_t cairo_toy_font_face_get_slant (cairo_font_face_t *font_face);
	  ;; cairo_public cairo_font_weight_t cairo_toy_font_face_get_weight (cairo_font_face_t *font_face);
	  ;; cairo_public cairo_font_face_t * cairo_user_font_face_create (void);
	  ;; cairo_public void cairo_user_font_face_set_init_func (cairo_font_face_t *font_face, cairo_user_scaled_font_init_func_t init_func);
	  ;; cairo_public void cairo_user_font_face_set_render_glyph_func (cairo_font_face_t *font_face, cairo_user_scaled_font_render_glyph_func_t render_glyph_func);
	  ;; cairo_public void cairo_user_font_face_set_text_to_glyphs_func (cairo_font_face_t *font_face, cairo_user_scaled_font_text_to_glyphs_func_t text_to_glyphs_func);
	  ;; cairo_public void cairo_user_font_face_set_unicode_to_glyph_func (cairo_font_face_t *font_face, cairo_user_scaled_font_unicode_to_glyph_func_t unicode_to_glyph_func);
	  ;; cairo_public cairo_user_scaled_font_init_func_t cairo_user_font_face_get_init_func (cairo_font_face_t *font_face);
	  ;; cairo_public cairo_user_scaled_font_render_glyph_func_t cairo_user_font_face_get_render_glyph_func (cairo_font_face_t *font_face);
	  ;; cairo_public cairo_user_scaled_font_text_to_glyphs_func_t cairo_user_font_face_get_text_to_glyphs_func (cairo_font_face_t *font_face);
	  ;; cairo_public cairo_user_scaled_font_unicode_to_glyph_func_t cairo_user_font_face_get_unicode_to_glyph_func (cairo_font_face_t *font_face);
	  ;; cairo_public cairo_operator_t cairo_get_operator (cairo_t *cr);
	  ;; cairo_public cairo_pattern_t * cairo_get_source (cairo_t *cr);
	  ;; cairo_public double cairo_get_tolerance (cairo_t *cr);
	  ;; cairo_public cairo_antialias_t cairo_get_antialias (cairo_t *cr);
	  ;; cairo_public cairo_bool_t cairo_has_current_point (cairo_t *cr);
	  ;; cairo_public void cairo_get_current_point (cairo_t *cr, double *x, double *y);
	  ;; cairo_public cairo_fill_rule_t cairo_get_fill_rule (cairo_t *cr);
	  ;; cairo_public double cairo_get_line_width (cairo_t *cr);
	  ;; cairo_public cairo_line_cap_t cairo_get_line_cap (cairo_t *cr);
	  ;; cairo_public cairo_line_join_t cairo_get_line_join (cairo_t *cr);
	  ;; cairo_public double cairo_get_miter_limit (cairo_t *cr);
	  ;; cairo_public int cairo_get_dash_count (cairo_t *cr);
	  ;; cairo_public void cairo_get_dash (cairo_t *cr, double *dashes, double *offset);
	  ;; cairo_public void cairo_get_matrix (cairo_t *cr, cairo_matrix_t *matrix);
	  ;; cairo_public cairo_surface_t * cairo_get_target (cairo_t *cr);
	  ;; cairo_public cairo_surface_t * cairo_get_group_target (cairo_t *cr);
	  ;; cairo_public cairo_path_t * cairo_copy_path (cairo_t *cr);
	  ;; cairo_public cairo_path_t * cairo_copy_path_flat (cairo_t *cr);
	  ;; cairo_public void cairo_append_path (cairo_t *cr, const cairo_path_t *path);
	  ;; cairo_public void cairo_path_destroy (cairo_path_t *path);
	  ;; cairo_public cairo_status_t cairo_status (cairo_t *cr);
	  ;; cairo_public const char * cairo_status_to_string (cairo_status_t status);
	  ;; cairo_public cairo_device_t * cairo_device_reference (cairo_device_t *device);
	  ;; cairo_public cairo_device_type_t cairo_device_get_type (cairo_device_t *device);
	  ;; cairo_public cairo_status_t cairo_device_status (cairo_device_t *device);
	  ;; cairo_public cairo_status_t cairo_device_acquire (cairo_device_t *device);
	  ;; cairo_public void cairo_device_release (cairo_device_t *device);
	  ;; cairo_public void cairo_device_flush (cairo_device_t *device);
	  ;; cairo_public void cairo_device_finish (cairo_device_t *device);
	  ;; cairo_public void cairo_device_destroy (cairo_device_t *device);
	  ;; cairo_public unsigned int cairo_device_get_reference_count (cairo_device_t *device);
	  ;; cairo_public void * cairo_device_get_user_data (cairo_device_t *device, const cairo_user_data_key_t *key);
	  ;; cairo_public cairo_status_t cairo_device_set_user_data (cairo_device_t *device, const cairo_user_data_key_t *key, void *user_data, cairo_destroy_func_t destroy);
	  ;; cairo_public cairo_surface_t * cairo_surface_create_similar (cairo_surface_t *other, cairo_content_t content, int width, int height);
	  ;; cairo_public cairo_surface_t * cairo_surface_create_similar_image (cairo_surface_t *other, cairo_format_t format, int width, int height);
	  ;; cairo_public cairo_surface_t * cairo_surface_map_to_image (cairo_surface_t *surface, const cairo_rectangle_int_t *extents);
	  ;; cairo_public void cairo_surface_unmap_image (cairo_surface_t *surface, cairo_surface_t *image);
	  ;; cairo_public cairo_surface_t * cairo_surface_create_for_rectangle (cairo_surface_t *target, double x, double y, double width, double height);
	  ;; cairo_public cairo_surface_t * cairo_surface_create_observer (cairo_surface_t *target, cairo_surface_observer_mode_t mode);
	  ;; cairo_public cairo_status_t cairo_surface_observer_add_paint_callback (cairo_surface_t *abstract_surface, cairo_surface_observer_callback_t func, void *data);
	  ;; cairo_public cairo_status_t cairo_surface_observer_add_mask_callback (cairo_surface_t *abstract_surface, cairo_surface_observer_callback_t func, void *data);
	  ;; cairo_public cairo_status_t cairo_surface_observer_add_fill_callback (cairo_surface_t *abstract_surface, cairo_surface_observer_callback_t func, void *data);
	  ;; cairo_public cairo_status_t cairo_surface_observer_add_stroke_callback (cairo_surface_t *abstract_surface, cairo_surface_observer_callback_t func, void *data);
	  ;; cairo_public cairo_status_t cairo_surface_observer_add_glyphs_callback (cairo_surface_t *abstract_surface, cairo_surface_observer_callback_t func, void *data);
	  ;; cairo_public cairo_status_t cairo_surface_observer_add_flush_callback (cairo_surface_t *abstract_surface, cairo_surface_observer_callback_t func, void *data);
	  ;; cairo_public cairo_status_t cairo_surface_observer_add_finish_callback (cairo_surface_t *abstract_surface, cairo_surface_observer_callback_t func, void *data);
	  ;; cairo_public cairo_status_t cairo_surface_observer_print (cairo_surface_t *surface, cairo_write_func_t write_func, void *closure);
	  ;; cairo_public double cairo_surface_observer_elapsed (cairo_surface_t *surface);
	  ;; cairo_public cairo_status_t cairo_device_observer_print (cairo_device_t *device, cairo_write_func_t write_func, void *closure);
	  ;; cairo_public double cairo_device_observer_elapsed (cairo_device_t *device);
	  ;; cairo_public double cairo_device_observer_paint_elapsed (cairo_device_t *device);
	  ;; cairo_public double cairo_device_observer_mask_elapsed (cairo_device_t *device);
	  ;; cairo_public double cairo_device_observer_fill_elapsed (cairo_device_t *device);
	  ;; cairo_public double cairo_device_observer_stroke_elapsed (cairo_device_t *device);
	  ;; cairo_public double cairo_device_observer_glyphs_elapsed (cairo_device_t *device);
	  ;; cairo_public cairo_surface_t * cairo_surface_reference (cairo_surface_t *surface);
	  ;; cairo_public void cairo_surface_finish (cairo_surface_t *surface);
	  ;; cairo_public void cairo_surface_destroy (cairo_surface_t *surface);
	  ;; cairo_public cairo_device_t * cairo_surface_get_device (cairo_surface_t *surface);
	  ;; cairo_public unsigned int cairo_surface_get_reference_count (cairo_surface_t *surface);
	  ;; cairo_public cairo_status_t cairo_surface_status (cairo_surface_t *surface);
	  ;; cairo_public cairo_surface_type_t cairo_surface_get_type (cairo_surface_t *surface);
	  ;; cairo_public cairo_content_t cairo_surface_get_content (cairo_surface_t *surface);
	  ;; cairo_public cairo_status_t cairo_surface_write_to_png (cairo_surface_t *surface, const char *filename);
	  ;; cairo_public cairo_status_t cairo_surface_write_to_png_stream (cairo_surface_t *surface, cairo_write_func_t write_func, void *closure);
	  ;; cairo_public void * cairo_surface_get_user_data (cairo_surface_t *surface, const cairo_user_data_key_t *key);
	  ;; cairo_public cairo_status_t cairo_surface_set_user_data (cairo_surface_t *surface, const cairo_user_data_key_t *key, void *user_data, cairo_destroy_func_t destroy);
	  ;; cairo_public void cairo_surface_get_mime_data (cairo_surface_t *surface, const char *mime_type, const unsigned char **data, unsigned long *length);
	  ;; cairo_public cairo_status_t cairo_surface_set_mime_data (cairo_surface_t *surface, const char *mime_type, const unsigned char *data, unsigned long length, cairo_destroy_func_t destroy, void *closure);
	  ;; cairo_public cairo_bool_t cairo_surface_supports_mime_type (cairo_surface_t *surface, const char *mime_type);
	  ;; cairo_public void cairo_surface_get_font_options (cairo_surface_t *surface, cairo_font_options_t *options);
	  ;; cairo_public void cairo_surface_flush (cairo_surface_t *surface);
	  ;; cairo_public void cairo_surface_mark_dirty (cairo_surface_t *surface);
	  ;; cairo_public void cairo_surface_mark_dirty_rectangle (cairo_surface_t *surface, int x, int y, int width, int height);
	  ;; cairo_public void cairo_surface_set_device_scale (cairo_surface_t *surface, double x_scale, double y_scale);
	  ;; cairo_public void cairo_surface_get_device_scale (cairo_surface_t *surface, double *x_scale, double *y_scale);
	  ;; cairo_public void cairo_surface_set_device_offset (cairo_surface_t *surface, double x_offset, double y_offset);
	  ;; cairo_public void cairo_surface_get_device_offset (cairo_surface_t *surface, double *x_offset, double *y_offset);
	  ;; cairo_public void cairo_surface_set_fallback_resolution (cairo_surface_t *surface, double x_pixels_per_inch, double y_pixels_per_inch);
	  ;; cairo_public void cairo_surface_get_fallback_resolution (cairo_surface_t *surface, double *x_pixels_per_inch, double *y_pixels_per_inch);
	  ;; cairo_public void cairo_surface_copy_page (cairo_surface_t *surface);
	  ;; cairo_public void cairo_surface_show_page (cairo_surface_t *surface);
	  ;; cairo_public cairo_bool_t cairo_surface_has_show_text_glyphs (cairo_surface_t *surface);
	  ;; cairo_public cairo_surface_t * cairo_image_surface_create (cairo_format_t format, int width, int height);
	  cairo-image-surface-create
	  ;; cairo_public int cairo_format_stride_for_width (cairo_format_t format, int width);
	  ;; cairo_public cairo_surface_t * cairo_image_surface_create_for_data (unsigned char *data, cairo_format_t format, int width, int height, int stride);
	  ;; cairo_public unsigned char * cairo_image_surface_get_data (cairo_surface_t *surface);
	  ;; cairo_public cairo_format_t cairo_image_surface_get_format (cairo_surface_t *surface);
	  ;; cairo_public int cairo_image_surface_get_width (cairo_surface_t *surface);
	  ;; cairo_public int cairo_image_surface_get_height (cairo_surface_t *surface);
	  ;; cairo_public int cairo_image_surface_get_stride (cairo_surface_t *surface);
	  ;; cairo_public cairo_surface_t * cairo_image_surface_create_from_png (const char *filename);
	  ;; cairo_public cairo_surface_t * cairo_image_surface_create_from_png_stream (cairo_read_func_t read_func, void *closure);
	  ;; cairo_public cairo_surface_t * cairo_recording_surface_create (cairo_content_t content, const cairo_rectangle_t *extents);
	  ;; cairo_public void cairo_recording_surface_ink_extents (cairo_surface_t *surface, double *x0, double *y0, double *width, double *height);
	  ;; cairo_public cairo_bool_t cairo_recording_surface_get_extents (cairo_surface_t *surface, cairo_rectangle_t *extents);
	  ;; cairo_public cairo_pattern_t * cairo_pattern_create_raster_source (void *user_data, cairo_content_t content, int width, int height);
	  ;; cairo_public void cairo_raster_source_pattern_set_callback_data (cairo_pattern_t *pattern, void *data);
	  ;; cairo_public void * cairo_raster_source_pattern_get_callback_data (cairo_pattern_t *pattern);
	  ;; cairo_public void cairo_raster_source_pattern_set_acquire (cairo_pattern_t *pattern, cairo_raster_source_acquire_func_t acquire, cairo_raster_source_release_func_t release);
	  ;; cairo_public void cairo_raster_source_pattern_get_acquire (cairo_pattern_t *pattern, cairo_raster_source_acquire_func_t *acquire, cairo_raster_source_release_func_t *release);
	  ;; cairo_public void cairo_raster_source_pattern_set_snapshot (cairo_pattern_t *pattern, cairo_raster_source_snapshot_func_t snapshot);
	  ;; cairo_public cairo_raster_source_snapshot_func_t cairo_raster_source_pattern_get_snapshot (cairo_pattern_t *pattern);
	  ;; cairo_public void cairo_raster_source_pattern_set_copy (cairo_pattern_t *pattern, cairo_raster_source_copy_func_t copy);
	  ;; cairo_public cairo_raster_source_copy_func_t cairo_raster_source_pattern_get_copy (cairo_pattern_t *pattern);
	  ;; cairo_public void cairo_raster_source_pattern_set_finish (cairo_pattern_t *pattern, cairo_raster_source_finish_func_t finish);
	  ;; cairo_public cairo_raster_source_finish_func_t cairo_raster_source_pattern_get_finish (cairo_pattern_t *pattern);
	  ;; cairo_public cairo_pattern_t * cairo_pattern_create_rgb (double red, double green, double blue);
	  ;; cairo_public cairo_pattern_t * cairo_pattern_create_rgba (double red, double green, double blue, double alpha);
	  ;; cairo_public cairo_pattern_t * cairo_pattern_create_for_surface (cairo_surface_t *surface);
	  ;; cairo_public cairo_pattern_t * cairo_pattern_create_linear (double x0, double y0, double x1, double y1);
	  ;; cairo_public cairo_pattern_t * cairo_pattern_create_radial (double cx0, double cy0, double radius0, double cx1, double cy1, double radius1);
	  ;; cairo_public cairo_pattern_t * cairo_pattern_create_mesh (void);
	  ;; cairo_public cairo_pattern_t * cairo_pattern_reference (cairo_pattern_t *pattern);
	  ;; cairo_public void cairo_pattern_destroy (cairo_pattern_t *pattern);
	  ;; cairo_public unsigned int cairo_pattern_get_reference_count (cairo_pattern_t *pattern);
	  ;; cairo_public cairo_status_t cairo_pattern_status (cairo_pattern_t *pattern);
	  ;; cairo_public void * cairo_pattern_get_user_data (cairo_pattern_t *pattern, const cairo_user_data_key_t *key);
	  ;; cairo_public cairo_status_t cairo_pattern_set_user_data (cairo_pattern_t *pattern, const cairo_user_data_key_t *key, void *user_data, cairo_destroy_func_t destroy);
	  ;; cairo_public cairo_pattern_type_t cairo_pattern_get_type (cairo_pattern_t *pattern);
	  ;; cairo_public void cairo_pattern_add_color_stop_rgb (cairo_pattern_t *pattern, double offset, double red, double green, double blue);
	  ;; cairo_public void cairo_pattern_add_color_stop_rgba (cairo_pattern_t *pattern, double offset, double red, double green, double blue, double alpha);
	  ;; cairo_public void cairo_mesh_pattern_begin_patch (cairo_pattern_t *pattern);
	  ;; cairo_public void cairo_mesh_pattern_end_patch (cairo_pattern_t *pattern);
	  ;; cairo_public void cairo_mesh_pattern_curve_to (cairo_pattern_t *pattern, double x1, double y1, double x2, double y2, double x3, double y3);
	  ;; cairo_public void cairo_mesh_pattern_line_to (cairo_pattern_t *pattern, double x, double y);
	  ;; cairo_public void cairo_mesh_pattern_move_to (cairo_pattern_t *pattern, double x, double y);
	  ;; cairo_public void cairo_mesh_pattern_set_control_point (cairo_pattern_t *pattern, unsigned int point_num, double x, double y);
	  ;; cairo_public void cairo_mesh_pattern_set_corner_color_rgb (cairo_pattern_t *pattern, unsigned int corner_num, double red, double green, double blue);
	  ;; cairo_public void cairo_mesh_pattern_set_corner_color_rgba (cairo_pattern_t *pattern, unsigned int corner_num, double red, double green, double blue, double alpha);
	  ;; cairo_public void cairo_pattern_set_matrix (cairo_pattern_t *pattern, const cairo_matrix_t *matrix);
	  ;; cairo_public void cairo_pattern_get_matrix (cairo_pattern_t *pattern, cairo_matrix_t *matrix);
	  ;; cairo_public void cairo_pattern_set_extend (cairo_pattern_t *pattern, cairo_extend_t extend);
	  ;; cairo_public cairo_extend_t cairo_pattern_get_extend (cairo_pattern_t *pattern);
	  ;; cairo_public void cairo_pattern_set_filter (cairo_pattern_t *pattern, cairo_filter_t filter);
	  ;; cairo_public cairo_filter_t cairo_pattern_get_filter (cairo_pattern_t *pattern);
	  ;; cairo_public cairo_status_t cairo_pattern_get_rgba (cairo_pattern_t *pattern, double *red, double *green, double *blue, double *alpha);
	  ;; cairo_public cairo_status_t cairo_pattern_get_surface (cairo_pattern_t *pattern, cairo_surface_t **surface);
	  ;; cairo_public cairo_status_t cairo_pattern_get_color_stop_rgba (cairo_pattern_t *pattern, int index, double *offset, double *red, double *green, double *blue, double *alpha);
	  ;; cairo_public cairo_status_t cairo_pattern_get_color_stop_count (cairo_pattern_t *pattern, int *count);
	  ;; cairo_public cairo_status_t cairo_pattern_get_linear_points (cairo_pattern_t *pattern, double *x0, double *y0, double *x1, double *y1);
	  ;; cairo_public cairo_status_t cairo_pattern_get_radial_circles (cairo_pattern_t *pattern, double *x0, double *y0, double *r0, double *x1, double *y1, double *r1);
	  ;; cairo_public cairo_status_t cairo_mesh_pattern_get_patch_count (cairo_pattern_t *pattern, unsigned int *count);
	  ;; cairo_public cairo_path_t * cairo_mesh_pattern_get_path (cairo_pattern_t *pattern, unsigned int patch_num);
	  ;; cairo_public cairo_status_t cairo_mesh_pattern_get_corner_color_rgba (cairo_pattern_t *pattern, unsigned int patch_num, unsigned int corner_num, double *red, double *green, double *blue, double *alpha);
	  ;; cairo_public cairo_status_t cairo_mesh_pattern_get_control_point (cairo_pattern_t *pattern, unsigned int patch_num, unsigned int point_num, double *x, double *y);
	  ;; cairo_public void cairo_matrix_init (cairo_matrix_t *matrix, double xx, double yx, double xy, double yy, double x0, double y0);
	  ;; cairo_public void cairo_matrix_init_identity (cairo_matrix_t *matrix);
	  ;; cairo_public void cairo_matrix_init_translate (cairo_matrix_t *matrix, double tx, double ty);
	  ;; cairo_public void cairo_matrix_init_scale (cairo_matrix_t *matrix, double sx, double sy);
	  ;; cairo_public void cairo_matrix_init_rotate (cairo_matrix_t *matrix, double radians);
	  ;; cairo_public void cairo_matrix_translate (cairo_matrix_t *matrix, double tx, double ty);
	  ;; cairo_public void cairo_matrix_scale (cairo_matrix_t *matrix, double sx, double sy);
	  ;; cairo_public void cairo_matrix_rotate (cairo_matrix_t *matrix, double radians);
	  ;; cairo_public cairo_status_t cairo_matrix_invert (cairo_matrix_t *matrix);
	  ;; cairo_public void cairo_matrix_multiply (cairo_matrix_t *result, const cairo_matrix_t *a, const cairo_matrix_t *b);
	  ;; cairo_public void cairo_matrix_transform_distance (const cairo_matrix_t *matrix, double *dx, double *dy);
	  ;; cairo_public void cairo_matrix_transform_point (const cairo_matrix_t *matrix, double *x, double *y);
	  ;; cairo_public cairo_region_t * cairo_region_create (void);
	  ;; cairo_public cairo_region_t * cairo_region_create_rectangle (const cairo_rectangle_int_t *rectangle);
	  ;; cairo_public cairo_region_t * cairo_region_create_rectangles (const cairo_rectangle_int_t *rects, int count);
	  ;; cairo_public cairo_region_t * cairo_region_copy (const cairo_region_t *original);
	  ;; cairo_public cairo_region_t * cairo_region_reference (cairo_region_t *region);
	  ;; cairo_public void cairo_region_destroy (cairo_region_t *region);
	  ;; cairo_public cairo_bool_t cairo_region_equal (const cairo_region_t *a, const cairo_region_t *b);
	  ;; cairo_public cairo_status_t cairo_region_status (const cairo_region_t *region);
	  ;; cairo_public void cairo_region_get_extents (const cairo_region_t *region, cairo_rectangle_int_t *extents);
	  ;; cairo_public int cairo_region_num_rectangles (const cairo_region_t *region);
	  ;; cairo_public void cairo_region_get_rectangle (const cairo_region_t *region, int nth, cairo_rectangle_int_t *rectangle);
	  ;; cairo_public cairo_bool_t cairo_region_is_empty (const cairo_region_t *region);
	  ;; cairo_public cairo_region_overlap_t cairo_region_contains_rectangle (const cairo_region_t *region, const cairo_rectangle_int_t *rectangle);
	  ;; cairo_public cairo_bool_t cairo_region_contains_point (const cairo_region_t *region, int x, int y);
	  ;; cairo_public void cairo_region_translate (cairo_region_t *region, int dx, int dy);
	  ;; cairo_public cairo_status_t cairo_region_subtract (cairo_region_t *dst, const cairo_region_t *other);
	  ;; cairo_public cairo_status_t cairo_region_subtract_rectangle (cairo_region_t *dst, const cairo_rectangle_int_t *rectangle);
	  ;; cairo_public cairo_status_t cairo_region_intersect (cairo_region_t *dst, const cairo_region_t *other);
	  ;; cairo_public cairo_status_t cairo_region_intersect_rectangle (cairo_region_t *dst, const cairo_rectangle_int_t *rectangle);
	  ;; cairo_public cairo_status_t cairo_region_union (cairo_region_t *dst, const cairo_region_t *other);
	  ;; cairo_public cairo_status_t cairo_region_union_rectangle (cairo_region_t *dst, const cairo_rectangle_int_t *rectangle);
	  ;; cairo_public cairo_status_t cairo_region_xor (cairo_region_t *dst, const cairo_region_t *other);
	  ;; cairo_public cairo_status_t cairo_region_xor_rectangle (cairo_region_t *dst, const cairo_rectangle_int_t *rectangle);
	  ;; cairo_public void cairo_debug_reset_static_data (void);

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

  ;;void cairo_line_to (cairo_t *cr, double x, double y);
  (define-c-function cairo_line_to (uptr double double) void)
  
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

  ;; void cairo_stroke (cairo_t *cr);

  ;; void cairo_stroke_preserve (cairo_t *cr);
  (define-c-function cairo_stroke_preserve (uptr) void)


  ;; cairo_public int cairo_version (void);
  ;; cairo_public const char* cairo_version_string (void);
  ;; cairo_public cairo_t * cairo_create (cairo_surface_t *target);
  (define-c-function cairo_create (uptr) uptr)
  ;; cairo_public cairo_t * cairo_reference (cairo_t *cr);
  ;; cairo_public void cairo_destroy (cairo_t *cr);
  ;; cairo_public unsigned int cairo_get_reference_count (cairo_t *cr);
  ;; cairo_public void * cairo_get_user_data (cairo_t *cr, const cairo_user_data_key_t *key);
  ;; cairo_public cairo_status_t cairo_set_user_data (cairo_t *cr, const cairo_user_data_key_t *key, void *user_data, cairo_destroy_func_t destroy);
  ;; cairo_public void cairo_save (cairo_t *cr);
  ;; cairo_public void cairo_restore (cairo_t *cr);
  ;; cairo_public void cairo_push_group (cairo_t *cr);
  ;; cairo_public void cairo_push_group_with_content (cairo_t *cr, cairo_content_t content);
  ;; cairo_public cairo_pattern_t * cairo_pop_group (cairo_t *cr);
  ;; cairo_public void cairo_pop_group_to_source (cairo_t *cr);
  ;; cairo_public void cairo_set_operator (cairo_t *cr, cairo_operator_t op);
  ;; cairo_public void cairo_set_source (cairo_t *cr, cairo_pattern_t *source);
  ;; cairo_public void cairo_set_source_rgb (cairo_t *cr, double red, double green, double blue);
  (define-c-function cairo_set_source_rgb (uptr double double double) void)
  ;; cairo_public void cairo_set_source_rgba (cairo_t *cr, double red, double green, double blue, double alpha);
  (define-c-function cairo_set_source_rgba (uptr double double double double) void)
  ;; cairo_public void cairo_set_source_surface (cairo_t *cr, cairo_surface_t *surface, double x, double y);
  ;; cairo_public void cairo_set_tolerance (cairo_t *cr, double tolerance);
  ;; cairo_public void cairo_set_antialias (cairo_t *cr, cairo_antialias_t antialias);
  ;; cairo_public void cairo_set_fill_rule (cairo_t *cr, cairo_fill_rule_t fill_rule);
  ;; cairo_public void cairo_set_line_width (cairo_t *cr, double width);
  (define-c-function cairo_set_line_width (uptr double) void)
  ;; cairo_public void cairo_set_line_cap (cairo_t *cr, cairo_line_cap_t line_cap);
  ;; cairo_public void cairo_set_line_join (cairo_t *cr, cairo_line_join_t line_join);
  ;; cairo_public void cairo_set_dash (cairo_t *cr, const double *dashes, int num_dashes, double offset);
  ;; cairo_public void cairo_set_miter_limit (cairo_t *cr, double limit);
  ;; cairo_public void cairo_translate (cairo_t *cr, double tx, double ty);
  ;; cairo_public void cairo_scale (cairo_t *cr, double sx, double sy);
  ;; cairo_public void cairo_rotate (cairo_t *cr, double angle);
  ;; cairo_public void cairo_transform (cairo_t *cr, const cairo_matrix_t *matrix);
  ;; cairo_public void cairo_set_matrix (cairo_t *cr, const cairo_matrix_t *matrix);
  ;; cairo_public void cairo_identity_matrix (cairo_t *cr);
  ;; cairo_public void cairo_user_to_device (cairo_t *cr, double *x, double *y);
  ;; cairo_public void cairo_user_to_device_distance (cairo_t *cr, double *dx, double *dy);
  ;; cairo_public void cairo_device_to_user (cairo_t *cr, double *x, double *y);
  ;; cairo_public void cairo_device_to_user_distance (cairo_t *cr, double *dx, double *dy);
  ;; cairo_public void cairo_new_path (cairo_t *cr);
  (define-c-function cairo_new_path (uptr) void)
  ;; cairo_public void cairo_move_to (cairo_t *cr, double x, double y);
  (define-c-function cairo_move_to (uptr double double) void)
  ;; cairo_public void cairo_new_sub_path (cairo_t *cr);
  ;; cairo_public void cairo_line_to (cairo_t *cr, double x, double y);
  ;; cairo_public void cairo_curve_to (cairo_t *cr, double x1, double y1, double x2, double y2, double x3, double y3);
  ;; cairo_public void cairo_arc (cairo_t *cr, double xc, double yc, double radius, double angle1, double angle2);
  (define-c-function cairo_arc (uptr double double double double double) void)
  ;; cairo_public void cairo_arc_negative (cairo_t *cr, double xc, double yc, double radius, double angle1, double angle2);
  (define-c-function cairo_arc_negative (uptr double double double double double) void)
  ;; cairo_public void cairo_arc_to (cairo_t *cr, double x1, double y1, double x2, double y2, double radius);
  ;; cairo_public void cairo_rel_move_to (cairo_t *cr, double dx, double dy);
  ;; cairo_public void cairo_rel_line_to (cairo_t *cr, double dx, double dy);
  ;; cairo_public void cairo_rel_curve_to (cairo_t *cr, double dx1, double dy1, double dx2, double dy2, double dx3, double dy3);
  ;; cairo_public void cairo_rectangle (cairo_t *cr, double x, double y, double width, double height);
  (define-c-function cairo_rectangle (uptr double double double double) void)
  ;; cairo_public void cairo_stroke_to_path (cairo_t *cr);
  ;; cairo_public void cairo_close_path (cairo_t *cr);
  ;; cairo_public void cairo_path_extents (cairo_t *cr, double *x1, double *y1, double *x2, double *y2);
  ;; cairo_public void cairo_paint (cairo_t *cr);
  ;; cairo_public void cairo_paint_with_alpha (cairo_t *cr, double alpha);
  ;; cairo_public void cairo_mask (cairo_t *cr, cairo_pattern_t *pattern);
  ;; cairo_public void cairo_mask_surface (cairo_t *cr, cairo_surface_t *surface, double surface_x, double surface_y);
  ;; cairo_public void cairo_stroke (cairo_t *cr);
  (define-c-function cairo_stroke (uptr) void)
  ;; cairo_public void cairo_stroke_preserve (cairo_t *cr);
  ;; cairo_public void cairo_fill (cairo_t *cr);
  ;; cairo_public void cairo_fill_preserve (cairo_t *cr);
  ;; cairo_public void cairo_copy_page (cairo_t *cr);
  ;; cairo_public void cairo_show_page (cairo_t *cr);
  ;; cairo_public cairo_bool_t cairo_in_stroke (cairo_t *cr, double x, double y);
  ;; cairo_public cairo_bool_t cairo_in_fill (cairo_t *cr, double x, double y);
  ;; cairo_public cairo_bool_t cairo_in_clip (cairo_t *cr, double x, double y);
  ;; cairo_public void cairo_stroke_extents (cairo_t *cr, double *x1, double *y1, double *x2, double *y2);
  ;; cairo_public void cairo_fill_extents (cairo_t *cr, double *x1, double *y1, double *x2, double *y2);
  ;; cairo_public void cairo_reset_clip (cairo_t *cr);
  ;; cairo_public void cairo_clip (cairo_t *cr);
  (define-c-function cairo_clip (uptr) void)
  ;; cairo_public void cairo_clip_preserve (cairo_t *cr);
  ;; cairo_public void cairo_clip_extents (cairo_t *cr, double *x1, double *y1, double *x2, double *y2);
  ;; cairo_public cairo_rectangle_list_t * cairo_copy_clip_rectangle_list (cairo_t *cr);
  ;; cairo_public void cairo_rectangle_list_destroy (cairo_rectangle_list_t *rectangle_list);
  ;; cairo_public cairo_glyph_t * cairo_glyph_allocate (int num_glyphs);
  ;; cairo_public void cairo_glyph_free (cairo_glyph_t *glyphs);
  ;; cairo_public cairo_text_cluster_t * cairo_text_cluster_allocate (int num_clusters);
  ;; cairo_public void cairo_text_cluster_free (cairo_text_cluster_t *clusters);
  ;; cairo_public cairo_font_options_t * cairo_font_options_create (void);
  ;; cairo_public cairo_font_options_t * cairo_font_options_copy (const cairo_font_options_t *original);
  ;; cairo_public void cairo_font_options_destroy (cairo_font_options_t *options);
  ;; cairo_public cairo_status_t cairo_font_options_status (cairo_font_options_t *options);
  ;; cairo_public void cairo_font_options_merge (cairo_font_options_t *options, const cairo_font_options_t *other);
  ;; cairo_public cairo_bool_t cairo_font_options_equal (const cairo_font_options_t *options, const cairo_font_options_t *other);
  ;; cairo_public unsigned long cairo_font_options_hash (const cairo_font_options_t *options);
  ;; cairo_public void cairo_font_options_set_antialias (cairo_font_options_t *options, cairo_antialias_t antialias);
  ;; cairo_public cairo_antialias_t cairo_font_options_get_antialias (const cairo_font_options_t *options);
  ;; cairo_public void cairo_font_options_set_subpixel_order (cairo_font_options_t *options, cairo_subpixel_order_t subpixel_order);
  ;; cairo_public cairo_subpixel_order_t cairo_font_options_get_subpixel_order (const cairo_font_options_t *options);
  ;; cairo_public void cairo_font_options_set_hint_style (cairo_font_options_t *options, cairo_hint_style_t hint_style);
  ;; cairo_public cairo_hint_style_t cairo_font_options_get_hint_style (const cairo_font_options_t *options);
  ;; cairo_public void cairo_font_options_set_hint_metrics (cairo_font_options_t *options, cairo_hint_metrics_t hint_metrics);
  ;; cairo_public cairo_hint_metrics_t cairo_font_options_get_hint_metrics (const cairo_font_options_t *options);
  ;; cairo_public void cairo_select_font_face (cairo_t *cr, const char *family, cairo_font_slant_t slant, cairo_font_weight_t weight);
  ;; cairo_public void cairo_set_font_size (cairo_t *cr, double size);
  ;; cairo_public void cairo_set_font_matrix (cairo_t *cr, const cairo_matrix_t *matrix);
  ;; cairo_public void cairo_get_font_matrix (cairo_t *cr, cairo_matrix_t *matrix);
  ;; cairo_public void cairo_set_font_options (cairo_t *cr, const cairo_font_options_t *options);
  ;; cairo_public void cairo_get_font_options (cairo_t *cr, cairo_font_options_t *options);
  ;; cairo_public void cairo_set_font_face (cairo_t *cr, cairo_font_face_t *font_face);
  ;; cairo_public cairo_font_face_t * cairo_get_font_face (cairo_t *cr);
  ;; cairo_public void cairo_set_scaled_font (cairo_t *cr, const cairo_scaled_font_t *scaled_font);
  ;; cairo_public cairo_scaled_font_t * cairo_get_scaled_font (cairo_t *cr);
  ;; cairo_public void cairo_show_text (cairo_t *cr, const char *utf8);
  ;; cairo_public void cairo_show_glyphs (cairo_t *cr, const cairo_glyph_t *glyphs, int num_glyphs);
  ;; cairo_public void cairo_show_text_glyphs (cairo_t *cr, const char *utf8, int utf8_len, const cairo_glyph_t *glyphs, int num_glyphs, const cairo_text_cluster_t *clusters, int num_clusters, cairo_text_cluster_flags_t cluster_flags);
  ;; cairo_public void cairo_text_path (cairo_t *cr, const char *utf8);
  ;; cairo_public void cairo_glyph_path (cairo_t *cr, const cairo_glyph_t *glyphs, int num_glyphs);
  ;; cairo_public void cairo_text_extents (cairo_t *cr, const char *utf8, cairo_text_extents_t *extents);
  ;; cairo_public void cairo_glyph_extents (cairo_t *cr, const cairo_glyph_t *glyphs, int num_glyphs, cairo_text_extents_t *extents);
  ;; cairo_public void cairo_font_extents (cairo_t *cr, cairo_font_extents_t *extents);
  ;; cairo_public cairo_font_face_t * cairo_font_face_reference (cairo_font_face_t *font_face);
  ;; cairo_public void cairo_font_face_destroy (cairo_font_face_t *font_face);
  ;; cairo_public unsigned int cairo_font_face_get_reference_count (cairo_font_face_t *font_face);
  ;; cairo_public cairo_status_t cairo_font_face_status (cairo_font_face_t *font_face);
  ;; cairo_public cairo_font_type_t cairo_font_face_get_type (cairo_font_face_t *font_face);
  ;; cairo_public void * cairo_font_face_get_user_data (cairo_font_face_t *font_face, const cairo_user_data_key_t *key);
  ;; cairo_public cairo_status_t cairo_font_face_set_user_data (cairo_font_face_t *font_face, const cairo_user_data_key_t *key, void *user_data, cairo_destroy_func_t destroy);
  ;; cairo_public cairo_scaled_font_t * cairo_scaled_font_create (cairo_font_face_t *font_face, const cairo_matrix_t *font_matrix, const cairo_matrix_t *ctm, const cairo_font_options_t *options);
  ;; cairo_public cairo_scaled_font_t * cairo_scaled_font_reference (cairo_scaled_font_t *scaled_font);
  ;; cairo_public void cairo_scaled_font_destroy (cairo_scaled_font_t *scaled_font);
  ;; cairo_public unsigned int cairo_scaled_font_get_reference_count (cairo_scaled_font_t *scaled_font);
  ;; cairo_public cairo_status_t cairo_scaled_font_status (cairo_scaled_font_t *scaled_font);
  ;; cairo_public cairo_font_type_t cairo_scaled_font_get_type (cairo_scaled_font_t *scaled_font);
  ;; cairo_public void * cairo_scaled_font_get_user_data (cairo_scaled_font_t *scaled_font, const cairo_user_data_key_t *key);
  ;; cairo_public cairo_status_t cairo_scaled_font_set_user_data (cairo_scaled_font_t *scaled_font, const cairo_user_data_key_t *key, void *user_data, cairo_destroy_func_t destroy);
  ;; cairo_public void cairo_scaled_font_extents (cairo_scaled_font_t *scaled_font, cairo_font_extents_t *extents);
  ;; cairo_public void cairo_scaled_font_text_extents (cairo_scaled_font_t *scaled_font, const char *utf8, cairo_text_extents_t *extents);
  ;; cairo_public void cairo_scaled_font_glyph_extents (cairo_scaled_font_t *scaled_font, const cairo_glyph_t *glyphs, int num_glyphs, cairo_text_extents_t *extents);
  ;; cairo_public cairo_status_t cairo_scaled_font_text_to_glyphs (cairo_scaled_font_t *scaled_font, double x, double y, const char *utf8, int utf8_len, cairo_glyph_t **glyphs, int *num_glyphs, cairo_text_cluster_t **clusters, int *num_clusters, cairo_text_cluster_flags_t *cluster_flags);
  ;; cairo_public cairo_font_face_t * cairo_scaled_font_get_font_face (cairo_scaled_font_t *scaled_font);
  ;; cairo_public void cairo_scaled_font_get_font_matrix (cairo_scaled_font_t *scaled_font, cairo_matrix_t *font_matrix);
  ;; cairo_public void cairo_scaled_font_get_ctm (cairo_scaled_font_t *scaled_font, cairo_matrix_t *ctm);
  ;; cairo_public void cairo_scaled_font_get_scale_matrix (cairo_scaled_font_t *scaled_font, cairo_matrix_t *scale_matrix);
  ;; cairo_public void cairo_scaled_font_get_font_options (cairo_scaled_font_t *scaled_font, cairo_font_options_t *options);
  ;; cairo_public cairo_font_face_t * cairo_toy_font_face_create (const char *family, cairo_font_slant_t slant, cairo_font_weight_t weight);
  ;; cairo_public const char * cairo_toy_font_face_get_family (cairo_font_face_t *font_face);
  ;; cairo_public cairo_font_slant_t cairo_toy_font_face_get_slant (cairo_font_face_t *font_face);
  ;; cairo_public cairo_font_weight_t cairo_toy_font_face_get_weight (cairo_font_face_t *font_face);
  ;; cairo_public cairo_font_face_t * cairo_user_font_face_create (void);
  ;; cairo_public void cairo_user_font_face_set_init_func (cairo_font_face_t *font_face, cairo_user_scaled_font_init_func_t init_func);
  ;; cairo_public void cairo_user_font_face_set_render_glyph_func (cairo_font_face_t *font_face, cairo_user_scaled_font_render_glyph_func_t render_glyph_func);
  ;; cairo_public void cairo_user_font_face_set_text_to_glyphs_func (cairo_font_face_t *font_face, cairo_user_scaled_font_text_to_glyphs_func_t text_to_glyphs_func);
  ;; cairo_public void cairo_user_font_face_set_unicode_to_glyph_func (cairo_font_face_t *font_face, cairo_user_scaled_font_unicode_to_glyph_func_t unicode_to_glyph_func);
  ;; cairo_public cairo_user_scaled_font_init_func_t cairo_user_font_face_get_init_func (cairo_font_face_t *font_face);
  ;; cairo_public cairo_user_scaled_font_render_glyph_func_t cairo_user_font_face_get_render_glyph_func (cairo_font_face_t *font_face);
  ;; cairo_public cairo_user_scaled_font_text_to_glyphs_func_t cairo_user_font_face_get_text_to_glyphs_func (cairo_font_face_t *font_face);
  ;; cairo_public cairo_user_scaled_font_unicode_to_glyph_func_t cairo_user_font_face_get_unicode_to_glyph_func (cairo_font_face_t *font_face);
  ;; cairo_public cairo_operator_t cairo_get_operator (cairo_t *cr);
  ;; cairo_public cairo_pattern_t * cairo_get_source (cairo_t *cr);
  ;; cairo_public double cairo_get_tolerance (cairo_t *cr);
  ;; cairo_public cairo_antialias_t cairo_get_antialias (cairo_t *cr);
  ;; cairo_public cairo_bool_t cairo_has_current_point (cairo_t *cr);
  ;; cairo_public void cairo_get_current_point (cairo_t *cr, double *x, double *y);
  ;; cairo_public cairo_fill_rule_t cairo_get_fill_rule (cairo_t *cr);
  ;; cairo_public double cairo_get_line_width (cairo_t *cr);
  ;; cairo_public cairo_line_cap_t cairo_get_line_cap (cairo_t *cr);
  ;; cairo_public cairo_line_join_t cairo_get_line_join (cairo_t *cr);
  ;; cairo_public double cairo_get_miter_limit (cairo_t *cr);
  ;; cairo_public int cairo_get_dash_count (cairo_t *cr);
  ;; cairo_public void cairo_get_dash (cairo_t *cr, double *dashes, double *offset);
  ;; cairo_public void cairo_get_matrix (cairo_t *cr, cairo_matrix_t *matrix);
  ;; cairo_public cairo_surface_t * cairo_get_target (cairo_t *cr);
  ;; cairo_public cairo_surface_t * cairo_get_group_target (cairo_t *cr);
  ;; cairo_public cairo_path_t * cairo_copy_path (cairo_t *cr);
  ;; cairo_public cairo_path_t * cairo_copy_path_flat (cairo_t *cr);
  ;; cairo_public void cairo_append_path (cairo_t *cr, const cairo_path_t *path);
  ;; cairo_public void cairo_path_destroy (cairo_path_t *path);
  ;; cairo_public cairo_status_t cairo_status (cairo_t *cr);
  ;; cairo_public const char * cairo_status_to_string (cairo_status_t status);
  ;; cairo_public cairo_device_t * cairo_device_reference (cairo_device_t *device);
  ;; cairo_public cairo_device_type_t cairo_device_get_type (cairo_device_t *device);
  ;; cairo_public cairo_status_t cairo_device_status (cairo_device_t *device);
  ;; cairo_public cairo_status_t cairo_device_acquire (cairo_device_t *device);
  ;; cairo_public void cairo_device_release (cairo_device_t *device);
  ;; cairo_public void cairo_device_flush (cairo_device_t *device);
  ;; cairo_public void cairo_device_finish (cairo_device_t *device);
  ;; cairo_public void cairo_device_destroy (cairo_device_t *device);
  ;; cairo_public unsigned int cairo_device_get_reference_count (cairo_device_t *device);
  ;; cairo_public void * cairo_device_get_user_data (cairo_device_t *device, const cairo_user_data_key_t *key);
  ;; cairo_public cairo_status_t cairo_device_set_user_data (cairo_device_t *device, const cairo_user_data_key_t *key, void *user_data, cairo_destroy_func_t destroy);
  ;; cairo_public cairo_surface_t * cairo_surface_create_similar (cairo_surface_t *other, cairo_content_t content, int width, int height);
  ;; cairo_public cairo_surface_t * cairo_surface_create_similar_image (cairo_surface_t *other, cairo_format_t format, int width, int height);
  ;; cairo_public cairo_surface_t * cairo_surface_map_to_image (cairo_surface_t *surface, const cairo_rectangle_int_t *extents);
  ;; cairo_public void cairo_surface_unmap_image (cairo_surface_t *surface, cairo_surface_t *image);
  ;; cairo_public cairo_surface_t * cairo_surface_create_for_rectangle (cairo_surface_t *target, double x, double y, double width, double height);
  ;; cairo_public cairo_surface_t * cairo_surface_create_observer (cairo_surface_t *target, cairo_surface_observer_mode_t mode);
  ;; cairo_public cairo_status_t cairo_surface_observer_add_paint_callback (cairo_surface_t *abstract_surface, cairo_surface_observer_callback_t func, void *data);
  ;; cairo_public cairo_status_t cairo_surface_observer_add_mask_callback (cairo_surface_t *abstract_surface, cairo_surface_observer_callback_t func, void *data);
  ;; cairo_public cairo_status_t cairo_surface_observer_add_fill_callback (cairo_surface_t *abstract_surface, cairo_surface_observer_callback_t func, void *data);
  ;; cairo_public cairo_status_t cairo_surface_observer_add_stroke_callback (cairo_surface_t *abstract_surface, cairo_surface_observer_callback_t func, void *data);
  ;; cairo_public cairo_status_t cairo_surface_observer_add_glyphs_callback (cairo_surface_t *abstract_surface, cairo_surface_observer_callback_t func, void *data);
  ;; cairo_public cairo_status_t cairo_surface_observer_add_flush_callback (cairo_surface_t *abstract_surface, cairo_surface_observer_callback_t func, void *data);
  ;; cairo_public cairo_status_t cairo_surface_observer_add_finish_callback (cairo_surface_t *abstract_surface, cairo_surface_observer_callback_t func, void *data);
  ;; cairo_public cairo_status_t cairo_surface_observer_print (cairo_surface_t *surface, cairo_write_func_t write_func, void *closure);
  ;; cairo_public double cairo_surface_observer_elapsed (cairo_surface_t *surface);
  ;; cairo_public cairo_status_t cairo_device_observer_print (cairo_device_t *device, cairo_write_func_t write_func, void *closure);
  ;; cairo_public double cairo_device_observer_elapsed (cairo_device_t *device);
  ;; cairo_public double cairo_device_observer_paint_elapsed (cairo_device_t *device);
  ;; cairo_public double cairo_device_observer_mask_elapsed (cairo_device_t *device);
  ;; cairo_public double cairo_device_observer_fill_elapsed (cairo_device_t *device);
  ;; cairo_public double cairo_device_observer_stroke_elapsed (cairo_device_t *device);
  ;; cairo_public double cairo_device_observer_glyphs_elapsed (cairo_device_t *device);
  ;; cairo_public cairo_surface_t * cairo_surface_reference (cairo_surface_t *surface);
  ;; cairo_public void cairo_surface_finish (cairo_surface_t *surface);
  ;; cairo_public void cairo_surface_destroy (cairo_surface_t *surface);
  ;; cairo_public cairo_device_t * cairo_surface_get_device (cairo_surface_t *surface);
  ;; cairo_public unsigned int cairo_surface_get_reference_count (cairo_surface_t *surface);
  ;; cairo_public cairo_status_t cairo_surface_status (cairo_surface_t *surface);
  ;; cairo_public cairo_surface_type_t cairo_surface_get_type (cairo_surface_t *surface);
  ;; cairo_public cairo_content_t cairo_surface_get_content (cairo_surface_t *surface);
  ;; cairo_public cairo_status_t cairo_surface_write_to_png (cairo_surface_t *surface, const char *filename);
  ;; cairo_public cairo_status_t cairo_surface_write_to_png_stream (cairo_surface_t *surface, cairo_write_func_t write_func, void *closure);
  ;; cairo_public void * cairo_surface_get_user_data (cairo_surface_t *surface, const cairo_user_data_key_t *key);
  ;; cairo_public cairo_status_t cairo_surface_set_user_data (cairo_surface_t *surface, const cairo_user_data_key_t *key, void *user_data, cairo_destroy_func_t destroy);
  ;; cairo_public void cairo_surface_get_mime_data (cairo_surface_t *surface, const char *mime_type, const unsigned char **data, unsigned long *length);
  ;; cairo_public cairo_status_t cairo_surface_set_mime_data (cairo_surface_t *surface, const char *mime_type, const unsigned char *data, unsigned long length, cairo_destroy_func_t destroy, void *closure);
  ;; cairo_public cairo_bool_t cairo_surface_supports_mime_type (cairo_surface_t *surface, const char *mime_type);
  ;; cairo_public void cairo_surface_get_font_options (cairo_surface_t *surface, cairo_font_options_t *options);
  ;; cairo_public void cairo_surface_flush (cairo_surface_t *surface);
  ;; cairo_public void cairo_surface_mark_dirty (cairo_surface_t *surface);
  ;; cairo_public void cairo_surface_mark_dirty_rectangle (cairo_surface_t *surface, int x, int y, int width, int height);
  ;; cairo_public void cairo_surface_set_device_scale (cairo_surface_t *surface, double x_scale, double y_scale);
  ;; cairo_public void cairo_surface_get_device_scale (cairo_surface_t *surface, double *x_scale, double *y_scale);
  ;; cairo_public void cairo_surface_set_device_offset (cairo_surface_t *surface, double x_offset, double y_offset);
  ;; cairo_public void cairo_surface_get_device_offset (cairo_surface_t *surface, double *x_offset, double *y_offset);
  ;; cairo_public void cairo_surface_set_fallback_resolution (cairo_surface_t *surface, double x_pixels_per_inch, double y_pixels_per_inch);
  ;; cairo_public void cairo_surface_get_fallback_resolution (cairo_surface_t *surface, double *x_pixels_per_inch, double *y_pixels_per_inch);
  ;; cairo_public void cairo_surface_copy_page (cairo_surface_t *surface);
  ;; cairo_public void cairo_surface_show_page (cairo_surface_t *surface);
  ;; cairo_public cairo_bool_t cairo_surface_has_show_text_glyphs (cairo_surface_t *surface);
  ;; cairo_public cairo_surface_t * cairo_image_surface_create (cairo_format_t format, int width, int height);
  (define-c-function cairo_image_surface_create (int int int) uptr)
  ;; cairo_public int cairo_format_stride_for_width (cairo_format_t format, int width);
  ;; cairo_public cairo_surface_t * cairo_image_surface_create_for_data (unsigned char *data, cairo_format_t format, int width, int height, int stride);
  ;; cairo_public unsigned char * cairo_image_surface_get_data (cairo_surface_t *surface);
  ;; cairo_public cairo_format_t cairo_image_surface_get_format (cairo_surface_t *surface);
  ;; cairo_public int cairo_image_surface_get_width (cairo_surface_t *surface);
  ;; cairo_public int cairo_image_surface_get_height (cairo_surface_t *surface);
  ;; cairo_public int cairo_image_surface_get_stride (cairo_surface_t *surface);
  ;; cairo_public cairo_surface_t * cairo_image_surface_create_from_png (const char *filename);
  ;; cairo_public cairo_surface_t * cairo_image_surface_create_from_png_stream (cairo_read_func_t read_func, void *closure);
  ;; cairo_public cairo_surface_t * cairo_recording_surface_create (cairo_content_t content, const cairo_rectangle_t *extents);
  ;; cairo_public void cairo_recording_surface_ink_extents (cairo_surface_t *surface, double *x0, double *y0, double *width, double *height);
  ;; cairo_public cairo_bool_t cairo_recording_surface_get_extents (cairo_surface_t *surface, cairo_rectangle_t *extents);
  ;; cairo_public cairo_pattern_t * cairo_pattern_create_raster_source (void *user_data, cairo_content_t content, int width, int height);
  ;; cairo_public void cairo_raster_source_pattern_set_callback_data (cairo_pattern_t *pattern, void *data);
  ;; cairo_public void * cairo_raster_source_pattern_get_callback_data (cairo_pattern_t *pattern);
  ;; cairo_public void cairo_raster_source_pattern_set_acquire (cairo_pattern_t *pattern, cairo_raster_source_acquire_func_t acquire, cairo_raster_source_release_func_t release);
  ;; cairo_public void cairo_raster_source_pattern_get_acquire (cairo_pattern_t *pattern, cairo_raster_source_acquire_func_t *acquire, cairo_raster_source_release_func_t *release);
  ;; cairo_public void cairo_raster_source_pattern_set_snapshot (cairo_pattern_t *pattern, cairo_raster_source_snapshot_func_t snapshot);
  ;; cairo_public cairo_raster_source_snapshot_func_t cairo_raster_source_pattern_get_snapshot (cairo_pattern_t *pattern);
  ;; cairo_public void cairo_raster_source_pattern_set_copy (cairo_pattern_t *pattern, cairo_raster_source_copy_func_t copy);
  ;; cairo_public cairo_raster_source_copy_func_t cairo_raster_source_pattern_get_copy (cairo_pattern_t *pattern);
  ;; cairo_public void cairo_raster_source_pattern_set_finish (cairo_pattern_t *pattern, cairo_raster_source_finish_func_t finish);
  ;; cairo_public cairo_raster_source_finish_func_t cairo_raster_source_pattern_get_finish (cairo_pattern_t *pattern);
  ;; cairo_public cairo_pattern_t * cairo_pattern_create_rgb (double red, double green, double blue);
  ;; cairo_public cairo_pattern_t * cairo_pattern_create_rgba (double red, double green, double blue, double alpha);
  ;; cairo_public cairo_pattern_t * cairo_pattern_create_for_surface (cairo_surface_t *surface);
  ;; cairo_public cairo_pattern_t * cairo_pattern_create_linear (double x0, double y0, double x1, double y1);
  ;; cairo_public cairo_pattern_t * cairo_pattern_create_radial (double cx0, double cy0, double radius0, double cx1, double cy1, double radius1);
  ;; cairo_public cairo_pattern_t * cairo_pattern_create_mesh (void);
  ;; cairo_public cairo_pattern_t * cairo_pattern_reference (cairo_pattern_t *pattern);
  ;; cairo_public void cairo_pattern_destroy (cairo_pattern_t *pattern);
  ;; cairo_public unsigned int cairo_pattern_get_reference_count (cairo_pattern_t *pattern);
  ;; cairo_public cairo_status_t cairo_pattern_status (cairo_pattern_t *pattern);
  ;; cairo_public void * cairo_pattern_get_user_data (cairo_pattern_t *pattern, const cairo_user_data_key_t *key);
  ;; cairo_public cairo_status_t cairo_pattern_set_user_data (cairo_pattern_t *pattern, const cairo_user_data_key_t *key, void *user_data, cairo_destroy_func_t destroy);
  ;; cairo_public cairo_pattern_type_t cairo_pattern_get_type (cairo_pattern_t *pattern);
  ;; cairo_public void cairo_pattern_add_color_stop_rgb (cairo_pattern_t *pattern, double offset, double red, double green, double blue);
  ;; cairo_public void cairo_pattern_add_color_stop_rgba (cairo_pattern_t *pattern, double offset, double red, double green, double blue, double alpha);
  ;; cairo_public void cairo_mesh_pattern_begin_patch (cairo_pattern_t *pattern);
  ;; cairo_public void cairo_mesh_pattern_end_patch (cairo_pattern_t *pattern);
  ;; cairo_public void cairo_mesh_pattern_curve_to (cairo_pattern_t *pattern, double x1, double y1, double x2, double y2, double x3, double y3);
  ;; cairo_public void cairo_mesh_pattern_line_to (cairo_pattern_t *pattern, double x, double y);
  ;; cairo_public void cairo_mesh_pattern_move_to (cairo_pattern_t *pattern, double x, double y);
  ;; cairo_public void cairo_mesh_pattern_set_control_point (cairo_pattern_t *pattern, unsigned int point_num, double x, double y);
  ;; cairo_public void cairo_mesh_pattern_set_corner_color_rgb (cairo_pattern_t *pattern, unsigned int corner_num, double red, double green, double blue);
  ;; cairo_public void cairo_mesh_pattern_set_corner_color_rgba (cairo_pattern_t *pattern, unsigned int corner_num, double red, double green, double blue, double alpha);
  ;; cairo_public void cairo_pattern_set_matrix (cairo_pattern_t *pattern, const cairo_matrix_t *matrix);
  ;; cairo_public void cairo_pattern_get_matrix (cairo_pattern_t *pattern, cairo_matrix_t *matrix);
  ;; cairo_public void cairo_pattern_set_extend (cairo_pattern_t *pattern, cairo_extend_t extend);
  ;; cairo_public cairo_extend_t cairo_pattern_get_extend (cairo_pattern_t *pattern);
  ;; cairo_public void cairo_pattern_set_filter (cairo_pattern_t *pattern, cairo_filter_t filter);
  ;; cairo_public cairo_filter_t cairo_pattern_get_filter (cairo_pattern_t *pattern);
  ;; cairo_public cairo_status_t cairo_pattern_get_rgba (cairo_pattern_t *pattern, double *red, double *green, double *blue, double *alpha);
  ;; cairo_public cairo_status_t cairo_pattern_get_surface (cairo_pattern_t *pattern, cairo_surface_t **surface);
  ;; cairo_public cairo_status_t cairo_pattern_get_color_stop_rgba (cairo_pattern_t *pattern, int index, double *offset, double *red, double *green, double *blue, double *alpha);
  ;; cairo_public cairo_status_t cairo_pattern_get_color_stop_count (cairo_pattern_t *pattern, int *count);
  ;; cairo_public cairo_status_t cairo_pattern_get_linear_points (cairo_pattern_t *pattern, double *x0, double *y0, double *x1, double *y1);
  ;; cairo_public cairo_status_t cairo_pattern_get_radial_circles (cairo_pattern_t *pattern, double *x0, double *y0, double *r0, double *x1, double *y1, double *r1);
  ;; cairo_public cairo_status_t cairo_mesh_pattern_get_patch_count (cairo_pattern_t *pattern, unsigned int *count);
  ;; cairo_public cairo_path_t * cairo_mesh_pattern_get_path (cairo_pattern_t *pattern, unsigned int patch_num);
  ;; cairo_public cairo_status_t cairo_mesh_pattern_get_corner_color_rgba (cairo_pattern_t *pattern, unsigned int patch_num, unsigned int corner_num, double *red, double *green, double *blue, double *alpha);
  ;; cairo_public cairo_status_t cairo_mesh_pattern_get_control_point (cairo_pattern_t *pattern, unsigned int patch_num, unsigned int point_num, double *x, double *y);
  ;; cairo_public void cairo_matrix_init (cairo_matrix_t *matrix, double xx, double yx, double xy, double yy, double x0, double y0);
  ;; cairo_public void cairo_matrix_init_identity (cairo_matrix_t *matrix);
  ;; cairo_public void cairo_matrix_init_translate (cairo_matrix_t *matrix, double tx, double ty);
  ;; cairo_public void cairo_matrix_init_scale (cairo_matrix_t *matrix, double sx, double sy);
  ;; cairo_public void cairo_matrix_init_rotate (cairo_matrix_t *matrix, double radians);
  ;; cairo_public void cairo_matrix_translate (cairo_matrix_t *matrix, double tx, double ty);
  ;; cairo_public void cairo_matrix_scale (cairo_matrix_t *matrix, double sx, double sy);
  ;; cairo_public void cairo_matrix_rotate (cairo_matrix_t *matrix, double radians);
  ;; cairo_public cairo_status_t cairo_matrix_invert (cairo_matrix_t *matrix);
  ;; cairo_public void cairo_matrix_multiply (cairo_matrix_t *result, const cairo_matrix_t *a, const cairo_matrix_t *b);
  ;; cairo_public void cairo_matrix_transform_distance (const cairo_matrix_t *matrix, double *dx, double *dy);
  ;; cairo_public void cairo_matrix_transform_point (const cairo_matrix_t *matrix, double *x, double *y);
  ;; cairo_public cairo_region_t * cairo_region_create (void);
  ;; cairo_public cairo_region_t * cairo_region_create_rectangle (const cairo_rectangle_int_t *rectangle);
  ;; cairo_public cairo_region_t * cairo_region_create_rectangles (const cairo_rectangle_int_t *rects, int count);
  ;; cairo_public cairo_region_t * cairo_region_copy (const cairo_region_t *original);
  ;; cairo_public cairo_region_t * cairo_region_reference (cairo_region_t *region);
  ;; cairo_public void cairo_region_destroy (cairo_region_t *region);
  ;; cairo_public cairo_bool_t cairo_region_equal (const cairo_region_t *a, const cairo_region_t *b);
  ;; cairo_public cairo_status_t cairo_region_status (const cairo_region_t *region);
  ;; cairo_public void cairo_region_get_extents (const cairo_region_t *region, cairo_rectangle_int_t *extents);
  ;; cairo_public int cairo_region_num_rectangles (const cairo_region_t *region);
  ;; cairo_public void cairo_region_get_rectangle (const cairo_region_t *region, int nth, cairo_rectangle_int_t *rectangle);
  ;; cairo_public cairo_bool_t cairo_region_is_empty (const cairo_region_t *region);
  ;; cairo_public cairo_region_overlap_t cairo_region_contains_rectangle (const cairo_region_t *region, const cairo_rectangle_int_t *rectangle);
  ;; cairo_public cairo_bool_t cairo_region_contains_point (const cairo_region_t *region, int x, int y);
  ;; cairo_public void cairo_region_translate (cairo_region_t *region, int dx, int dy);
  ;; cairo_public cairo_status_t cairo_region_subtract (cairo_region_t *dst, const cairo_region_t *other);
  ;; cairo_public cairo_status_t cairo_region_subtract_rectangle (cairo_region_t *dst, const cairo_rectangle_int_t *rectangle);
  ;; cairo_public cairo_status_t cairo_region_intersect (cairo_region_t *dst, const cairo_region_t *other);
  ;; cairo_public cairo_status_t cairo_region_intersect_rectangle (cairo_region_t *dst, const cairo_rectangle_int_t *rectangle);
  ;; cairo_public cairo_status_t cairo_region_union (cairo_region_t *dst, const cairo_region_t *other);
  ;; cairo_public cairo_status_t cairo_region_union_rectangle (cairo_region_t *dst, const cairo_rectangle_int_t *rectangle);
  ;; cairo_public cairo_status_t cairo_region_xor (cairo_region_t *dst, const cairo_region_t *other);
  ;; cairo_public cairo_status_t cairo_region_xor_rectangle (cairo_region_t *dst, const cairo_rectangle_int_t *rectangle);
  ;; cairo_public void cairo_debug_reset_static_data (void);
  
  )
