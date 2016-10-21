<?php 
/*
	* Author: luongitvnsoft@gmail.com
	* Language: Vietnamme
	* Site url: http://itvnsoft.com
	* Youtube: Itvnsoft Web Developer
	* Phone:   0986 421 127
	* File index.php là file trung tâm, file được loát đàu tiên khi chay dự án
*/

/* Gọi file config.php vào để sử dụng các biến và hằng cũng như các thư viện *************************/

require_once 'config.php';

require_once TMPL_SITE.'header.php';

// kiem tra bien $_GET['r']
//  $view = 'home';
// 	$url = isset($_GET['r']) ? explode('/',rtrim($_GET['r'],'/')) : false;
	
// 	if($url){
// 		$view = $url[0];
// 	}
// 	$viewPath = TMPL_SITE.$view.'.php';
	
// 		* Gọi file view tương ứng trên url
	
// 	if(file_exists($viewPath)){
// 		require_once $viewPath; 
// 	}else{
// 		require_once TMPL.'error.php'; 
// 	}

// Thay vi goi ca doan code dai loang ngang o day 
// chung ta co the viet no vao trong file librs/Load_template.php
// file nay duoc goi lai trong file config.php
// sau do goi lai hàm load_template();

load_template();

require_once TMPL_SITE.'footer.php';

?>
