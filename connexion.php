<?php
/**
 * Created by PhpStorm.
 * User: Ayoub
 * Date: 01/07/2016
 * Time: 18:44
 */
$conn=mysql_connect("localhost","root","") or die(mysql_error());
mysql_select_db("db_catalogue",$conn) or die(mysql_error());
?>