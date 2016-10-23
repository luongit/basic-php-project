<?php 
	/*
		Hiển thị danh sách danh mục dưới dạng paahn cấp cha con tron select bôx
	*/
	function DropdownListCategories($categories, $parent_id = 0, $char = '')
	{
	    foreach ($categories as $key => $item)
	    {
	        // Nếu là chuyên mục con thì hiển thị
	        if ($item['parent'] == $parent_id)
	        {
	            echo '<option value="'.$item[$key].'">';
	                echo $char . $item['name'];
	            echo '</option>';
	             
	            // Xóa chuyên mục đã lặp
	            unset($categories[$key]);
	             
	            // Tiếp tục đệ quy để tìm chuyên mục con của chuyên mục đang lặp
	            DropdownListCategories($categories, $item['id'], $char.'|--');
	        }
	    }
	}

	/*
		Hiển thị danh sách danh mục dưới dạng phân cấp cha con tron bảng table
	*/

	function TableCategories($categories, $parent_id = 0, $char = '')
	{
		$n=1;
	    foreach ($categories as $key => $item)
	    {
	        // Nếu là chuyên mục con thì hiển thị
	        if ($item['parent'] == $parent_id)
	        {
	            echo '<tr>';
	                echo '<td>'.$n.'</td>';
	                echo '<td>'.$item['name'].'</td>';
	                echo '<td>'.$item['slug'].'</td>';
	                echo '<td>';
	                	if($item['actived'] == 1){
	                		echo '<span class="label label-success">đã kích hoạt</span>';
	                	}else{
	                		echo '<span class="label label-danger">Ko kích hoạt</span>';
	                	}
	                echo '</td>';
	                echo '<td>';
	                	echo Url_to('Sửa','category/edit&id='.$item['id'],['class'=>'btn btn-sm btn-success']);
	                	echo Url_to('Xóa','category/index&id='.$item['id'],['class'=>'btn btn-sm btn-danger']);
	                echo '</td>';
	                   
	            echo '</tr>';
	             
	            // Xóa chuyên mục đã lặp
	            unset($categories[$key]);
	             
	            // Tiếp tục đệ quy để tìm chuyên mục con của chuyên mục đang lặp
	            TableCategories($categories, $item['id'], $char.'|---');
	        }

	       $n++;
	    }
	}

	/*
		Hiển thị danh mục với dang cây trong ul li
	*/
	function ListCategories($categories, $parent_id = 0, $char = '')
	{
	    // BƯỚC 2.1: LẤY DANH SÁCH CATE CON
	    $cate_child = array();
	    foreach ($categories as $key => $item)
	    {
	        // Nếu là chuyên mục con thì hiển thị
	        if ($item['parent'] == $parent_id)
	        {
	            $cate_child[] = $item;
	            unset($categories[$key]);
	        }
	    }
	     
	    // BƯỚC 2.2: HIỂN THỊ DANH SÁCH CHUYÊN MỤC CON NẾU CÓ
	    if ($cate_child)
	    {
	        echo '<ul>';
	        foreach ($cate_child as $key => $item)
	        {
	            // Hiển thị tiêu đề chuyên mục
	            echo '<li>'.$item['title'];
	             
	            // Tiếp tục đệ quy để tìm chuyên mục con của chuyên mục đang lặp
	            ListCategories($categories, $item['id'], $char.'|---');
	            echo '</li>';
	        }
	        echo '</ul>';
	    }
	}
?>