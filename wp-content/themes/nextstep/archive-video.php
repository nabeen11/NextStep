<?php get_header(); ?>
    <section class="video-section">
        <div class="container">
            <div class="row">
                <?php
                $args = array('post_type' => 'video', 'posts_per_page' => -1);
                $video = new WP_Query($args);
                $video->the_post();
                $vid = get_post_meta(get_the_ID(), '_videourl', true);
                $v = changeYoutubeToEmbedVideo($vid);
                ?>
                <div class="col-12 ">
                    <div class="video-source">
                        <a class="video-wrapper" href="#">
                            <iframe id="big-video" width="560" height="315" src="<?php echo $v; ?>" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                        </a>
                    </div>

                </div>
            </div>
            <div class="row">
                <?php
                while ($video->have_posts()) {
                    $video->the_post();
                    $vid = get_post_meta(get_the_ID(), '_videourl', true);
                    $v = changeYoutubeToEmbedVideo($vid); ?>
                    <div class="col-md-3 col-sm-6">
                        <div class="video-list-single">
                            <a href="#" class="small-video" data-id="<?php echo get_post_meta(get_the_ID(), '_videourl', true); ?>"><?php echo get_the_title(); ?><br>
                                <figure style="background-image:url(<?php echo get_the_post_thumbnail_url(get_the_ID()); ?>)">
                                    <div class="play-icon">
                                        <img src="<?php echo esc_url(get_template_directory_uri()); ?>/images/icon.png">
                                    </div>
                                </figure>
                                <div class="video-content">
                                    <h3><?php the_title(); ?></h3>
                                    <span><?php echo get_the_date('F j, Y') ?></span>
                                </div>
                            </a>
                        </div>
                    </div>
                <?php
                }
                wp_reset_postdata(); //end of while 
                ?>
            </div>
        </div>
    </section>


<?php get_footer();
