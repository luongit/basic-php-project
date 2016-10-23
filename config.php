<?php 
/*
	* Author: luongitvnsoft@gmail.com
	* Language: Vietnamme
	* Site url: http://itvnsoft.com
	* Youtube: Itvnsoft Web Developer
	* Phone:   0986 421 127
	* File config.php khai báo các biến và hằng toàn cụ để sử dụng chung cho toàn trang
*/

/* Thong tin về đường dân *************************/

define('DS', DIRECTORY_SEPARATOR);
define("ROOT_DIR_AD", str_replace('admin/index.php', '', $_SERVER['PHP_SELF']));
define("ROOT_DIR", str_replace('index.php', '', $_SERVER['PHP_SELF']));
define('HOME_URL','http://'.$_SERVER['HTTP_HOST'].str_replace('index.php', '', $_SERVER['PHP_SELF']));
define('LIBR', 'librs'.DS);
define('DEFAULT_TMPL', 'default');
define('TMPL', 'template'.DS);
define('ASSETS_PATH', 'assets/');
define('UPL_PATH', HOME_URL.'uploads/');

define('TMPL_SITE', 'template'.DS.DEFAULT_TMPL.DS);
/* Đwuongf dẫn vào admin folder *********************/

define('ADMIN_PATH', 'admin'.DS);
define('ADMIN_MODULE', 'modules'.DS);
define('ADMIN_ASSETS', '../assets/');
/* Thong tin kết nối database *********************/

define('HOST','localhost');
define('DB_NAME','basic_php');
define('DB_USER','root');
define('DB_PASS','');

/* Cấu hình rewrite đường dẫn *********************/
$config = [];
$config['rewrite_url_admin'] = false;
$config['rewrite_url_site'] = true;


require_once LIBR.'Database.php';
require_once LIBR.'Url_helper.php';
require_once LIBR.'String_helper.php';
require_once LIBR.'Validation.php';
require_once LIBR.'Functions.php';
require_once LIBR.'upload_file.php';
require_once LIBR.'Load_template.php';

/* Load các hàm kết nối và xử lý database *************************/


?>