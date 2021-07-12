<?php

/**
 * Registers a new post type
 * @uses $wp_post_types Inserts new post type object into the list
 *
 * @param string  Post type key, must not exceed 20 characters
 * @param array|string  See optional args description above.
 * @return object|WP_Error the registered post type object, or an error object
 */
function prefix_team()
{

	$labels = array(
		'name'               => __('Teams', 'nextstep'),
		'singular_name'      => __('Team', 'nextstep'),
		'add_new'            => _x('Add New Team', 'nextstep', 'nextstep'),
		'add_new_item'       => __('Add New Team', 'nextstep'),
		'edit_item'          => __('Edit Team', 'nextstep'),
		'new_item'           => __('New Team', 'nextstep'),
		'view_item'          => __('View Team', 'nextstep'),
		'search_items'       => __('Search Teams', 'nextstep'),
		'not_found'          => __('No Teams found', 'nextstep'),
		'not_found_in_trash' => __('No Teams found in Trash', 'nextstep'),
		'parent_item_colon'  => __('Parent Team:', 'nextstep'),
		'menu_name'          => __('Teams', 'nextstep'),
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
		'menu_icon'           => 'dashicons-groups',
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

	register_post_type('team', $args);
}

add_action('init', 'prefix_team');


add_action('add_meta_boxes', 'textbox_meta_function');

function textbox_meta_function()
{
	add_meta_box('social_id', 'Member Details', 'social_media_callback', 'team', 'advanced', 'high');
}

function social_media_callback($post)
{
	wp_nonce_field('save_social_meta_function', 'wp_social_meta_box_nonce');
    $position = get_post_meta($post->ID, '_position', true);
	$company = get_post_meta($post->ID, '_company', true);
	$facebook = get_post_meta($post->ID, '_facebook', true);
	$linkedin = get_post_meta($post->ID, '_linkedin', true);
	$instagram = get_post_meta($post->ID, '_instagram', true);
	$twitter = get_post_meta($post->ID, '_twitter', true);
?>
	<table>
		<tr>
			<td>
				<label>Position</label>
				<input type="text" name="position" id="position" value="<?php echo $position ?>" placeholder="CEO" size="50">
				<label>Company</label>
				<input type="text" name="company" id="company" value="<?php echo $company ?>" placeholder="Nextstep Education" size="45">
			</td>
		</tr>
	</table>
	<table>
		<tr>
			<td>
				<label>Facebook</label>
				<input type="text" name="facebook" id="facebook" value="<?php echo $facebook ?>" size="50">
				<label>Linked In</label>
				<input type="text" name="linkedin" id="linkedin" value="<?php echo $linkedin ?>" size="45">

			</td>
		</tr>
	</table>
	<table>
		<tr>
			<td><label>Instagram</label>
				<input type="text" name="instagram" id="instagram" value="<?php echo $instagram ?>" size="50">
				<label class="abc">Twitter</label>
				<input type="text" size="50" name="twitter" id="twitter" value="<?php echo $twitter ?>">
			</td>
		</tr>
	</table>

<?php
}

function save_social_meta_function($post_id)
{
	if (!isset($_POST['wp_social_meta_box_nonce'])) {
		return $post_id;
	}
	if (!wp_verify_nonce($_POST['wp_social_meta_box_nonce'], 'save_social_meta_function')) {
		return $post_id;
	}
	if (defined('DOING_AUTOSAVE') && DOING_AUTOSAVE) {
		return $post_id;
	}
	//Check User Permission
	if ('team' == $_POST['post_type']) {
		if (!current_user_can('edit_page', $post_id)) {
			return $post_id;
		}
	} else {
		if (!current_user_can('edit_post', $post_id)) {
			return $post_id;
		}
	}
    $position = esc_sql(sanitize_text_field($_POST['_position']));
	$position = $_POST['position'];

	$company = esc_sql(sanitize_text_field($_POST['_company']));
	$company = $_POST['company'];

	$facebook = esc_sql(sanitize_text_field($_POST['_facebook']));
	$facebook = $_POST['facebook'];

	$linkedin = esc_sql(sanitize_text_field($_POST['_linkedin']));
	$linkedin = $_POST['linkedin'];

	$instagram = esc_sql(sanitize_text_field($_POST['_instagram']));
	$instagram = $_POST['instagram'];

	$twitter = esc_sql(sanitize_text_field($_POST['_twitter']));
	$twitter = $_POST['twitter'];

    update_post_meta($post_id, '_position', $position);
	update_post_meta($post_id, '_company', $company);
	update_post_meta($post_id, '_facebook', $facebook);
	update_post_meta($post_id, '_linkedin', $linkedin);
	update_post_meta($post_id, '_instagram', $instagram);
	update_post_meta($post_id, '_twitter', $twitter);
}
add_action('save_post', 'save_social_meta_function');