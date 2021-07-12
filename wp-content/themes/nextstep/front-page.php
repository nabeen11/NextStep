<?php get_header();
?>

<!-- main slider section begins -->
<?php
$args = array('post_type' => 'slider', 'posts_per_page' => 3);
$the_query = new WP_Query($args);
if ($the_query->have_posts()) {

?>
    <section class="main-slider">
        <div class="swiper-container gallery-top">
            <div class="swiper-wrapper">
                <?php
                while ($the_query->have_posts()) {
                    $the_query->the_post();
                ?>
                    <div class="swiper-slide" style="background-image:url(<?php echo get_the_post_thumbnail_url(get_the_ID()); ?>)">
                        <div class="container">
                            <div class="slider-content">
                                <h2><?php echo get_the_title(); ?></h2>
                                <p><?php echo get_the_content(); ?></p>
                            </div>
                        </div>
                    </div>
                <?php } ?>
            </div>
            <!-- Add Arrows -->
            <div class="swiper-button-next swiper-button-white"></div>
            <div class="swiper-button-prev swiper-button-white"></div>
        </div>
        <div class="swiper-container gallery-thumbs">
            <div class="swiper-wrapper">
                <?php while ($the_query->have_posts()) {
                    $the_query->the_post();
                ?>
                    <div class="swiper-slide" style="background-image:url(<?php echo get_the_post_thumbnail_url(get_the_ID()); ?>)"></div>
                <?php } ?>
            </div>
        </div>
    </section>
<?php } ?>

<!-- main slider section ends -->

<!-- company info section begins -->
<?php
$args = array('post_type' => 'page', 'name' => 'who-we-are', 'posts_per_page' => 1);
$the_query = new WP_Query($args);
if ($the_query->have_posts()) {
    $the_query->the_post();

?>
    <section class="company-info">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="title-wrapper">
                        <h2><?php echo get_the_title(); ?></h2>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ex, numquam aut. Consectetur error cupiditate non eos vero neque nemo officiis.</p>
                    </div>
                </div>
            </div>
            <div class="company-info-wrap">
                <div class="row">
                    <div class="col-md-6 col-sm-12">
                        <div class="company-content">
                            <!-- <h3>Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum, totam.</h3> -->
                            <p><?php echo apply_filters('the_content', get_the_content()); ?></p>
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-12">
                        <div class="company-image">
                            <figure style="background-image:url(<?php echo get_the_post_thumbnail_url(get_the_ID()); ?>)"></figure>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
<?php } ?>

<!-- company info section ends -->

<!-- our work section begins -->

<?php
$args = array('post_type' => 'page', 'name' => 'our-works', 'posts_per_page' => 1);
$the_query = new WP_Query($args);
if ($the_query->have_posts()) {
    $the_query->the_post();

?>
    <section class="work-section">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="title-wrapper">
                        <h2>Our Works</h2>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt, minima voluptatibus. Quisquam ex totam dolorem id aut sequi molestiae fuga?</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 col-sm-12">
                    <div class="work-content">
                        <p><?php echo apply_filters('the_content', get_the_content()); ?></p>
                        <!-- <a class="btn" href="#">Know More</a> -->
                    </div>
                </div>
                <div class="col-md-6 col-sm-12">
                    <div class="work-slider">
                        <div class="swiper-container">
                            <div class="swiper-wrapper">
                                <?php $galleryArray = get_post_gallery_ids(get_the_id());
                                if ($galleryArray != null) {
                                    foreach ($galleryArray as $id) {
                                ?>
                                        <div class="swiper-slide">
                                            <a class="work-link-wrap" href="#">
                                                <figure style="background-image:url(<?php echo wp_get_attachment_url($id) ?>)"></figure>
                                                <!-- <div class="work-slider-content">
                                                    <h3>Lorem ipsum dolor sit amet mollitia?</h3>
                                                </div> -->
                                            </a>
                                        </div>
                                <?php }
                                } ?>
                            </div>
                            <!-- Add Pagination -->
                        </div>
                        <div class="swiper-pagination"></div>
                    </div>
                </div>
            </div>
        </div>
    </section>
<?php } ?>


<!-- our work section ends -->

<!-- news and events section begins -->

<section class="event-wrap">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="title-wrapper">
                    <h2>News & Events</h2>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quibusdam sapiente, molestiae quo fugiat repudiandae similique doloribus est quam iusto soluta.</p>
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


<!-- news and events section ends -->

<!-- company section begins -->

<section class="our-company-wrap">
    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <div class="title-wrapper">
                    <h2>Our University Partners</h2>
                    <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Eius libero, itaque nobis pariatur reiciendis explicabo temporibus non sapiente nihil vitae.</p>
                </div>
            </div>
        </div>
        <?php
        $args = array('post_type' => 'university', 'posts_per_page' => 5);
        $the_query = new WP_Query($args);
        if ($the_query->have_posts()) {

        ?>
            <ul class="company-list">
                <?php
                while ($the_query->have_posts()) {
                    $the_query->the_post();
                ?>
                    <li>
                        <a href="<?php echo get_post_meta(get_the_ID(), '_university', true); ?>" target="_blank"><img src="<?php echo get_the_post_thumbnail_url(get_the_ID()); ?>"></a>
                    </li>
                <?php } ?>
            </ul>
        <?php } ?>
    </div>
</section>

<?php
$args = array('post_type' => 'companies','meta_key' => '_show_to_model', 'meta_value' => 1, 'posts_per_page' => 2);
$the_query = new WP_Query($args);
if ($the_query->have_posts()) {

?>
    <div id="myModal" class="modal fade" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <h3>Our Company</h3>
                <div class="modal-body">
                    <?php while ($the_query->have_posts()) {
                        $the_query->the_post();
                    ?>
                        <div class="modal-wrapper">
                            <a class="popup-link" href="<?php echo get_post_meta(get_the_ID(),'_companyurl', true); ?>" target="_blank"><img src="<?php echo get_the_post_thumbnail_url(get_the_ID()); ?>">
                                <p><?php the_title(); ?></p>
                            </a>
                        </div>
                    <?php } ?>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>

        </div>
    </div>
<?php } ?>

<!-- company section ends -->


<?php get_footer();
