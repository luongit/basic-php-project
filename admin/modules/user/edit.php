<?php 	
if(isset($_GET['id']) && getOne('user',['id'=>$_GET['id']])) :
	$datap = getOne('user',['id'=>$_GET['id']]);

	if(isset($_POST['submit'])){
		$errors = [];
		if(!post('username')) {
			$errors['username'] = 'Tên tài khoản không được để trống';
		}
		if(!post('password')) {
			$errors['password'] = 'Mật khẩu không được để trống';
		}
		
		$data = [
			'username'=> trim($_POST['username']),
			'email'=> trim($_POST['email']),
			'password'=> trim($_POST['password']),
			'actived'=> $_POST['actived'],
		];
		if(!$errors && update('user',['id'=>$_GET['id']], $data)){

			$success = 'Cập nhật dữ liệu thành công';
		}
	}
?>
<div class="jumbotron">
	<div class="container">
		<h2>Chỉnh sủa tài khoản</h2>
		<?php Url_to('Quany về danh sách','user',['class'=>'btn btn-xs btn-primary']); ?>
		<?php Url_to('Thêm mới bài viết','user/add',['class'=>'btn btn-xs btn-success']); ?>
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
				<input type="text" class="form-control" name="username" placeholder="Nhập tên tài khoản " value="<?php echo $datap['username']; ?>">
			</div>	<div class="form-group">
				<label for="">Email</label>
				<input type="email" class="form-control" name="email" placeholder="Nhập tên tài khoản " value="<?php echo $datap['email']; ?>">
			</div>
			<div class="form-group">
				<label for="">Mật khẩu</label>
				<input type="password" class="form-control" name="password" placeholder="password" value="<?php echo $datap['password']; ?>">
			</div>
			<div class="row">
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