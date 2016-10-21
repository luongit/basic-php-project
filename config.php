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
define('HOME_URL','http://'.$_SERVER['HTTP_HOST'].str_replace('index.php', '', $_SERVER['PHP_SELF']));
define('LIBR', 'librs'.DS);
define('DEFAULT_TMPL', 'default');
define('TMPL', 'template'.DS);
define('ASSETS_PATH', 'assets/');
define('TMPL_SITE', 'template'.DS.DEFAULT_TMPL.DS);
/* Thong tin kết nối database *********************/

define('HOST','localhost');
define('DB_NAME','basic_php');
define('DB_USER','root');
define('DB_PASS','');

/* Cấu hình rewrite đường dẫn *********************/

require_once LIBR.'Database.php';
require_once LIBR.'Load_template.php';

/* Load các hàm kết nối và xử lý database *************************/


?>