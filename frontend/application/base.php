<?php
define('EXT', '.php');

$system      = 'system';
$application = 'application';
$libs        = 'libs';
 
if ( ! is_dir($application) AND is_dir(DOCROOT.$application)){
      $application = DOCROOT.$application;
};
 

if ( ! is_dir($system) AND is_dir( DOCROOT.$application.DIRECTORY_SEPARATOR.$system)){
    $system = DOCROOT.$application.DIRECTORY_SEPARATOR.$system;
};


if ( ! is_dir($libs) AND is_dir( DOCROOT.$application.DIRECTORY_SEPARATOR.$libs)){
    $libs = DOCROOT.$application.DIRECTORY_SEPARATOR.$libs;
};


define('APPPATH'   , realpath($application).DIRECTORY_SEPARATOR);
define('SYSPATH'   , realpath($system).DIRECTORY_SEPARATOR);
define('LIBSPATH'  , realpath($libs).DIRECTORY_SEPARATOR);



unset($application, $libs, $system);




require_once(SYSPATH . 'lib/ClassAutoloader.php');

$autoloader = new ClassAutoloader();


?>