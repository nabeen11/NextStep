<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'nextstep' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'z.xN^)niZKXUux Vr4oMG#N;V9qO7reC]_>Yb:%nUlqI/4`6!0Xog)98@`^;6sEF' );
define( 'SECURE_AUTH_KEY',  'Npcgn=$Y-6dr-<z0APAGq>NV3>B<qFyG4.}(F(;f;.qI:mLuhtd}nPV^j=A&(K=D' );
define( 'LOGGED_IN_KEY',    '9-~l[R9E*B3^Ti.JFIl{s2p&/X-vLI+fB)~q}poPl~;5[v&N~Lin().{_;afTpRg' );
define( 'NONCE_KEY',        'oPV/4r<:51bIBYf9-li#.~|<|<<@X(;-3gPM>/CS4UIv-a-f|OPg+OXy54|92<Jc' );
define( 'AUTH_SALT',        'tg.y$ u$ELZjU+}T!wj4:aqT{@%-(WHK8N_5}FDspJ*HH+z3CV<6al?ip9Q(r-eW' );
define( 'SECURE_AUTH_SALT', '}y4]v@L6K]TgQY;~WKZ$.T)@VwCAB7iS`0C/8f)eef44YuQs]LSI#^]8{UA:~I*A' );
define( 'LOGGED_IN_SALT',   'srlBAz[mg|Okh,*l}UAM{_dW!`80k{9I^wGW4PZ!h/U>cb_-n0>42g14y(#EWkNc' );
define( 'NONCE_SALT',       'SHm[_NzL-v~xQcy4-+T^XyD$9hSG>>mve[hi>JA2St2-*)N|>J<Lt.rW FX5.[<h' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'nse_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
