<?php
/**
 * The template for displaying the header
 *
 * Displays all of the head element and everything up until the "site-content" div.
 *
 * @package WordPress
 * @subpackage Twenty_Fifteen
 * @since Twenty Fifteen 1.0
 */
?><!DOCTYPE html>
<html <?php language_attributes(); ?> class="no-js"><!-- attribut langue: depend de la langue dans lequel est affiche mon site-->
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>"><!--c'est le set de charactere ex utf-8. laisse dynamique pour s adapter a diff sites-->
	<meta name="viewport" content="width=device-width"><!---->
	<link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>"><!--notre site est il pingable : bref peut on lui dire est que tu es la?  on s en fiche.-->
	<link rel="stylesheet" href="<?php echo esc_url(get_template_directory_uri() ).'/style.css'; ?>">
	<!--[if lt IE 9]>
	<script src="<?php echo esc_url( get_template_directory_uri() ); ?>/js/html5.js"></script>
	<![endif]--><!--pour la comatibilite avec ie 9 et html5--><!--template permet d acceder a la racinede notr site--><!--esc_url c est parceque certains caracteres sont interdits et dans ce cas, cela permettra de faire qu elle soit comprise par une url -->
	<?php wp_head(); ?><!--tous les autre header pour fonctionner  c est l un des indispensable; on le reconnait grace a "wp" en prefixe-->
</head>

<body <?php body_class(); ?>> <!--container fluid,... mis a jour par wp. ca permet aux intergrateurs de creer des styles en fct de la page dans la quelle on est-->
<div id="page" class="hfeed site">
	<a class="skip-link screen-reader-text" href="#content"><?php _e( 'Skip to content', 'twentyfifteen' ); ?></a><!-- -e lie a l internationnalisation. c est pour traduire les contenus et echapper. -->

	<div id="sidebar" class="sidebar">
		<header id="masthead" class="site-header" role="banner">
			<div class="site-branding">
				<?php
					/*twentyfifteen_the_custom_logo();*/

					if ( is_front_page() && is_home() ) : ?><!--fct php definie uniquement par ce theme. elle permet d afficher le logo du site--><!--si on est sur la page d accueuil et la front page-->
						<h1 class="site-title"><a href="<?php echo esc_url( home_url( '/' ) ); ?>" rel="home"><?php bloginfo( 'name' ); ?></a></h1>
					<?php else : ?>
						<p class="site-title"><a href="<?php echo esc_url( home_url( '/' ) ); ?>" rel="home"><?php bloginfo( 'name' ); ?></a></p>
					<?php endif;

					$description = get_bloginfo( 'description', 'display' );
					if ( $description || is_customize_preview() ) : ?>
						<p class="site-description"><?php echo $description; ?></p>
					<?php endif;
				?>
				<button class="secondary-toggle"><?php _e( 'Menu and widgets', 'twentyfifteen' ); ?></button>
			</div><!-- .site-branding -->
		</header><!-- .site-header -->

		<?php get_sidebar(); ?><!--c est le menu qui apparait sur le site wp-->
	</div><!-- .sidebar -->

	<div id="content" class="site-content">
