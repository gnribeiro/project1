<?php 
//echo var_dump($_GET['lang']);

 ini_get('display_errors');
ini_set('error_reporting', E_ALL);
define('DOCROOT', realpath(dirname(__FILE__)).DIRECTORY_SEPARATOR);

require_once(DOCROOT . 'application/base.php');

$site = new Controller_Site();

$site->index();

?>
