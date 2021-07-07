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
	<meta charset="<?php bloginfo( 'charset' ); ?>">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="profile" href="https://gmpg.org/xfn/11">
	<title>Nextstep landing Page</title>
    <!-- <link rel="stylesheet" href="css/fontawesome.min.css"> -->
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"/>

    <link rel="stylesheet" href="<?php echo esc_url(get_template_directory_uri());?>/css/bootstrap.min.css">
    <link rel="stylesheet" href="<?php echo esc_url(get_template_directory_uri());?>/css/swiper.min.css">
    <link rel="stylesheet" href="<?php echo esc_url(get_template_directory_uri());?>/css/style.css">
    <link href="https://fonts.googleapis.com/css?family=Roboto+Condensed:300,400,700" rel="stylesheet">
	<?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>
<?php wp_body_open(); ?>
<header>
        <section class="top-header">
            <div class="container">
                <ul class="top-address">
                    <li><i class="fas fa-phone-volume"></i>+977-9819321456</li>
                    <li><i class="fas fa-map-marker"></i>Purano Baneswor,KTM</li>
                </ul>
                <ul class="top-links">
                    <li><a href="#"><i class="fab fa-facebook"></i></a></li>
                    <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                    <li><a href="#"><i class="fab fa-linkedin-in"></i></a></li>
                    <li><a href="#"><i class="fab fa-instagram"></i></a></li>
                </ul>
            </div>
        </section>
        <section class="main-header">
            <div class="container">
                <a class="navbar-brand" href="index.html"><img src="<?php echo esc_url(get_template_directory_uri());?>/images/main-logo.png"></a>
                <nav class="navbar navbar-expand-lg navbar-light">
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav mr-auto">
                            <li class="nav-item active"><a class="nav-link" href="index.html">Home <span class="sr-only">(current)</span></a></li>
                            <li class="nav-item"> <a class="nav-link" href="#">News & Events</a> </li>
                            <li class="nav-item"> <a class="nav-link" href="#">Gallery</a> </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown">
                                    Our Company
                                    </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="nexstep.html">Nextstep Education</a>
                                    <a class="dropdown-item" href="company.html">Nexus Global</a>
                                </div>
                            </li>
                            <li class="nav-item"> <a class="nav-link" href="about.html">About Us</a> </li>
                            <li class="nav-item"> <a class="nav-link" href="contact.html">Contact Us</a> </li>
                        </ul>
                    </div>
                </nav>
            </div>
        </section>
    </header>
