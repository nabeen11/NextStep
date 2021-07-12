<?php

/**
 * Registers a new post type
 * @uses $wp_post_types Inserts new post type object into the list
 *
 * @param string  Post type key, must not exceed 20 characters
 * @param array|string  See optional args description above.
 * @return object|WP_Error the registered post type object, or an error object
 */
function prefix_company()
{

	$labels = array(
		'name'               => __('Companies', 'nextstep'),
		'singular_name'      => __('Company', 'nextstep'),
		'add_new'            => _x('Add New Company', 'nextstep', 'nextstep'),
		'add_new_item'       => __('Add New Company', 'nextstep'),
		'edit_item'          => __('Edit Company', 'nextstep'),
		'new_item'           => __('New Company', 'nextstep'),
		'view_item'          => __('View Company', 'nextstep'),
		'search_items'       => __('Search Companies', 'nextstep'),
		'not_found'          => __('No Companies found', 'nextstep'),
		'not_found_in_trash' => __('No Companies found in Trash', 'nextstep'),
		'parent_item_colon'  => __('Parent Company:', 'nextstep'),
		'menu_name'          => __('Companies', 'nextstep'),
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
		'menu_icon'           => 'dashicons-image-filter',
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

	register_post_type('companies', $args);
}

add_action('init', 'prefix_company');

add_action('add_meta_boxes', 'checkbox_meta_function');

function checkbox_meta_function()
{
	add_meta_box('checkbox_id', 'Additional Details', 'checkbox_callback_function', 'companies', 'advanced', 'high');
}

function checkbox_callback_function($post)
{
	wp_nonce_field('checkbox_save_function', 'checkbox_meta_info_nonce');
	$show_to_model = get_post_meta($post->ID, '_show_to_model', true);
	$companyurl = get_post_meta($post->ID, '_companyurl', true);

?>
	<table>
		<tr>
			<td>
				<label for="featured-group">Show To Modal: </label>
				<input type="checkbox" name="show_to_model" id="show_to_model" <?php
																				if ($show_to_model == 1) {
																					echo  "checked = 'checked'";
																				} else {
																					echo "";
																				}
																				?>>
				<label for="companyurl">Company Url</label>
				<input type="text" name="companyurl" placeholder="Url" id="companyurl" value="<?php echo $companyurl ?>">
			</td>

		</tr>

	</table>
<?php
}
function checkbox_save_function($post_id)
{
	if (!isset($_POST['checkbox_meta_info_nonce'])) {
		return $post_id;
	}
	if (!wp_verify_nonce($_POST['checkbox_meta_info_nonce'], 'checkbox_save_function')) {
		return $post_id;
	}
	if (defined('DOING_AUTOSAVE') && DOING_AUTOSAVE) {
		return $post_id;
	}
	//check the user's permission
	if ('companies' == $_POST['post_type']) {
		if (!current_user_can('edit_page', $post_id)) {
			return $post_id;
		}
	} else {
		if (!current_user_can('edit_post', $post_id)) {
			return $post_id;
		}
	}

	$show_to_model = (isset($_POST['show_to_model']) && $_POST['show_to_model'] == 'on') ? 1 : 0;
	update_post_meta($post_id, '_show_to_model', $show_to_model);

	$companyurl = esc_sql(sanitize_text_field($_POST['_companyurl']));
	$companyurl = $_POST['companyurl'];

	update_post_meta($post_id, '_companyurl', $companyurl);
}
add_action('save_post_companies', 'checkbox_save_function');
