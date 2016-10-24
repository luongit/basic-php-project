<?php 	

	if(isset($_POST['submit'])){
		$upload_dir = '../uploads/';
		$img  =  upload('image',$upload_dir);
		$errors = [];
		if(!post('title')) {
			$errors['title'] = 'Tiêu đề bài viết không được để trống';
		}
		if(!post('slug')) {
			$slug = slug($_POST['title']);
		}else{
			$slug = slug($_POST['slug']);
		}

		$data = [
			'title'=> trim($_POST['title']),
			'slug'=> $slug,
			'cate'=> $_POST['cate'],
			'image'=> $img,
			'actived'=> $_POST['actived'],
			'content'=> trim($_POST['content']),
		];

		if(!$errors && insert('post', $data)){
			header('location: ?r=post/index');
			$success = 'Thêm mới dữ liệu thành công';
		}

	}

?>
<div class="jumbotron">
	<div class="container">
		<h2>Thêm mới bài viết</h2>
		<?php Url_to('Quany về danh sách','post',['class'=>'btn btn-xs btn-primary']); ?>
		
		<?php if(isset($errors) && count($errors) > 0) : $n=1; ?>
			<div class="alert alert-danger">
				<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
				<?php foreach($errors as $key => $er) : ?>
					<li><strong><?php echo $n; ?>  <?php echo $key; ?> !</strong> <?php echo $er; ?> </li>
				<?php $n++; endforeach; ?>
			</div>
		<?php endif; ?>
		<?php if(isset($success)) : ?>
		<div class="alert alert-success">
			<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
			<strong>Ok!</strong> <?php echo $success; ?> ...
		</div>
		<?php endif; ?>
		<form action="" method="POST" role="form" enctype="multipart/form-data">
		<h2>Thêm mới bài viết</h2>
			<?php 
				$cats = getAll('category');
				// var_dump($cats);
			?>
			<div class="form-group">
				<label for="">Tiêu đề bài viết</label>
				<input type="text" class="form-control" name="title" placeholder="Nhập tên bài viết">
			</div>
			<div class="form-group">
				<label for="">Đường dẫn SEO</label>
				<input type="text" class="form-control" name="slug" placeholder="Đường dẫn tối ưu seo google">
			</div>
			<div class="row">
				<div class="col-md-4">
					<label for="">Chọn Danh mục</label>
				<input type="text" class="form-control" name="slug" placeholder="Đwuongf dẫn tối ưu seo google">
			</div>
			<div class="row">
				<div class="col-md-6">
					<label for="">Chọn Danh mục cha</label>
					<select name="cate" id="input" class="form-control" >
						<option value="">Không có</option>
					
						<?php if($cats) : foreach($cats as $item): ?>
							<option value="<?php echo $item['id']; ?>"><?php echo $item['name']; ?></option>
						<?php endforeach; endif; ?>
					</select>
				</div>
				<div class="col-md-4">
					<label for="">Chọn trạng thái</label>
					<select name="actived" id="input" class="form-control">
						<option value="1">Kích hoạt</option>
						<option value="0">Không kích hoạt</option>
					</select>
				</div>
				<div class="col-md-4">
					<label for="">Chọn ảnh đại diện</label>
					<div class="clearfix"></div>
					<div class="form-group col-md-6">
						<img id="blah" src="" class="img-responsive"/>
					</div>
					<div class="form-group col-md-6">
					<input type="text" class="form-control" name="post-image">
					<input type="file" class="form-control" name="image" placeholder="Đwuongf dẫn tối ưu seo google" id="myFile">
					</div>
				</div>
			</div>
			<div class="form-group">
				<label for="">Nội dung bài viết</label>
				<textarea name="content" id="content" class="form-control" rows="3" ></textarea>
			</div>
			<button type="submit" name='submit' class="btn btn-primary">Thêm mới</button>
			<button type="submit" class="btn btn-primary">Thêm mới</button>
		</form>
	</div>
</div>