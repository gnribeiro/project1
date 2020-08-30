<?php 


define('EXT', '.php');
define('DOCROOT', realpath(dirname(__FILE__)).DIRECTORY_SEPARATOR);


if(is_file( $core = dirname(__FILE__).'/libs/Core.php' ) )
    include $core;


if(is_file( $customPostTypes = dirname(__FILE__).'/config/customPostTypes.php' ) )
    include($customPostTypes);


function _pr( $var ) {
    print( '<pre class="dump">' );
    var_dump( $var );
    print( '</pre>' );
}

add_action( 'admin_menu', 'remove_menus' );

function remove_menus(){
  
  remove_menu_page( 'index.php' );                  //Dashboard
  remove_menu_page( 'edit.php' );                   //Posts
  remove_menu_page( 'upload.php' );                 //Media
  remove_menu_page( 'edit.php?post_type=page' );    //Pages
  remove_menu_page( 'edit-comments.php' );          //Comments
  //remove_menu_page( 'themes.php' );                 //Appearance
  //remove_menu_page( 'plugins.php' );                //Plugins
  //remove_menu_page( 'users.php' );                  //Users
  //remove_menu_page( 'tools.php' );                  //Tools
  //remove_menu_page( 'options-general.php' );        //Settings
  
}

function my_login_logo() { ?>
    <style type="text/css">
        body.login div#login h1 a {
            background-image: url("<?php echo get_stylesheet_directory_uri(); ?>/images/logo-sometim.png");
            padding-bottom: 30px;
        }
           body.login  p#backtoblog{
            display: none;
           }
    </style>
<?php }
add_action( 'login_enqueue_scripts', 'my_login_logo' );

function my_login_logo_url() {
    return "http://sometim.com/";
}
add_filter( 'login_headerurl', 'my_login_logo_url' );

function my_login_logo_url_title() {
    return 'Site Sometim';
}
add_filter( 'login_headertitle', 'my_login_logo_url_title' );


add_action('admin_head', 'my_custom_css');

function my_custom_css() {
  echo '<style>
    .wp-list-table .row-actions span.view,
    #view-post-btn,
    #footer-thankyou,
    #wpadminbar   #wp-admin-bar-new-content,
    #wpadminbar   #wp-admin-bar-updates,
    #wpadminbar   #wp-admin-bar-comments,
    #wpadminbar   #wp-admin-bar-site-name,
    #dashboard-widgets,
    #wpadminbar #wp-admin-bar-wp-logo {
      display :none;
    } 
  </style>';
}

?>