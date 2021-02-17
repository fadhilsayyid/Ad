<?php
defined('server') ? null : define("server", "d6rii63wp64rsfb5.cbetxkdyhwsb.us-east-1.rds.amazonaws.com");
defined('user') ? null : define ("user", "ybeo02z5ty73obuk") ;
defined('pass') ? null : define("pass","haub6ac9m9k98eed");
defined('database_name') ? null : define("database_name", "db_elearning") ;

$this_file = str_replace('\\', '/', __File__) ;
$doc_root = $_SERVER['DOCUMENT_ROOT'];

$web_root =  str_replace (array($doc_root, "include/config.php") , '' , $this_file);
$server_root = str_replace ('config/config.php' ,'', $this_file);


define ('web_root' , $web_root);
define('server_root' , $server_root);
?>
