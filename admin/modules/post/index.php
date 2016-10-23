<?php $data = getAll('post'); ?>
<div class="btn-group">
	<?php echo Url_to('Thêm mới bài viết','post/add',['class'=>'btn btn-primary']); ?>
</div>
<?php 
if(isset($_GET['id']) && getOne('post',['id'=>$_GET['id']])) :
	$data = ['id'=>$_GET['id']];
	if(delete('post', $data)){
		header('location: ?r=post/index');
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
			<th>Hình ảnh</th>
			<th>Tên bài viết</th>
			<th>Trạng thái</th>
			<th>Hành động</th>
		</tr>
	</thead>
	<?php if($data): $n = 1;?>
	<tbody>
	<?php foreach($data as $item) : 
		$cat = getone('category',['id'=>$item['cate']]);
		$cate_name=($cat) ? $cat['name'] : '';
	?>
		<tr>
			<td width="5%"><?php echo $n; ?></td>
			<td width="10%"> <img src="../uploads/<?php echo $item['image']; ?>" class="img-responsive"></td>
			<td >
			<strong><?php echo $item['title']; ?></strong>
			<p><?php echo substr($item['content'], 0,200); ?></p>
			<p><strong>Slug:</strong> <?php echo $item['slug']; ?></p>
			<p><strong>Danh mục:</strong> <?php echo $cate_name; ?></p>
			</td>
			<td width="10%">
				<?php if($item['actived'] == 1) : ?>
					<span class="label label-success">Đã kích hoạt</span>
				<?php else : ?>
					<span class="label label-danger">Ko kích hoạt</span>
				<?php endif; ?>
			</td>
			<td width="15%">
				<?php echo Url_to('Sửa','post/edit&id='.$item['id'],['class'=>'btn btn-sm btn-success']); ?>
				<?php echo Url_to('Xóa','post/index&id='.$item['id'],['class'=>'btn btn-sm btn-danger']); ?>
			</td>
		</tr>
	<?php $n++;endforeach; ?>
	</tbody>
	<?php else: ?>
		<div class="alert alert-danger">
			<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
			<strong>Notfound </strong> Không tìm thấy dữ liệu ...
		</div>
	<?php endif; ?>
</table>