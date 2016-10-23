<?php 	
if(isset($_GET['id']) && getOne('category',['id'=>$_GET['id']])) :
	$datap = getOne('category',['id'=>$_GET['id']]);

	if(isset($_POST['submit'])){
		$errors = [];
		if(!post('name')) {
			$errors['name'] = 'Tên không được để trống';
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
		if(!$errors && update('category',['id'=>$_GET['id']], $data)){

			$success = 'Cập nhật dữ liệu thành công';
		}
	}
?>
<div class="jumbotron">
	<div class="container">
		<h2>Chỉnh sủa danh mục</h2>
		<?php Url_to('Quany về danh sách','category',['class'=>'btn btn-xs btn-primary']); ?>
		<?php Url_to('Thêm mới bài viết','category/add',['class'=>'btn btn-xs btn-success']); ?>
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
				<label for="">Tiêu đề bài viết</label>
				<input type="text" class="form-control" name="name" placeholder="Nhập tên bài viết" value="<?php echo $datap['name']; ?>">
			</div>
			<div class="form-group">
				<label for="">Đường dẫn SEO</label>
				<input type="text" class="form-control" name="slug" placeholder="Đường dẫn tối ưu seo google" value="<?php echo $datap['slug']; ?>">
			</div>
			<div class="row">
				<div class="col-md-4">
					<label for="">Chọn Danh mục cha</label>
					<select name="parent" id="input" class="form-control" >
						<option value="">Không có</option>
					
					<?php 
						if($cats) : foreach($cats as $item): 
						$selected = ($item['id'] == $datap['parent']) ? ' selected' : ''; 
					?>
							<option value="<?php echo $item['id']; ?>"><?php echo $item['name']; ?></option>
						<?php endforeach; endif; ?>
					</select>
				</div>
				<div class="col-md-4">
					<label for="">Chọn trạng thái</label>
					<select name="actived" id="input" class="form-control">
						<option value="1" <?php if($datap['actived'] == 1) echo 'selected'; ?>>Kích hoạt</option>
						<option value="0" <?php if($datap['actived'] == 0) echo 'selected'; ?>>Không kích hoạt</option>
					</select>
				</div>
			</div>
			
			<button type="submit" name='submit' class="btn btn-primary">Cập nhật</button>
		</form>
	</div>
</div>
<?php else: ?>
	<div class="alert alert-danger">
		<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
		<strong>Error ! </strong> Không tìm thấy dữ liệu
	</div>
<?php endif; ?>