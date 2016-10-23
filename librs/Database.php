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
   $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
   $db->exec("set names utf8");

   /*
		function getAll() lấy tất cả dữ liệu trong bảng và trả về mảng dữ liệu
		Ví dụ getAll('posr',10)
		Nó sẽ trả về câu lệnh sql : "SELECT * FROM post LIMIT 10"
   */

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
	* Ví dụ: getOne('post',['id'=>$_GET['id']])
	*nó sẽ trả về lênh sql "SELECT * FROM post WHERE id = '$_GET['id']'")
   */

	function getOne($table,$where){
		global $db;
		$datawhere = "Where ";
		$and = (count($where) ==1 ) ? '' : ' AND ';
		foreach($where as $wk => $wval){
			$datawhere .= $wk."='".$wval."'".$and;
		}
		$datawhere = rtrim($datawhere,' AND');
	   	$sql = "SELECT * FROM $table $datawhere LIMIT 1";
	   	$stmt = $db->prepare($sql);
	   	$stmt->execute();
	    $stmt->setFetchMode(PDO::FETCH_ASSOC);
	   	return $stmt->fetch();
	}

	/*
		function insert() Insert dữ liệu vào database
		* Dữ liệu truyenfuyeenf vào là một mảng
		* VÍ dụ: insert('category',array('name'=>'danh mục 1','slug'->'danh-muc-1','parent'=>0))
		*trong đó $data là một mảng dữ liệu
		*nó sẽ trả về lênh sql "Insert into post(name,slug,parent) values(name = danh mục 1', slug = 'danh-muc-1', parent = '1')
   */

	function insert($table,$data){
		global $db;
		if(isset($data) && is_array($data)){
			$files = array_keys($data);
			$files = implode($files, ',');
			$values = array_values($data);
			$values = implode($values, "','");
			
			$sql = "Insert Into $table($files) values('$values')";
			// $conn->exec($sql)
	   		$db->exec($sql);
	   		return $db->lastInsertId();
		}else{
			return false;
		}
		
	}
	
	/*
		function update() sử dụng khi chính sửa thong tin dữ lieuj tren form
		cách sử dụng update('post',['id'=>$_GET['id']], $data)
		trong đó $data là một mảng dữ liệu
		['id'=>$_GET['id']] là diều kiện
		nó sẽ trả về lênh sql "Update post Set column1 = 'value colimn 1"... Where id = 1...
	*/

	function update($table,$where, $data){
		global $db;
		$datawhere = "Where ";
		$and = (count($where) ==1 ) ? '' : ' AND ';
		$dataSet = 'Set ';
		if(isset($data) && is_array($data)){
			
			foreach($data as $dk => $dval){
				// $dataSet .= $dk.'='.$dval;
				$dataSet .=$dk."='".$dval."',";
			}
			$dataSet = rtrim($dataSet,',');
			foreach($where as $wk => $wval){
				$datawhere .= $wk."='".$wval."'".$and;
			}

			$datawhere = rtrim($datawhere,' AND');

			$sql = "UPDATE $table $dataSet $datawhere";
			$stmt = $db->prepare($sql);
	   		return $stmt->execute();;
		}else{
			return false;
		}
		
	}

	/*
		function delete() sử dụng khi xóa thong tin dữ liẹu
		cách sử dụng delete('post',['id'=>$_GET['id']]
		['id'=>$_GET['id']] là diều kiện
		nó sẽ trả về lênh sql "Delete From post Where id = 1...
	*/

	function delete($table,$where){
		global $db;
		if(isset($where) && is_array($where)){
			$datawhere = "Where ";
			$and = (count($where) ==1 ) ? '' : ' AND ';
			foreach($where as $wk => $wval){
				$datawhere .= $wk."='".$wval."'".$and;
			}

			$datawhere = rtrim($datawhere,' AND');

			$sql = "DELETE FROM $table $datawhere";
		    return $db->exec($sql);
		 }else{
		 	return false;
		 }
	}


} catch (PDOException $e) {
    die( "Error!: " . $e->getMessage());
}

?>
