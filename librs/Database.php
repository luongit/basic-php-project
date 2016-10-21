<?php 
/*
	* Author: luongitvnsoft@gmail.com
	* Language: Vietnamme
	* Site url: http://itvnsoft.com
	* Youtube: Itvnsoft Web Developer
	* Phone:   0986 421 127
	* File Database.php 
	* khai báo các thông tin kết nối database
	* ccs hằng số HOST DB_NAME DB_USER DB_PASS khai bóa bên file config.php
*/
try {
   $db = new PDO('mysql:host='.HOST.';dbname='.DB_NAME, DB_USER, DB_PASS);
   $db->exec("set names utf8");
   function getAll($table,$limit = 10){
	   	global $db;
	   	$sql = "SELECT * FROM $table LIMIT $limit";
	   	$stmt = $db->prepare($sql);
	   	$stmt->execute();
	    $stmt->setFetchMode(PDO::FETCH_ASSOC);
	   	return $stmt->fetchAll();
   }

   /*
	function getOne() tra ve mot dòng dữ liệu với điều kiện truyền vào
   */

	function getOne($table,$where = []){
		$sql = "SELECT * FROM $table LINIT $limit";
	   	$db->query($sql);
	}
	
} catch (PDOException $e) {
    die( "Error!: " . $e->getMessage());
}

?>
