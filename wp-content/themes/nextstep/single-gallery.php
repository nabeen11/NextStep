<?php
get_header();

?>

<section class="gallery-detail">
    <div class="container">
        <ul class="gallery-detail-wrap">
            <?php $galleryArray = get_post_gallery_ids(get_the_id());
            if ($galleryArray != null) {
                foreach ($galleryArray as $id) {
            ?>
                    <li><a href="<?php echo wp_get_attachment_url($id) ?>" data-fancybox="gallery" data-caption="Caption #1"><img src="<?php echo wp_get_attachment_url($id) ?>" alt="<?php echo get_the_title(); ?>"></a></li>
            <?php  }
            } ?>
        </ul>
        </ul>
    </div>
</section>


<?php get_footer();
