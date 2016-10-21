<?php $data = getAll('post'); ?>
<div class="btn-group">
	<?php echo Url_to('Thêm mới bài viết','post/add',['class'=>'btn btn-primary']); ?>
</div>
<table class="table table-hover">
	<thead>
		<tr>
			<th>STT</th>
			<th>Hình ảnh</th>
			<th>Tên bài viết</th>
			<th>Đường dẫn</th>
			<th>Danh mục</th>
			<th>Trạng thái</th>
			<th>Hành động</th>
		</tr>
	</thead>
	<?php if($data): $n = 1;?>
	<tbody>
	<?php foreach($data as $item) : ?>
		<tr>
			<td><?php echo $n; ?></td>
			<td><?php echo $n; ?></td>
			<td><?php echo $item['title']; ?></td>
			<td><?php echo $n; ?></td>
			<td><?php echo $n; ?></td>
			<td><?php echo $n; ?></td>
			<td>
				<?php echo Url_to('Sửa','post/edit&id='.$item['id'],['class'=>'btn btn-sm btn-success']); ?>
				<?php echo Url_to('Xóa','post/delete&id='.$item['id'],['class'=>'btn btn-sm btn-danger']); ?>
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