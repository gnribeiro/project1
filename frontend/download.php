<?php


if(isset($_GET['file']) && !empty($_GET['file']) ) {

    include('application/libs/Download.php');

    $file = $_GET['file'];
    
    $path =  realpath(dirname(__FILE__)) . DIRECTORY_SEPARATOR . $file ;

    if( is_file(   $path ) ) {
        $download = new Download();
        $download->download($path ); 
    }    
}




?>