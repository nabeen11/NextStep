<?php

/**
 * The template for displaying all single posts
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/#single-post
 *
 * @package NextStep
 */

get_header();
the_post();
?>

<section class="detail-section">
	<div class="container">
		<div class="row">
			<div class="col-md-8 col-sm-12">
				<div class="detail-wrap">
					<figure style="background-image: url(<?php echo get_the_post_thumbnail_url(get_the_ID()); ?>)"></figure>
					<div class="detail-content">
						<h3><?php echo get_the_title(); ?></h3>
						<span><?php echo get_the_date('F j,Y') ?></span>
						<p><?php echo apply_filters('the_content', get_the_content()); ?></p>
					</div>
				</div>
			</div>

			<div class="col-md-4 col-sm-12">
				<div class="sidebar-post">
					<h3>Recent Post</h3>
					<?php
					$args = array('post_type' => 'post','post__not_in' => array(get_the_ID()), 'posts_per_page' => 5);
					$the_query = new WP_Query($args);
					if ($the_query->have_posts()) {
					?>
						<?php while ($the_query->have_posts()) {
							$the_query->the_post();
						?>
							<a href="<?php the_permalink(); ?>" class="sidebar-post-wrap">
								<div class="row">
									<div class="col-md-4 col-sm-6">
										<div class="sidebar-image">
											<figure style="background-image: url(<?php echo get_the_post_thumbnail_url(get_the_ID()); ?>)"></figure>
										</div>
									</div>
									<div class="col-md-8 col-sm-12">
										<div class="sidebar-title">
											<h4><?php echo get_the_title(); ?></h4>
											<span><?php echo get_the_date('F j,Y') ?></span>
										</div>
									</div>
								</div>
							</a>
					<?php }
					} ?>
				</div>
			</div>
		</div>
	</div>
</section>

<?php
get_footer();
