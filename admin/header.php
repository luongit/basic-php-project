<?php 
session_start();
if(!isset($_SESSION['userInfo'])){
	header('location: login.php');
}
?>

<!DOCTYPE html>
<html lang="">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Title Page</title>

		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="<?php echo ADMIN_ASSETS; ?>/css/bootstrap.min.css">
		<link rel="stylesheet" href="<?php echo ADMIN_ASSETS; ?>/css/style.css">
	</head>
	<body>
		<div class="container-fluid">
			
		<nav class="navbar navbar-inverse" role="navigation">
			<div class="container-fluid">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#">Title</a>
				</div>
		
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse navbar-ex1-collapse">
					<ul class="nav navbar-nav">
						<li><?php Url_to('Bảng điều khiển','home'); ?> </li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">Bài viết <b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li>
									<?php Url_to('Danh sách bài viết','post'); ?>
								</li>
								<li>
									<?php Url_to('Thêm mới bài viết','post/add'); ?>
								</li>
								<li><
									<?php Url_to('Danh mục bài viết','category'); ?>
								</li>
								
							</ul>
						</li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">Tài khoản <b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li>
									<?php Url_to('Danh sách Tài khoản','user'); ?>
								</li>
								<li>
									<?php Url_to('Thêm mới Tài khoản','user/add'); ?>
								</li>
							</ul>
						</li>
					</ul>
					<form class="navbar-form navbar-left" role="search">
						<div class="form-group">
							<input type="text" class="form-control" placeholder="Search">
						</div>
						<button type="submit" class="btn btn-default">Submit</button>
					</form>
					<ul class="nav navbar-nav navbar-right">
				
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">Hi <?php echo $_SESSION['userInfo']['username']; ?> <b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="logout.php">Logout</a></li>
							</ul>
						</li>
					</ul>
				</div><!-- /.navbar-collapse -->
			</div>
		</nav>