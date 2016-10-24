<?php 	

	if(isset($_POST['submit'])){
		$errors = [];
		if(!post('name')) {
			$errors['name'] = 'TTên không được để trống';
		}
		if(!post('slug')) {
			$slug = slug($_POST['name']);
		}else{
			$slug = slug($_POST['slug']);
		}

		$data = [
			'name'=> trim($_POST['name']),
			'slug'=> $slug,
			'parent'=> trim($_POST['parent']),
			'actived'=> $_POST['actived'],
		];

		if(!$errors && insert('category', $data)){
			header('location: ?r=category/index');
			$success = 'Thêm mới dữ liệu thành công';
		}
	}
?>
<div class="jumbotron">
	<div class="container">
		<h2>Thêm mới danh mục</h2>
		<?php Url_to('Quany về danh sách','category',['class'=>'btn btn-xs btn-primary']); ?>
		
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
		<form action="" method="POST" role="form">
			<?php 
				$cats = getAll('category');
				// var_dump($cats);
			?>

			<div class="form-group">
				<label for="">Tên danh mục</label>
				<input type="text" class="form-control" name="name" placeholder="Tên danh mục">
			</div>
			<div class="form-group">
				<label for="">Đường dẫn SEO</label>
				<input type="text" class="form-control" name="slug" placeholder="Đường dẫn tối ưu seo google">
			</div>
			<div class="row">
				<div class="col-md-4">
					<label for="">Chọn Danh mục cha</label>

					<select name="parent" id="input" class="form-control" >
						<option value="0">Không có</option>
						<?php DropdownListCategories($cats); ?>
						<!-- <?php if($cats) : foreach($cats as $item): ?>
							<option value="<?php echo $item['id']; ?>"><?php echo $item['name']; ?></option>
						<?php endforeach; endif; ?> -->
					</select>
				</div>
				<div class="col-md-4">
					<label for="">Chọn trạng thái</label>
					<select name="actived" id="input" class="form-control">
						<option value="1">Kích hoạt</option>
						<option value="0">Không kích hoạt</option>
					</select>
				</div>
			</div>
			
			<button type="submit" name='submit' class="btn btn-primary">Thêm mới</button>
		</form>
	</div>
</div>