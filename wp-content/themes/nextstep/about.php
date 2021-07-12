<!-- Template Name: About 
-->

<?php get_header();
the_post();
?>

<section class="about-page-wrap">
    <div class="container">
        <div class="about-history">
            <h3>About Us</h3>
            <p><?php echo apply_filters('the_content',get_the_content()); ?></p>
        </div>
    </div>
</section>

<div class="team-wrap">
    <div class="container">
        <div class="about-title">
            <h3>Meet Our team</h3>
            <p>Coming together is the beginning. Staying together is progress. Working together is success.</p>
        </div>
        <div class="row">
            <?php
            $args = array('post_type' => 'team', 'posts_per_page' => 4);
            $the_query = new WP_Query($args);
            if ($the_query->have_posts()) {

            ?>
                <?php while ($the_query->have_posts()) {
                    $the_query->the_post();
                ?>
                    <div class="col-md-3 col-sm-6">
                        <div class="team-member">
                            <figure style="background-image:url(<?php echo get_the_post_thumbnail_url(get_the_ID()); ?>)"></figure>
                            <div class="member-info">
                                <h4><?php echo get_the_title(); ?></h4>
                                <span><?php echo get_post_meta(get_the_ID(), '_position', true); ?></span>
                                <p><?php echo get_post_meta(get_the_ID(), '_company', true); ?></p>
                                <ul>
                                    <ul>
                                        <li><a href="<?php echo get_post_meta(get_the_ID(), '_facebook', true); ?>" target="_blank"><i class="fab fa-facebook"></i></a></li>
                                        <li><a href="<?php echo get_post_meta(get_the_ID(), '_twitter', true); ?>" target="_blank"><i class="fab fa-twitter"></i></a></li>
                                        <li><a href="<?php echo get_post_meta(get_the_ID(), '_linkedin', true); ?>" target="_blank"><i class="fab fa-linkedin-in"></i></a></li>
                                        <li><a href="<?php echo get_post_meta(get_the_ID(), '_instagram', true); ?>" target="_blank"><i class="fab fa-instagram"></i></a></li>
                                    </ul>
                                </ul>
                            </div>
                        </div>
                    </div>
            <?php }
            } ?>
        </div>
    </div>
</div>

<?php
            $args = array('post_type' => 'page','name' => 'chairman-message', 'posts_per_page' => 1);
            $the_query = new WP_Query($args);
            if ($the_query->have_posts()) {
                $the_query->the_post();

            ?>
<div class="message">
    <div class="container">
        <div class="about-title message-wrap">
            <h3>Chairmen Message</h3>
            <p><?php echo wp_trim_words(get_the_content(), 30,false); ?></p>
        </div>
        <div class="row">
            <div class="col-md-4 col-sm-4">
                <div class="chairmen-image">
                    <figure style="background-image: url(<?php echo get_the_post_thumbnail_url(get_the_ID()); ?>)"></figure>
                </div>
            </div>
            <div class="col-md-8 col-sm-8">
                <div class="chairmen-sms">
                <p><?php echo apply_filters('the_content',get_the_content()); ?></p>
                </div>
            </div>
        </div>
    </div>
</div>
<?php } ?>




<?php get_footer();
