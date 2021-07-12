<?php
/**
 * The main template file
 *
 * This is the most generic template file in a WordPress theme
 * and one of the two required files for a theme (the other being style.css).
 * It is used to display a page when nothing more specific matches a query.
 * E.g., it puts together the home page when no home.php file exists.
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package NextStep
 */

get_header();
?>

<section class="event-wrap">
	<div class="container">
		<div class="row">
			<div class="col-12">
				<div class="title-wrapper">
					<h2>News & Events</h2>
				</div>
			</div>
		</div>
		<div class="row">
			<?php
			$args = array('post_type' => 'post', 'posts_per_page' => 6);
			$the_query = new WP_Query($args);
			if ($the_query->have_posts()) {

			?>
				<?php
				$counter = 0;
				while ($the_query->have_posts()) {
					$the_query->the_post();
					if ($counter == 0) {
				?>
						<div class="col-md-6 col-sm-12">
							<a class="big-news" href="<?php the_permalink(); ?>">
								<figure style="background-image:url(<?php echo get_the_post_thumbnail_url(get_the_ID()); ?>)"></figure>
								<div class="big-news-content">
									<h3><?php the_title(); ?></h3>
								</div>
							</a>
						</div>
					<?php } elseif ($counter == 1) {
					?>
						<div class="col-md-3 col-sm-6">
							<a class="small-news" href="<?php the_permalink(); ?>">
								<figure style="background-image:url(<?php echo get_the_post_thumbnail_url(get_the_ID()); ?>)"></figure>
								<div class="small-news-content">
									<h3><?php the_title(); ?></h3>
									<p><?php echo wp_trim_words(get_the_content(), 45, false) ?></p>
								</div>
							</a>
						</div>
					<?php
					} elseif ($counter == 2) {
					?>
						<div class="col-md-3 col-sm-6">
							<a class="small-news" href="<?php the_permalink(); ?>">
								<figure style="background-image:url(<?php echo get_the_post_thumbnail_url(get_the_ID()); ?>)"></figure>
								<div class="small-news-content">
									<h3><?php the_title(); ?></h3>
									<p><?php echo wp_trim_words(get_the_content(), 45, false) ?></p>
								</div>
							</a>
						</div>
					<?php
					} elseif ($counter == 3) {
					?>
						<div class="col-md-3 col-sm-6">
							<a class="small-news" href="<?php the_permalink(); ?>">
								<figure style="background-image:url(<?php echo get_the_post_thumbnail_url(get_the_ID()); ?>)"></figure>
								<div class="small-news-content">
									<h3><?php the_title(); ?></h3>
									<p><?php echo wp_trim_words(get_the_content(), 45, false) ?></p>
								</div>
							</a>
						</div>
					<?php
					} elseif ($counter == 4) {
					?>
						<div class="col-md-6 col-sm-12">
							<a class="big-news" href="<?php the_permalink(); ?>">
								<figure style="background-image:url(<?php echo get_the_post_thumbnail_url(get_the_ID()); ?>)"></figure>
								<div class="big-news-content">
									<h3><?php the_title(); ?></h3>
								</div>
							</a>
						</div>
					<?php
					} else {
					?>
						<div class="col-md-3 col-sm-6">
							<a class="small-news" href="<?php the_permalink(); ?>">
								<figure style="background-image:url(<?php echo get_the_post_thumbnail_url(get_the_ID()); ?>)"></figure>
								<div class="small-news-content">
									<h3><?php the_title(); ?></h3>
									<p><?php echo wp_trim_words(get_the_content(), 45, false) ?></p>
								</div>
							</a>
						</div>
					<?php
					}
					?>
				<?php
					if ($counter == 5) {
						break;
					}
					$counter++;
				} ?>
			<?php }
			?>
		</div>
	</div>
</section>

<?php
get_footer();
