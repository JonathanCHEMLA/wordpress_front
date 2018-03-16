<?php 

setlocale(LC_TIME, 'fr'); 

function my_theme_enqueue_styles() {

    $parent_style = 'splendid-portfolio-style'; // This is 'twentyfifteen-style' for the Twenty Fifteen theme.

    //var_dump(get_template_directory_uri());
    wp_enqueue_style( $parent_style, get_template_directory_uri() . '/style.css' );
    wp_enqueue_style( 'child-style-font', 'https://fonts.googleapis.com/css?family=Roboto');
    wp_enqueue_style( 'child-style-font2', 'https://fonts.googleapis.com/css?family=Butcherman|Great+Vibes|Tangerine');
    wp_enqueue_style( 'child-style',
        get_stylesheet_directory_uri() . '/style.css',
        array( $parent_style ),
        wp_get_theme()->get('Version')
    );
}
add_action( 'wp_enqueue_scripts', 'my_theme_enqueue_styles' );
?>