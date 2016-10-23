<?php 
if(isset($_GET['id'])){
	$book = getOne('post',['id'=>$_GET['id']]);
}else{
	$book = false;
}
?>
<div class="book-single">
<?php if($book) : ?>
	<h1 class="book-title">
		<?php echo $book['title']; ?>
	</h1>
	<p>
		<?php echo $book['content']; ?>
	</p>
<?php else: ?>
	<div class="alert alert-danger">
		<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
		<strong>Error ! </strong> Không tìm tháy dữ liệu ...
	</div>
<?php endif ?>
</div>