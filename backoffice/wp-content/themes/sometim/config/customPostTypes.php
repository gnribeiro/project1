<?php 
add_action( 'init', 'slideshow_home' , 0 );
add_action( 'init', 'empresa'        , 0 );
add_action( 'init', 'manutentencao'  , 0);
add_action( 'init', 'producao'       , 0 );
add_action( 'init', 'clientes'       , 0 );
add_action( 'init', 'eventos'        , 0 );
add_action( 'init', 'qsa'            , 0 );
add_action( 'init', 'contactos'      , 0 );



if(!function_exists('slideshow_home')){
    function slideshow_home() {

        $labels = array(
            'name'                => _x( 'Slides', 'Post Type General Name', 'text_domain' ),
            'singular_name'       => _x( 'slideshow', 'Post Type Singular Name', 'text_domain' ),
            'menu_name'           => __( 'Slideshow', 'text_domain' ),
            'parent_item_colon'   => __( 'Slide Parent', 'text_domain' ),
            'all_items'           => __( 'Todos  os Slides', 'text_domain' ),
            'view_item'           => __( 'Ver Slide', 'text_domain' ),
            'add_new_item'        => __( 'Adicionar novo Slide', 'text_domain' ),
            'add_new'             => __( 'Adicionar novo Slide', 'text_domain' ),
            'edit_item'           => __( 'Editar Slide', 'text_domain' ),
            'update_item'         => __( 'Alterar Slide', 'text_domain' ),
            'search_items'        => __( 'Procurar Slide', 'text_domain' ),
            'not_found'           => __( 'Não se encontrou', 'text_domain' ),
            'not_found_in_trash'  => __( 'Não se encontrou no lixo', 'text_domain' ),
        );
        $args = array(
            'label'               => __( 'slideshow', 'text_domain' ),
            'description'         => __( 'Slideshow no top do site', 'text_domain' ),
            'labels'              => $labels,
            'supports'            => array( 'title', 'editor', 'thumbnail', ),
            'hierarchical'        => false,
            'public'              => true,
            'show_ui'             => true,
            'show_in_menu'        => true,
            'show_in_nav_menus'   => true,
            'show_in_admin_bar'   => true,
            'menu_position'       => 5,
            'can_export'          => true,
            'has_archive'         => true,
            'exclude_from_search' => false,
            'publicly_queryable'  => true,
            'capability_type'     => 'post',
        );
        register_post_type( 'slideshow', $args );
    }
}

function empresa() 
{

    $labels = array(
        'name'                => _x( 'empresa', 'Post Type General Name', 'text_domain' ),
        'singular_name'       => _x( 'empresa', 'Post Type Singular Name', 'text_domain' ),
        'menu_name'           => __( 'Empresa', 'text_domain' ),
        'parent_item_colon'   => __( 'item Parent', 'text_domain' ),
        'all_items'           => __( 'Todos  os item', 'text_domain' ),
        'view_item'           => __( 'Ver item', 'text_domain' ),
        'add_new_item'        => __( 'Adicionar novo item', 'text_domain' ),
        'add_new'             => __( 'Adicionar novo item', 'text_domain' ),
        'edit_item'           => __( 'Editar item', 'text_domain' ),
        'update_item'         => __( 'Alterar item', 'text_domain' ),
        'search_items'        => __( 'Procurar item', 'text_domain' ),
        'not_found'           => __( 'Não se encontrou', 'text_domain' ),
        'not_found_in_trash'  => __( 'Não se encontrou no lixo', 'text_domain' ),
    );
    $args = array(
        'label'               => __( 'empresa', 'text_domain' ),
        'description'         => __( 'Empresa no top do site', 'text_domain' ),
        'labels'              => $labels,
        'supports'            => array( 'title', 'editor', 'excerpt', 'thumbnail', ),
        'hierarchical'        => false,
        'public'              => true,
        'show_ui'             => true,
        'show_in_menu'        => true,
        'show_in_nav_menus'   => false,
        'show_in_admin_bar'   => false,
        'menu_position'       => 5,
        'can_export'          => true,
        'has_archive'         => true,
        'exclude_from_search' => false,
        'publicly_queryable'  => true,
        'capability_type'     => 'post',
    );
    register_post_type( 'empresa', $args );
}

