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

?>

<!-- footer begins -->
<a href="javascript:" id="return-to-top"><i class="fas fa-angle-up"></i></a>
<footer>
	<div class="container">
		<div class="row">
			<div class="col-md-4 col-sm-12">
				<div class="footer-logo">
					<a href="#"><img src="<?php echo esc_url(get_template_directory_uri());?>/images/main-logo.png"> </a>
					<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Nesciunt totam dignissimos ipsa at architecto explicabo sit doloribus ad labore rem.</p>
				</div>
			</div>
			<div class="col-md-2 col-sm-6">
				<div class="footer-link">
					<ul>
						<li><a href="#">Home</a></li>
						<li><a href="#">About Us</a></li>
						<li><a href="#">News & Events</a></li>
						<li><a href="#">Gallery</a></li>
					</ul>
				</div>
			</div>
			<div class="col-md-2 col-sm-6">
				<div class="footer-share">
					<ul>
						<li><a href="#"><i class="fab fa-facebook"></i></a></li>
						<li><a href="#"><i class="fab fa-twitter"></i></a></li>
						<li><a href="#"><i class="fab fa-linkedin-in"></i></a></li>
						<li><a href="#"><i class="fab fa-instagram"></i></a></li>
					</ul>
				</div>
			</div>
			<div class="col-md-4 col-sm-12">
				<a class="site-link" href="#"><img src="<?php echo esc_url(get_template_directory_uri());?>/images/student1.jpg"></a>
			</div>
		</div>
	</div>
</footer>

<script src="<?php echo esc_url(get_template_directory_uri());?>/js/jquery-3.3.1.min.js"></script>
<script src="<?php echo esc_url(get_template_directory_uri());?>/js/bootstrap.min.js"></script>
<script src="<?php echo esc_url(get_template_directory_uri());?>/js/swiper.min.js"></script>
<script src="<?php echo esc_url(get_template_directory_uri());?>/js/custom.js"></script>

<?php wp_footer(); ?>

</body>

</html>