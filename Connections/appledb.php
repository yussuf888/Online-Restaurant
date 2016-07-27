<?php
# FileName="Connection_php_mysql.htm"
# Type="MYSQL"
# HTTP="true"
$hostname_appledb = "localhost";
$database_appledb = "applebeedb";
$username_appledb = "root";
$password_appledb = "";
$appledb = mysql_pconnect($hostname_appledb, $username_appledb, $password_appledb) or trigger_error(mysql_error(),E_USER_ERROR); 
?>