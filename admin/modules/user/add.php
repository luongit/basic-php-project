<?php 	

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

		if(!$errors && insert('user', $data)){
			header('location: ?r=user/index');
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
				<label for="">Tên tài khoản</label>
				<input type="text" class="form-control" name="username" placeholder="Tên tài khoản">
			</div>
			<div class="form-group">
				<label for="">Email</label>
				<input type="email" class="form-control" name="email" placeholder="Địa chỉ email ..">
			</div>
			<div class="form-group">
				<label for="">Email</label>
				<input type="password" class="form-control" name="password" placeholder="password ..">
			</div>
			<div class="row">
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