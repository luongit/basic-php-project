<div id="carousel-id" class="carousel slide" data-ride="carousel">
	<ol class="carousel-indicators">
		<li data-target="#carousel-id" data-slide-to="0" class=""></li>
		<li data-target="#carousel-id" data-slide-to="1" class=""></li>
		<li data-target="#carousel-id" data-slide-to="2" class="active"></li>
	</ol>
	<div class="carousel-inner">
		<div class="item">
			<img src="<?php echo HOME_URL.ASSETS_PATH ?>images/banner-book.jpg">
			<div class="container">
				<div class="carousel-caption">
					<h1>Example headline.</h1>
					<p>Note: If you're viewing this page via a <code>file://</code> URL, the "next" and "previous" Glyphicon buttons on the left and right might not load/display properly due to web browser security rules.</p>
					<p><a class="btn btn-lg btn-primary" href="#" role="button">Sign up today</a></p>
				</div>
			</div>
		</div>
		<div class="item">
			<img src="<?php echo HOME_URL.ASSETS_PATH ?>images/banner-book-1.jpg">
			<div class="container">
				<div class="carousel-caption">
					<h1>Another example headline.</h1>
					<p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
					<p><a class="btn btn-lg btn-primary" href="#" role="button">Learn more</a></p>
				</div>
			</div>
		</div>
		<div class="item active">
			<img src="<?php echo HOME_URL.ASSETS_PATH ?>images/banner-book-2.jpg">
			<div class="container">
				<div class="carousel-caption">
					<h1>One more for good measure.</h1>
					<p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
					<p><a class="btn btn-lg btn-primary" href="#" role="button">Browse gallery</a></p>
				</div>
			</div>
		</div>
	</div>
	<a class="left carousel-control" href="#carousel-id" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
	<a class="right carousel-control" href="#carousel-id" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
</div>
<?php $data = getAll('post'); ?>
<?php if($data): ?>
<div class="row books">
<?php foreach($data as $item) : ?>
	<div class="boock-item">
		<div class="boock-img col-md-2">
			<img src="<?php echo UPL_PATH.$item['image']; ?>" alt="<?php echo $item['title']; ?>" class="img-responsive">
		</div>
		<div class="info col-md-10">
			<h2 class="book-title">
				<?php Url_to($item['title'],'post&id='.$item['id']); ?>
			</h2>	
			<p><?php echo $item['content']; ?></p>
		</div>
	</div>
	<div class="clearfix"></div>
<?php endforeach; ?>
</div>
<?php endif; ?>