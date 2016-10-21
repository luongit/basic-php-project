<?php $data = getAll('post'); ?>
<?php if($data): ?>
<div class="row">
<?php foreach($data as $item) : ?>
	<div class="col-md-3">
		<h2><?php echo $item['title']; ?></h2>	
		<p><?php echo $item['content']; ?></p>
	</div>
<?php endforeach; ?>
</div>
<?php endif; ?>