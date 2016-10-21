<?php 
/*	* Author: luongitvnsoft@gmail.com
	* Language: Vietnamme
	* Site url: http://itvnsoft.com
	* Youtube: Itvnsoft Web Developer
	* Phone:   0986 421 127
	* File load_template.php là file kiểm tra và gọi các view tương ứng

	* kiểm tra nếu có biến $_GET trên đường dẫn thì láy giá trị của nó
	* biến get sẽ truyenf dưới dạng http://localhost/project/basic-basic/?r=blog/param
	* Đê ý tham só sau ?r= chính là biến $_GET['r'] = blog/param; 
	* trong đó blog là tên file trong thư mục template site
	* tham só parame là các gí trị đi sau nó nư id, slug ....
*/

/*
	* function getUrl() trả về gí trị đường dẫn là một mảng
*/
function getUrl(){
	if(isset($_GET['r']) && $_GET['r'] != ''){
		return $url = explode('/',filter_var(rtrim($_GET['r'],'/'),FILTER_SANITIZE_URL));
	}else{
		return false;
	}
}

function load_template(){
	$view = 'home';
	$url = getUrl();
	if($url){
		$view = $url[0];
	}
	$viewPath = TMPL_SITE.$view.'.php';
	/*
		* Gọi file view tương ứng trên url
	*/
	if(file_exists($viewPath)){
		require_once $viewPath; 
	}else{
		require_once TMPL.'error.php'; 
	}
}

?>