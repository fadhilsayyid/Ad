<?php
defined('server') ? null : define("server", "us-cdbr-east-03.cleardb.com");
defined('user') ? null : define ("user", "bae772058f461c") ;
defined('pass') ? null : define("pass","7796a4b3");
defined('database_name') ? null : define("database_name", "heroku_b3d8476f8671abf") ;

$this_file = str_replace('\\', '/', __File__) ;
$doc_root = $_SERVER['DOCUMENT_ROOT'];

$web_root =  str_replace (array($doc_root, "include/config.php") , '' , $this_file);
$server_root = str_replace ('config/config.php' ,'', $this_file);


define ('web_root' , $web_root);
define('server_root' , $server_root);
?>