function manutentencao() {

    $labels = array(
        'name'                => _x( 'Manutenção', 'Post Type General Name', 'text_domain' ),
        'singular_name'       => _x( 'manutentencao', 'Post Type Singular Name', 'text_domain' ),
        'menu_name'           => __( 'Manutenção', 'text_domain' ),
        'parent_item_colon'   => __( 'actividade Parent', 'text_domain' ),
        'all_items'           => __( 'Todas  as actividade', 'text_domain' ),
        'view_item'           => __( 'Ver actividade', 'text_domain' ),
        'add_new_item'        => __( 'Adicionar nova actividade', 'text_domain' ),
        'add_new'             => __( 'Adicionar nova actividade', 'text_domain' ),
        'edit_item'           => __( 'Editar actividade', 'text_domain' ),
        'update_item'         => __( 'Alterar actividade', 'text_domain' ),
        'search_items'        => __( 'Procurar actividade', 'text_domain' ),
        'not_found'           => __( 'Não se encontrou', 'text_domain' ),
        'not_found_in_trash'  => __( 'Não se encontrou no lixo', 'text_domain' ),
    );
    $args = array(
        'label'               => __( 'Manutenção', 'text_domain' ),
        'description'         => __( 'Manutenção no top do site', 'text_domain' ),
        'labels'              => $labels,
        'supports'            => array( 'title', 'editor', 'excerpt', 'thumbnail', ),
        'hierarchical'        => false,
        'public'              => true,
        'show_ui'             => true,
        'show_in_menu'        => true,
        'show_in_nav_menus'   => false,
        'show_in_admin_bar'   => false,
        'menu_position'       => 5,
        'can_export'          => true,
        'has_archive'         => true,
        'exclude_from_search' => false,
        'publicly_queryable'  => true,
        'capability_type'     => 'post',
    );
    register_post_type( 'manutentencao', $args );

}

function producao() {

    $labels = array(
        'name'                => _x( 'producao', 'Post Type General Name', 'text_domain' ),
        'singular_name'       => _x( 'producao', 'Post Type Singular Name', 'text_domain' ),
        'menu_name'           => __( 'Produção Fabril', 'text_domain' ),
        'parent_item_colon'   => __( 'actividade Parent', 'text_domain' ),
        'all_items'           => __( 'Todas  as actividade', 'text_domain' ),
        'view_item'           => __( 'Ver actividade', 'text_domain' ),
        'add_new_item'        => __( 'Adicionar nova actividade', 'text_domain' ),
        'add_new'             => __( 'Adicionar nova actividade', 'text_domain' ),
        'edit_item'           => __( 'Editar actividade', 'text_domain' ),
        'update_item'         => __( 'Alterar actividade', 'text_domain' ),
        'search_items'        => __( 'Procurar actividade', 'text_domain' ),
        'not_found'           => __( 'Não se encontrou', 'text_domain' ),
        'not_found_in_trash'  => __( 'Não se encontrou no lixo', 'text_domain' ),
    );
    $args = array(
        'label'               => __( 'producao', 'text_domain' ),
        'description'         => __( 'producao no top do site', 'text_domain' ),
        'labels'              => $labels,
        'supports'            => array( 'title', 'editor', 'excerpt', 'thumbnail', ),
        'hierarchical'        => false,
        'public'              => true,
        'show_ui'             => true,
        'show_in_menu'        => true,
        'show_in_nav_menus'   => false,
        'show_in_admin_bar'   => false,
        'menu_position'       => 5,
        'can_export'          => true,
        'has_archive'         => true,
        'exclude_from_search' => false,
        'publicly_queryable'  => true,
        'capability_type'     => 'post',
    );
    register_post_type( 'producao', $args );

}

function clientes() {

    $labels = array(
        'name'                => _x( 'clientes', 'Post Type General Name', 'text_domain' ),
        'singular_name'       => _x( 'clientes', 'Post Type Singular Name', 'text_domain' ),
        'menu_name'           => __( 'Clientes', 'text_domain' ),
        'parent_item_colon'   => __( 'Cliente Parent', 'text_domain' ),
        'all_items'           => __( 'Todos os Cliente', 'text_domain' ),
        'view_item'           => __( 'Ver Cliente', 'text_domain' ),
        'add_new_item'        => __( 'Adicionar novo Cliente', 'text_domain' ),
        'add_new'             => __( 'Adicionar novo Cliente', 'text_domain' ),
        'edit_item'           => __( 'Editar Cliente', 'text_domain' ),
        'update_item'         => __( 'Alterar Cliente', 'text_domain' ),
        'search_items'        => __( 'Procurar Cliente', 'text_domain' ),
        'not_found'           => __( 'Não se encontrou', 'text_domain' ),
        'not_found_in_trash'  => __( 'Não se encontrou no lixo', 'text_domain' ),
    );
    $args = array(
        'label'               => __( 'clientes', 'text_domain' ),
        'description'         => __( 'clientes no top do site', 'text_domain' ),
        'labels'              => $labels,
        'supports'            => array( 'title', 'editor', 'thumbnail', ),
        'hierarchical'        => false,
        'public'              => true,
        'show_ui'             => true,
        'show_in_menu'        => true,
        'show_in_nav_menus'   => false,
        'show_in_admin_bar'   => false,
        'menu_position'       => 5,
        'can_export'          => true,
        'has_archive'         => true,
        'exclude_from_search' => false,
        'publicly_queryable'  => true,
        'capability_type'     => 'post',
    );
    register_post_type( 'clientes', $args );

}

