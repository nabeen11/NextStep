<?php

/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package NextStep
 */

$facebook = myprefix_get_theme_option('facebook');
$linkedin = myprefix_get_theme_option('linkedin');
$twitter = myprefix_get_theme_option('twitter');
$instagram = myprefix_get_theme_option('instagram');

?>

<!-- footer begins -->
<a href="javascript:" id="return-to-top"><i class="fas fa-angle-up"></i></a>
<footer>
	<div class="container">
		<div class="row">
			<?php
			$args = array('post_type' => 'page', 'name' => 'about', 'posts_per_page' => 1);
			$the_query = new WP_Query($args);
			if ($the_query->have_posts()) {
				$the_query->the_post();

			?>
				<div class="col-md-4 col-sm-12">
					<div class="footer-logo">
						<a href="<?php echo get_home_url(); ?>"><img src="<?php echo get_header_image(); ?>"> </a>
						<p><?php echo wp_trim_words(get_the_content(),23,false);?></p>
					</div>
				</div>
			<?php } ?>
			<div class="col-md-2 col-sm-6">
				<div class="footer-link">
					<?php
					wp_nav_menu(array(
						'theme_location' => 'primary',
						'menu' => 'main_menu',
						'menu_class' => '',
						'container' => ''
					));
					?>
				</div>
			</div>
			<div class="col-md-2 col-sm-6">
				<div class="footer-share">
					<ul>
						<li><a href="<?php echo $facebook; ?>" target="_blank"><i class="fab fa-facebook"></i></a></li>
						<li><a href="<?php echo $twitter; ?>" target="_blank"><i class="fab fa-twitter"></i></a></li>
						<li><a href="<?php echo $linkedin; ?>" target="_blank"><i class="fab fa-linkedin-in"></i></a></li>
						<li><a href="<?php echo $instagram; ?>" target="_blank"><i class="fab fa-instagram"></i></a></li>
					</ul>
				</div>
			</div>
			<div class="col-md-4 col-sm-12">
				<a class="site-link" href="#"><img src="<?php echo esc_url(get_template_directory_uri()); ?>/images/facebook.jpg"></a>
			</div>
		</div>
	</div>
</footer>



<script src="<?php echo esc_url(get_template_directory_uri()); ?>/js/jquery-3.3.1.min.js"></script>
<script src="<?php echo esc_url(get_template_directory_uri()); ?>/js/bootstrap.min.js"></script>
<script src="<?php echo esc_url(get_template_directory_uri()); ?>/js/swiper.min.js"></script>
<script src="<?php echo esc_url(get_template_directory_uri()); ?>/js/jquery.fancybox.min.js"></script>
<script src="<?php echo esc_url(get_template_directory_uri()); ?>/js/custom.js"></script>
<script src="<?php echo esc_url(get_template_directory_uri()); ?>/js/videoplay.js"></script>

<?php wp_footer(); ?>

</body>

</html>