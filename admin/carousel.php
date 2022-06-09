<div id="page-wrapper">

	<div class="container-fluid">

		<h1>Carousel Slides</h1>

		<?php info_message() ?>

		<div class="row">

			<h3 class="bg-success"></h3>

			<div class="col-xs-3">

				<form action="" method="post" enctype="multipart/form-data">

					<div class="form-group">

						<input type="file" name="image" required>

					</div>

					<div class="form-group">
						<label for="title">Slide Title</label>
						<input type="text" name="title" class="form-control" required>
					</div>

					<div class="form-group">

						<input type="submit" name="add_slide">

					</div>

				</form>

			</div>


			<div class="col-xs-8">

				<?php add_slide() ?>


			</div>

		</div><!-- ROW-->

		<hr>

		<h1>Slides Available</h1>

		<div class="row">

			<?php $slides = get_all_slides() ?>

			<?php foreach ($slides as $slide): ?>
				<div class="col-md-2 text-center">
					<div style="display: flex; overflow: hidden; height: 200px; align-content: center; align-items: center;">
						<img src="<?= $slide['image'] ?>" alt="<?= $slide['title'] ?>" style="margin-bottom: 10px; height: 200px;">	
					</div>

					<h4><?= $slide['title'] ?></h4>		

					<form action="" method="post">
						<button class="btn btn-sm btn-danger" value="<?= $slide['id'] ?>" name='delete'>
							Delete
						</button>											
					</form>

				</div>		
			<?php endforeach ?>

		</div>


	</div>

</div>

<?php 

delete_slide();

?>