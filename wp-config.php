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
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'wordpress_front');

/** MySQL database username */
define('DB_USER', 'wordpress_front');

/** MySQL database password */
define('DB_PASSWORD', 'wordpress_front');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

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
define('AUTH_KEY',         '/OXl%h56F~KD]@zp{kvPUt7}sfLr#pg?^)S0YF0:n#w38QIk0^[k`cy!M^L$ov22');
define('SECURE_AUTH_KEY',  'jO4FDs(BC-#nDq5C_So)3ZTtb|D}aDK7}z-{&4t<lg.i*9wWh@+ZLeu ^y O:iCV');
define('LOGGED_IN_KEY',    '[>{d7rEVVO!xgcyqU+8fL+xwzI{E(TmYAgGA8z!WrpfG1$hl-;ak*|p@XK#oh=9r');
define('NONCE_KEY',        ';k`S>]swUgsfRKeScf:>%faGbu0<W[v)NjF|@e&}//Hn7E5Y$Q.#h#+5{PV~V|.-');
define('AUTH_SALT',        'Q+lz]eU&M]Ot77c;LBIz!`A} 2oRR/7Lf=6hYo[C@4bNZ,!_Ztp0C$n1~vEapYB&');
define('SECURE_AUTH_SALT', '5&i2{W./XvJkFWW)lvJUS_4&:7t8[8J&iPioerojMP8z;D0%g%1U]wueKW*UP?]N');
define('LOGGED_IN_SALT',   'Li5O.JWWCVRIvb*6wPN0ON(<_yw!;Zk sJIh39p,rU@B&lw_)y8=Eghe,Mi~3a}j');
define('NONCE_SALT',       'g0P!ll]z{1b%zOfiXZN/viu>J,i4j9k)p.0]h-!sxbn6LRgJhHu?$n&5H(n3)ZV4');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
