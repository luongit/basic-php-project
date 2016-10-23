<?php 
session_start();
if(isset($_SESSION['userInfo'])){
	header('location: index.php');
}

require_once '../config.php';

?>
<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="ie6 ielt8"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="ie7 ielt8"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="ie8"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--> <html lang="en"> <!--<![endif]-->
<head>
<meta charset="utf-8">
<title>Đăng nhập hệ thống</title>
<link rel="stylesheet" href="<?php echo ADMIN_ASSETS; ?>/css/admin/login.css">
</head>
<body>
<?php 
	if(isset($_POST['submit'])){
		$errors = [];
		if(!post('username')) {
			$errors['Username'] = 'Tên đăng nhập không được để trống';
		}
		if(!post('password')) {
			$errors['Password'] = 'Mật khẩu không được để trống';
		}
		$data = getOne('user',[
				'username'=> $_POST['username'],
				'password'=> $_POST['password'],
		]);
		if(!$errors && $data)
		{
			$_SESSION['userInfo'] = $data;
			header('location: index.php');
		}else{
			$errors['Notdound'] = 'Tài khoản không tòn tại';
		}
	}
?>
<div class="container">
	<section id="content">
		<?php if(isset($errors) && count($errors) > 0) : $n=1; ?>
			<div class="alert alert-danger">
				<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
				<?php foreach($errors as $key => $er) : ?>
					<li><strong><?php echo $n; ?>  <?php echo $key; ?> !</strong> <?php echo $er; ?> </li>
				<?php $n++; endforeach; ?>
			</div>
		<?php endif; ?>
		<form action="" method="post">
			<h1>Login Form</h1>
			<div>
				<input type="text" placeholder="Username" id="username" name="username"/>
			</div>
			<div>
				<input type="password" placeholder="Password" id="password" name="password"/>
			</div>
			<div>
				<input type="submit" name="submit" value="Log in" />
				<a href="#">Lost your password?</a>
				<a href="#">Register</a>
			</div>
		</form><!-- form -->
		<div class="button">
			<a href="#">Download source file</a>
		</div><!-- button -->
	</section><!-- content -->
</div><!-- container -->
</body>
</html>