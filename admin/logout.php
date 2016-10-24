<?php session_start();

if ($_SESSION['userInfo']) {
 	session_unset($_SESSION['userInfo']);
 	header('location: login.php');
 } 
 ?>