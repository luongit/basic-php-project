<?php $data = getAll('user'); ?>
<div class="btn-group">
	<?php echo Url_to('Thêm mới tài khoản','user/add',['class'=>'btn btn-primary']); ?>
</div>
<?php 
if(isset($_GET['id']) && getOne('user',['id'=>$_GET['id']])) :
	$data = ['id'=>$_GET['id']];
	if(delete('user', $data)){
		header('location: ?r=user/index');
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
			<th>Tên tài khoản</th>
			<th>Email</th>
			<th>Mật khẩu</th>
			<th>Trạng thái</th>
			<th>Hành động</th>
		</tr>
	</thead>
	<?php if($data): $n = 1;?>
	<tbody>
	<?php foreach($data as $item) : 
	?>
		<tr>
			<td width="5%"><?php echo $n; ?></td>
			
			<td><strong><?php echo $item['username']; ?></strong></td>
			<td><strong><?php echo $item['email']; ?></strong></td>
			<td><strong><?php echo $item['password']; ?></strong></td>
			<td width="10%">
				<?php if($item['actived'] == 1) : ?>
					<span class="label label-success">Đã kích hoạt</span>
				<?php else : ?>
					<span class="label label-danger">Ko kích hoạt</span>
				<?php endif; ?>
			</td>
			<td width="15%">
				<?php echo Url_to('Sửa','user/edit&id='.$item['id'],['class'=>'btn btn-sm btn-success']); ?>
				<?php echo Url_to('Xóa','user/index&id='.$item['id'],['class'=>'btn btn-sm btn-danger']); ?>
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