function eventos() {

    $labels = array(
        'name'                => _x( 'eventos', 'Post Type General Name', 'text_domain' ),
        'singular_name'       => _x( 'eventos', 'Post Type Singular Name', 'text_domain' ),
        'menu_name'           => __( 'eventos', 'text_domain' ),
        'parent_item_colon'   => __( 'Eventos Parent', 'text_domain' ),
        'all_items'           => __( 'Todas  os evento', 'text_domain' ),
        'view_item'           => __( 'Ver evento', 'text_domain' ),
        'add_new_item'        => __( 'Adicionar novo evento', 'text_domain' ),
        'add_new'             => __( 'Adicionar novo evento', 'text_domain' ),
        'edit_item'           => __( 'Editar evento', 'text_domain' ),
        'update_item'         => __( 'Alterar evento', 'text_domain' ),
        'search_items'        => __( 'Procurar evento', 'text_domain' ),
        'not_found'           => __( 'Não se encontrou', 'text_domain' ),
        'not_found_in_trash'  => __( 'Não se encontrou no lixo', 'text_domain' ),
    );
    $args = array(
        'label'               => __( 'eventos', 'text_domain' ),
        'description'         => __( 'eventos no top do site', 'text_domain' ),
        'labels'              => $labels,
        'supports'            => array( 'title', 'editor', 'thumbnail', ),
        'hierarchical'        => false,
        'public'              => true,
        'show_ui'             => true,
        'show_in_menu'        => true,
        'show_in_nav_menus'   => false,
        'show_in_admin_bar'   => false,
        'menu_position'       => 5,
        'can_export'          => true,
        'has_archive'         => true,
        'exclude_from_search' => false,
        'publicly_queryable'  => true,
        'capability_type'     => 'post',
    );
    register_post_type( 'eventos', $args );

}

function qsa() {

    $labels = array(
        'name'                => _x( 'qsa', 'Post Type General Name', 'text_domain' ),
        'singular_name'       => _x( 'qsa', 'Post Type Singular Name', 'text_domain' ),
        'menu_name'           => __( 'qsa', 'text_domain' ),
        'parent_item_colon'   => __( 'QSA Parent', 'text_domain' ),
        'all_items'           => __( 'Todas  os item', 'text_domain' ),
        'view_item'           => __( 'Ver item', 'text_domain' ),
        'add_new_item'        => __( 'Adicionar novo item', 'text_domain' ),
        'add_new'             => __( 'Adicionar novo item', 'text_domain' ),
        'edit_item'           => __( 'Editar item', 'text_domain' ),
        'update_item'         => __( 'Alterar item', 'text_domain' ),
        'search_items'        => __( 'Procurar item', 'text_domain' ),
        'not_found'           => __( 'Não se encontrou', 'text_domain' ),
        'not_found_in_trash'  => __( 'Não se encontrou no lixo', 'text_domain' ),
    );
    $args = array(
        'label'               => __( 'QSA', 'text_domain' ),
        'description'         => __( 'QSA no top do site', 'text_domain' ),
        'labels'              => $labels,
        'supports'            => array( 'title', 'editor', 'thumbnail', ),
        'hierarchical'        => false,
        'public'              => true,
        'show_ui'             => true,
        'show_in_menu'        => true,
        'show_in_nav_menus'   => false,
        'show_in_admin_bar'   => false,
        'menu_position'       => 5,
        'can_export'          => true,
        'has_archive'         => true,
        'exclude_from_search' => false,
        'publicly_queryable'  => true,
        'capability_type'     => 'post',
    );
    register_post_type( 'qsa', $args );

}


function contactos() {

    $labels = array(
        'name'                => _x( 'contactos', 'Post Type General Name', 'text_domain' ),
        'singular_name'       => _x( 'contactos', 'Post Type Singular Name', 'text_domain' ),
        'menu_name'           => __( 'Contactos', 'text_domain' ),
        'parent_item_colon'   => __( 'contactos Parent', 'text_domain' ),
        'all_items'           => __( 'Todas  os contacto', 'text_domain' ),
        'view_item'           => __( 'Ver contacto', 'text_domain' ),
        'add_new_item'        => __( 'Adicionar novo contacto', 'text_domain' ),
        'add_new'             => __( 'Adicionar novo contacto', 'text_domain' ),
        'edit_item'           => __( 'Editar contacto', 'text_domain' ),
        'update_item'         => __( 'Alterar contacto', 'text_domain' ),
        'search_items'        => __( 'Procurar contacto', 'text_domain' ),
        'not_found'           => __( 'Não se encontrou', 'text_domain' ),
        'not_found_in_trash'  => __( 'Não se encontrou no lixo', 'text_domain' ),
    );
    $args = array(
        'label'               => __( 'contactos', 'text_domain' ),
        'description'         => __( 'contactos no top do site', 'text_domain' ),
        'labels'              => $labels,
        'supports'            => array( 'title', 'editor' ),
        'hierarchical'        => false,
        'public'              => true,
        'show_ui'             => true,
        'show_in_menu'        => true,
        'show_in_nav_menus'   => false,
        'show_in_admin_bar'   => false,
        'menu_position'       => 5,
        'can_export'          => true,
        'has_archive'         => true,
        'exclude_from_search' => false,
        'publicly_queryable'  => true,
        'capability_type'     => 'post',
    );
    register_post_type( 'contactos', $args );

}
?>
