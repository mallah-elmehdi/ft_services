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
define( 'DB_NAME', 'emallah' );

/** MySQL database username */
define( 'DB_USER', 'elmehdi' );

/** MySQL database password */
define( 'DB_PASSWORD', 'emallah123456' );

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
define( 'AUTH_KEY',         'e!y@~BBz[E-5X~,Ocm2WqmvT3cMz8Zp7(g=m: `toy~Rox.J`,XvZvud9Gazd:q^' );
define( 'SECURE_AUTH_KEY',  'i<Y>61Fswu[]*f?()%#R!_YaNDe!jC-JDKI$:*<d%$<#;om||()mYzozYf$qX,a#' );
define( 'LOGGED_IN_KEY',    'OL 8SJw0-=&={R?%/nUuM)&vI%&@Q | B1(NZ4k?,eHZL?RWg%%qlRPr0[T`o+c~' );
define( 'NONCE_KEY',        'DWbe(kc7})yT3s|E(F@8lQ%njB%k$K2{[Qa,5roy}^8nnl#mHdA`J{%fCB1pExPn' );
define( 'AUTH_SALT',        '*/]x^Wb^.O}Cl`dPNX,PS!JinZx#Qer&HPKgk)yF`NIK%593y^^yjv8T;Ja1d=RL' );
define( 'SECURE_AUTH_SALT', 'Oxh;Aiu,0,Wi.%/k/LD18t$32(L^-+^^ZQ5]qI{Q1*3&`EB] w=f(qY|W?q.`6;K' );
define( 'LOGGED_IN_SALT',   'd#Fd15&P/eegBRHfcWLeB_8MK5HM8]O0%0i? cZt`I|ywuA<JSGC4;9=^FU*LQ-^' );
define( 'NONCE_SALT',       'smG@Y}eUs|n0E|9--zq<r|i&sZnO-hxv2epe0JRbyE`U?!l|L=DxE5SX(opLx]2n' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

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