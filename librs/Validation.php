<?php 
function post($file){
	$value = $_POST[$file];
	if(!empty($value)){
		return true;
	}else{
		return false;
	}
}

?>