<?php get_header();?> <!--fonction qui affiche le contenu de notre header.php-->

<?php
// La boucle wordpress(wordpress loop) permet d'afficher un ou plusieurs contenus selon la page visitée.
// Si la page en question affiche seulement un article, cette boulce ne sera parcourue qu'une seule fois.
// sur une page contenant une liste d'articles, elle sera parcourue autant de fois qu'il y a d'articles.

while(have_posts()) :// signifie: tant que ($i<$nbPosts) en gros
    the_post(); // permet de passer à l'element suivant; "c'est le i++"): $i++ en gros

    if(is_front_page() && is_home()): ?>
<h2><?php the_title(); ?></h2><!--si on est dans la page d acceuil, on affiche le titre d article dans un h2 -->
<?php else:?>
<h1><?php the_title(); ?></h1>
<?php endif;?>

<article>
    <?php the_content() ?>
</article>
<?php
// Previous/next page navigation.
			the_posts_pagination( array(
				'prev_text'          => __( 'Previous page', 'twentyfifteen' ), //le double anderscrore et les parentese c est pour traduire notre site. sinon on aurait pu ecrire: 'previous page', de meme pour les lignes du dessous
				'next_text'          => __( 'Next page', 'twentyfifteen' ),
				'before_page_number' => '<span class="meta-nav screen-reader-text">' . __( 'Page', 'twentyfifteen' ) . ' </span>',
			) );
 endwhile; ?>

<?php get_footer(); ?>