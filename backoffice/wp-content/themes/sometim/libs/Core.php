<?php 

$views  = 'views';
$libs   = 'libs';
$config = 'config';

if ( ! is_dir($views) AND is_dir(DOCROOT.$views)){
      $views = DOCROOT.$views;
}
 
if ( ! is_dir($libs) AND is_dir(DOCROOT.$libs)){
    $libs = DOCROOT.$libs;
}

if ( ! is_dir($config) AND is_dir(DOCROOT.$config)){
    $config = DOCROOT.$config;
}

define('VIEWS'      , realpath($views).DIRECTORY_SEPARATOR);
define('LIBS'      , realpath($libs).DIRECTORY_SEPARATOR);
define('CONFIG'    , realpath($config).DIRECTORY_SEPARATOR);
define('THEMEURL'  , get_template_directory_uri().DIRECTORY_SEPARATOR);
define('THEMEPATH' , get_template_directory().DIRECTORY_SEPARATOR);

unset($libs, $views, $config);

add_theme_support( 'post-thumbnails' );

$load_libs = array(
    'View',
    'Base',
    'Site',
);


foreach ($load_libs as $value) 
{

    if(is_file( $class = LIBS . $value . EXT ))
        include $class ; 
     
}
?>