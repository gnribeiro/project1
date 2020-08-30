<?php
  class Model {
      function __construct() {

       // require_once('Controller.php');
        ORM::configure('mysql:host=localhost;dbname=DATABASE_NAME;charset=UTF8');
        ORM::configure('username', 'DATABASE_USER');
        ORM::configure('password', 'DATABASE_PASSWORD');

        ORM::configure('return_result_sets', true);
      }
  }
?>
