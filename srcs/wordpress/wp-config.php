<?php

/** The name of the database for WordPress */
define( 'DB_NAME', 'WordPress_db' );

/** MySQL database username */
define( 'DB_USER', 'admin' );

/** MySQL database password */
define( 'DB_PASSWORD', 'admin' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '1[x,MYC|-(*@BDVe%V|[Vxy)rjBN%ID,|}7 e;+5!aep[X.CO-(ZlYoJq`c2+gGH');
define('SECURE_AUTH_KEY',  'Re+n(o-TPNZ`|`}5(M=/:9;ZCi#lT)(-uV{mt2^fYr[oICb@[,nK>n?C8UbTpw5q');
define('LOGGED_IN_KEY',    'PTkI}BBzp7fFWr$,G[#[X^csOzD<D~B#b+wAi>[VU2$3$A?6aMMxu6R0ltK5*G<;');
define('NONCE_KEY',        'K!enogg~h}h}d4nm7T4|/SeG@b,RKJ<x1m]4I#r|sOo&iIF8-h8~3|JYBVI:!,mG');
define('AUTH_SALT',        '(c!$A4v1l|JN|=_C_|[++}Iuq ,.X$urV%$G-bpgI`-sAMn(J~`DLsv6zz:&#s+?');
define('SECURE_AUTH_SALT', ']=A5Z.2,O1B -4:H&hUh~1O 4va &?>:_H|p?lzsSi*>j-SyA0^WGC|p+!~co0Mr');
define('LOGGED_IN_SALT',   'bP4E8{RU4DZ<=ebMf(qx`ufT5yWh:hV+}8#B#+8Ei=EUEu>r+nZ7kAH`Qbm{i2w9');
define('NONCE_SALT',       '0dts+*<^{[Q+^!p-ms4Xme $IW[gGq_<p~9x}0YR,o<dS)ke`Zf<Yl@mt-ul2z&$');

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
