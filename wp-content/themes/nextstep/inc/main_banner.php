<?php

/**
 * Registers a new post type
 * @uses $wp_post_types Inserts new post type object into the list
 *
 * @param string  Post type key, must not exceed 20 characters
 * @param array|string  See optional args description above.
 * @return object|WP_Error the registered post type object, or an error object
 */
function prefix_slider()
{

	$labels = array(
		'name'               => __('Sliders', 'nextstep'),
		'singular_name'      => __('Slider', 'nextstep'),
		'add_new'            => _x('Add New Slider', 'nextstep', 'nextstep'),
		'add_new_item'       => __('Add New Slider', 'nextstep'),
		'edit_item'          => __('Edit Slider', 'nextstep'),
		'new_item'           => __('New Slider', 'nextstep'),
		'view_item'          => __('View Slider', 'nextstep'),
		'search_items'       => __('Search Sliders', 'nextstep'),
		'not_found'          => __('No Sliders found', 'nextstep'),
		'not_found_in_trash' => __('No Sliders found in Trash', 'nextstep'),
		'parent_item_colon'  => __('Parent Slider:', 'nextstep'),
		'menu_name'          => __('Sliders', 'nextstep'),
	);

	$args = array(
		'labels'              => $labels,
		'hierarchical'        => false,
		'description'         => 'description',
		'taxonomies'          => array(),
		'public'              => true,
		'show_ui'             => true,
		'show_in_menu'        => true,
		'show_in_admin_bar'   => true,
		'menu_position'       => null,
		'menu_icon'           => 'dashicons-images-alt',
		'show_in_nav_menus'   => true,
		'publicly_queryable'  => true,
		'exclude_from_search' => false,
		'has_archive'         => true,
		'query_var'           => true,
		'can_export'          => true,
		'rewrite'             => true,
		'capability_type'     => 'post',
		'supports'            => array(
			'title',
			'editor',
			'author',
			'thumbnail',
			'excerpt',
			// 'custom-fields',
			'trackbacks',
			'comments',
			'revisions',
			'page-attributes',
			'post-formats',
		),
	);

	register_post_type('slider', $args);
}

add_action('init', 'prefix_slider');


/* add_action('add_meta_boxes', 'textbox_welcome_function');

function textbox_welcome_function()
{
	add_meta_box(
		'welcome_id',
		'Slider Content',
		'slider_message_callback',
		'slider',
		'advanced',
		'high'
	);
}

function slider_message_callback($post)
{
	wp_nonce_field('secondtitle_meta_save_function', 'wp_nonce_secondtitle_info');

	$secondtitle = get_post_meta($post->ID, '_secondtitle', true);
?>
	<label> Second Title</label>
	<input type="text" name="secondtitle" id="secondtitle" value="<?php echo $secondtitle ?>">
<?php
}

function secondtitle_meta_save_function($post_id)
{
	if (!isset($_POST['wp_nonce_secondtitle_info'])) {
		return $post_id;
	}
	if (!wp_verify_nonce($_POST['wp_nonce_secondtitle_info'], 'secondtitle_meta_save_function')) {
		return $post_id;
	}
	if (defined('DOING_AUTOSAVE') && DOING_AUTOSAVE) {
		return $post_id;
	}

	//Check User Permission
	if ('slider' == $_POST['post_type']) {
		if (!current_user_can('edit_page', $post_id)) {
			return $post_id;
		}
	} else {
		if (!current_user_can('edit_post', $post_id)) {
			return $post_id;
		}
	}
	$secondtitle = esc_sql(sanitize_text_field($_POST['_secondtitle']));
	$secondtitle = $_POST['secondtitle'];

	update_post_meta($post_id, '_secondtitle', $secondtitle);
}
add_action('save_post', 'secondtitle_meta_save_function'); */

?>