<?php $data = getAll('category'); ?>
<div class="btn-group">
	<?php echo Url_to('Thêm mới danh mục','category/add',['class'=>'btn btn-primary']); ?>
</div>
<?php 
if(isset($_GET['id']) && getOne('category',['id'=>$_GET['id']])) :
	$data = ['id'=>$_GET['id']];
	if(delete('category', $data)){
		header('location: ?r=category/index');
		$success = 'Xóa dữ liệu thành công';
	}
?>

<?php endif; ?>
<?php if(isset($success)) : ?>
	<div class="alert alert-success">
		<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
		<strong>Ok!</strong> <?php echo $success; ?> ...
	</div>
<?php endif; ?>
<table class="table table-hover">
	<thead>
		<tr>
			<th>STT</th>
			<th>Tên danh mục</th>
			<th>Đường dẫn</th>
			<th>Trạng thái</th>
			<th>Hành động</th>
		</tr>
	</thead>
	<?php if($data): $n = 1;?>
	<tbody>
	<?php TableCategories($data); ?>
	</tbody>
	<?php else: ?>
		<div class="alert alert-danger">
			<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
			<strong>Notfound </strong> Không tìm thấy dữ liệu ...
		</div>
	<?php endif; ?>
</table>