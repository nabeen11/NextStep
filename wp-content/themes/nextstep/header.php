<?php

/**
 * The header for our theme
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package NextStep
 */

?>
<!doctype html>
<html <?php language_attributes(); ?>>

<head>
    <meta charset="<?php bloginfo('charset'); ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="profile" href="https://gmpg.org/xfn/11">
    <title>Nextstep landing Page</title>
    <!-- <link rel="stylesheet" href="css/fontawesome.min.css"> -->
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" />

    <link rel="stylesheet" href="<?php echo esc_url(get_template_directory_uri()); ?>/css/bootstrap.min.css">
    <link rel="stylesheet" href="<?php echo esc_url(get_template_directory_uri()); ?>/css/swiper.min.css">
    <link rel="stylesheet" href="<?php echo esc_url(get_template_directory_uri()); ?>/css/jquery.fancybox.min.css">

    <link rel="stylesheet" href="<?php echo esc_url(get_template_directory_uri()); ?>/css/style.css">
    <link href="https://fonts.googleapis.com/css?family=Roboto+Condensed:300,400,700" rel="stylesheet">
    <?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>
    <?php wp_body_open(); ?>

    <?php
    $address = myprefix_get_theme_option('address');
    $phone = myprefix_get_theme_option('telephone');

    $facebook = myprefix_get_theme_option('facebook');
    $linkedin = myprefix_get_theme_option('linkedin');
    $twitter = myprefix_get_theme_option('twitter');
    $instagram = myprefix_get_theme_option('instagram');
    ?>
    <header>
        <section class="top-header">
            <div class="container">
                <ul class="top-address">
                    <li><i class="fas fa-phone-volume"></i><?php echo $phone; ?></li>
                    <li><i class="fas fa-map-marker"></i><?php echo $address; ?></li>
                </ul>
                <ul class="top-links">
                    <li><a href="<?php echo $facebook; ?>" target="_blank"><i class="fab fa-facebook"></i></a></li>
                    <li><a href="<?php echo $twitter; ?>" target="_blank"><i class="fab fa-twitter"></i></a></li>
                    <li><a href="<?php echo $linkedin; ?>" target="_blank"><i class="fab fa-linkedin-in"></i></a></li>
                    <li><a href="<?php echo $instagram; ?>" target="_blank"><i class="fab fa-instagram"></i></a></li>
                </ul>
            </div>
        </section>
        <section class="main-header">
            <div class="container">
                <a class="navbar-brand" href="<?php echo get_home_url(); ?>"><img src="<?php echo get_header_image(); ?>"></a>
                <nav class="navbar navbar-expand-lg navbar-light">
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <?php
                        wp_nav_menu(array(
                            'theme_location' => 'primary',
                            'menu' => 'main_menu',
                            'menu_class' => 'navbar-nav mr-auto',
                            'container' => ''
                        ));
                        ?>
                    </div>
                </nav>
            </div>
        </section>
    </header>