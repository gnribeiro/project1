<?php
/**
 * The base configurations of the WordPress.
 *
 * This file has the following configurations: MySQL settings, Table Prefix,
 * Secret Keys, WordPress Language, and ABSPATH. You can find more information
 * by visiting {@link http://codex.wordpress.org/Editing_wp-config.php Editing
 * wp-config.php} Codex page. You can get the MySQL settings from your web host.
 *
 * This file is used by the wp-config.php creation script during the
 * installation. You don't have to use the web site, you can just copy this file
 * to "wp-config.php" and fill in the values.
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'DATABASE_NAME');

/** MySQL database username */
define('DB_USER', 'DATABASE_USER');

/** MySQL database password */
define('DB_PASSWORD', 'DATABASE_PASSWORD');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '-~$)Pi!26hw`t{i?c-VL`@]7VU)[UdyqH EF)2evq;[ZA%QbUe/Ex|X-]/2T#|`p');
define('SECURE_AUTH_KEY',  'hMQjqA;0il9O{C$L|?X:@5^]+4Ln4?|pSPb>C({-8`ux/nK^qq&kSm0,Ub -%hzc');
define('LOGGED_IN_KEY',    'cu >ecDCPnP+kC~)fXjpEne<.Lx,_>3)9D )DNzCY=[YO7uIoN[zU2:l}.)Cd<YV');
define('NONCE_KEY',        'p+:1&OOQMqHHJGlS1%XIZkXKc-bE tp/#=_AyU6=seUI]V{LquJ_R]797|^;v.*B');
define('AUTH_SALT',        'VRiO)jv.Zb|=w(o2do9pN/_+P&Y-&hBA<>?++)-3T>W$_q ]PV7fs $TE|!hg0N/');
define('SECURE_AUTH_SALT', 'f*}Vku{-V,l$B$8hCwkU59+fu0olOh,|]m2k<;H;dK|g_m4JW;J`{RvL9Y|BZ$as');
define('LOGGED_IN_SALT',   't,MIB6682k| #I_5:8M?T`{h;e=(BOG}YCSRM9m&K-nZ>b?,Y|{]bt8+Hj=I&r^*');
define('NONCE_SALT',       'b]hl&AYhjO+T1{OpU<LGlA+f$.j.FGq=olhi}V ma}Sh:rn[VII)m^9W6C%Pz|jh');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each a unique
 * prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
