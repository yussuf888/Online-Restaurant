<?php
# FileName="Connection_php_mysql.htm"
# Type="MYSQL"
# HTTP="true"
$hostname_Applebee = "localhost";
$database_Applebee = "applebee";
$username_Applebee = "root";
$password_Applebee = "";
$Applebee = mysql_pconnect($hostname_Applebee, $username_Applebee, $password_Applebee) or trigger_error(mysql_error(),E_USER_ERROR); 
?>