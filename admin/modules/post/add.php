<div class="jumbotron">
	<div class="container">
		<h2>Thêm mới bài viết</h2>
		<form action="" method="POST" role="form">
			<?php 
				$cats = getAll('category');
				// var_dump($cats);
			?>
			<div class="form-group">
				<label for="">Tiêu đề bài viết</label>
				<input type="text" class="form-control" name="title" placeholder="Nhập tên bài viết">
			</div>
			<div class="form-group">
				<label for="">Đường dẫn SEO</label>
				<input type="text" class="form-control" name="slug" placeholder="Đwuongf dẫn tối ưu seo google">
			</div>
			<div class="row">
				<div class="col-md-6">
					<label for="">Chọn Danh mục cha</label>
					<select name="cate" id="input" class="form-control" >
						<option value="">Không có</option>
					
						<?php if($cats) : foreach($cats as $item): ?>
							<option value="<?php echo $item['id']; ?>"><?php echo $item['name']; ?></option>
						<?php endforeach; endif; ?>
					</select>
				</div>
				<div class="col-md-6">
					<label for="">Chọn trạng thái</label>
					<select name="actived" id="input" class="form-control">
						<option value="1">Kích hoạt</option>
						<option value="0">Không kích hoạt</option>
					</select>
				</div>
			</div>
			<div class="form-group">
				<label for="">Nội dung bài viết</label>
				<textarea name="content" id="content" class="form-control" rows="3" ></textarea>
			</div>
			<button type="submit" class="btn btn-primary">Thêm mới</button>
		</form>
	</div>
</div>