<?php 
get_header(); 
?>

<section class="gallery-listing">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="title-wrapper">
                    <h2>Gallery</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <?php
            $args = array('post_type' => 'gallery', 'posts_per_page' => 6);
            $the_query = new WP_Query($args);
            if ($the_query->have_posts()) {
            ?>
                <?php
                while ($the_query->have_posts()) {
                    $the_query->the_post();
                ?>
                    <div class="col-md-4 col-sm-6">
                        <a class="gallery-list" href="<?php the_permalink(); ?>">
                            <figure style="background-image:url(<?php echo get_the_post_thumbnail_url(get_the_ID()); ?>)"></figure>
                            <div class="list-title">
                                <h3><?php echo get_the_title(); ?></h3>
                                <span><?php echo get_the_date('F j, Y'); ?></span>
                            </div>
                        </a>
                    </div>
            <?php }
            } ?>
        </div>
    </div>
</section>



<?php 
get_footer();
 ?>