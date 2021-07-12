<?php

/**
 * Registers a new post type
 * @uses $wp_post_types Inserts new post type object into the list
 *
 * @param string  Post type key, must not exceed 20 characters
 * @param array|string  See optional args description above.
 * @return object|WP_Error the registered post type object, or an error object
 */
function prefix_university()
{

	$labels = array(
		'name'               => __('Universities', 'nextstep'),
		'singular_name'      => __('University', 'nextstep'),
		'add_new'            => _x('Add New University', 'nextstep', 'nextstep'),
		'add_new_item'       => __('Add New University', 'nextstep'),
		'edit_item'          => __('Edit University', 'nextstep'),
		'new_item'           => __('New University', 'nextstep'),
		'view_item'          => __('View University', 'nextstep'),
		'search_items'       => __('Search Universities', 'nextstep'),
		'not_found'          => __('No Universities found', 'nextstep'),
		'not_found_in_trash' => __('No Universities found in Trash', 'nextstep'),
		'parent_item_colon'  => __('Parent University:', 'nextstep'),
		'menu_name'          => __('Universities', 'nextstep'),
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
		'menu_icon'           => 'dashicons-welcome-learn-more',
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

	register_post_type('university', $args);
}

add_action('init', 'prefix_university');


add_action('add_meta_boxes', 'textbox_welcome_function');

function textbox_welcome_function()
{
	add_meta_box(
		'welcome_id',
		'University Info',
		'university_message_callback',
		'university',
		'advanced',
		'high'
	);
}

function university_message_callback($post)
{
	wp_nonce_field('university_meta_save_function', 'wp_nonce_university_info');

	$university = get_post_meta($post->ID, '_university', true);
?>
	<label> University Url</label>
	<input type="text" name="university" id="university" value="<?php echo $university ?>">
<?php
}

function university_meta_save_function($post_id)
{
	if (!isset($_POST['wp_nonce_university_info'])) {
		return $post_id;
	}
	if (!wp_verify_nonce($_POST['wp_nonce_university_info'], 'university_meta_save_function')) {
		return $post_id;
	}
	if (defined('DOING_AUTOSAVE') && DOING_AUTOSAVE) {
		return $post_id;
	}

	//Check User Permission
	if ('university' == $_POST['post_type']) {
		if (!current_user_can('edit_page', $post_id)) {
			return $post_id;
		}
	} else {
		if (!current_user_can('edit_post', $post_id)) {
			return $post_id;
		}
	}
	$university = esc_sql(sanitize_text_field($_POST['_university']));
	$university = $_POST['university'];

	update_post_meta($post_id, '_university', $university);
}
add_action('save_post', 'university_meta_save_function'); 

?>