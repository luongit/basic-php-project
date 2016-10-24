<?php 

function upload($file,$dir = ''){
	/*
		Kiểm tra tồn tại biến $_FILES gưi lên từ fom
		* Để có biến file thì trong thẻ mở form cần khai báo thuộc tính enctype="multipart/form-data"
	*/
	if(isset($_FILES[$file])){

		$file = $_FILES[$file];

		$file_name = set_filename($dir,$file['name']); // Lấy fulle tên file VD: thumbnail.png

		$file_type = get_extension($file['name']); // lấy kiêu file trả về dạng .png, .jpg, .gif

		$tmp_name = $file['tmp_name']; // Láy thông tin file tại thư mục tạm trên server

		$size = $file['size']; // dung lượng file trả về byte

		$file_path = $dir.$file_name;

		/*
			Khai báo kieur file cho phep
		*/
		$type_allowed = array(
			'.jpg','.png','.gif'
		);
		// Kiểm tra nếu kiểu file cho phép và file upload thành công sẽ trả về true
		// Hàm move_uploaded_file($temp,$upload) của PHP tryền vào 2 tham số 
		// Tham số temp là thông tin tại thư mục tạm trên server
		// $upload là đường dẫn thư mục upload công với tên file vd uploads/thumbnial.png

		if(in_array($file_type, $type_allowed) && move_uploaded_file($tmp_name,$file_path)){
			return $file_name;
		}else{
			return false;
		}
	}else{
		return false;
	}
}

/*
	* Hàm này chỉ đơn giản là trả về kiểu file .png, .jpg, .gif ...
*/
function get_extension($filename)
{
	$ext = pathinfo($filename, PATHINFO_EXTENSION);
	return '.'.$ext;
}
/*
	* Hàm này kiểm tra nếu file upload bị trùng tên thì sẽ cộng vào sau một ký tự khác để không bị trùng nữa
	* Cách sử dụng: truyền vào 2 tham số là đường dẫn thư mục và tên file
	* Nó cho pheps bắt trùng đén 100 file tùy vào số lần lặp trong vòng for phía dưới
*/
function set_filename($path, $filename)
{
 	if ( ! file_exists($path.$filename))
	{
		return $filename;
	}

	$file_name = str_replace(get_extension($filename), '', $filename);

	$new_filename = $filename;

	// Tạo còng lặp for chạy từ 1 -> 100, bạn có thể tăng giảm thông số này
	// mục đích để kiểm tra nếu tên file đã tồng tại thì cộng vào số 1 sau tên file để chống trùng tên VD thum.png và thumb-1.png

	for ($i = 1; $i < 100; $i++)
	{
		if (!file_exists($path.$file_name.'-'.$i.get_extension($filename)))
		{
			$new_filename = $file_name.'-'.$i.get_extension($filename);
			break;
		}
	}

	return $new_filename;
}
?>
