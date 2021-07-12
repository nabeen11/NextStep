<!-- Template Name: Contact Us 
-->

<?php get_header();


$address = myprefix_get_theme_option('address');
$phone = myprefix_get_theme_option('telephone');
$email = myprefix_get_theme_option('email');
$mapurl = myprefix_get_theme_option('mapurl');
?>

<section class="contact-page">
            <figure style="background-image:url(<?php echo get_the_post_thumbnail_url(get_the_ID()); ?>)">
            </figure>
            <div class="contact-form-wrapper">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6 col-sm-12">
                            <!-- <form class="contact-form"> -->
                            <?php echo do_shortcode('[contact-form-7 id="147" title="Contact Form 2"]'); ?>
                                <!-- <input type="text" placeholder="Name">
                                <input type="number" placeholder="Phone">
                                <input type="email" placeholder="email">
                                <input type="text" placeholder="Subject">
                                <textarea placeholder="Messeage"></textarea>
                                <button class="btn">Send</button> -->
                            <!-- </form> -->
                        </div>
                        <div class="col-md-6 col-sm-12">
                            <div class="contact-details">
                                <h3>Contact Details</h3>
                                <p><?php echo get_the_content(); ?></p>
                                <ul>
                                    <li><i class="fas fa-street-view"></i><?php echo $address; ?></li>
                                    <li><i class="fas fa-phone-volume"></i><?php echo $phone; ?></li>
                                    <li><i class="fal fa-envelope"></i><?php echo $email; ?></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="location-map">
            <iframe src="<?php echo $mapurl; ?>" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
                <!-- <iframe src="<?php echo $mapurl; ?>" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe> -->
            </div>
        </section>



<?php get_footer();