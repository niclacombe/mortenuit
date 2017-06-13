<h4>relances restantes</h4>
<?php foreach ($disciplines as $key => $discipline) : ?>
	<div class="form-group col-md-8 col-xs-6">
		<label for="<?php echo 'discipline' .$key; ?>"></label>
		<input type="text" name="<?php echo 'discipline' .$key; ?>" readonly class="form-control" placeholder="<?php echo $discipline->name; ?>">
	</div>

	<div class="subDisciplineContainer col-md-3 col-xs-5">
		<label for="" class="checkbox-inline">
			<input type="checkbox" name="<?php echo 'niveauDiscipline' .$key; ?>">1
		</label>
		<label for="" class="checkbox-inline">
			<input type="checkbox" name="<?php echo 'niveauDiscipline' .$key; ?>">2
		</label>
		<label for="" class="checkbox-inline">
			<input type="checkbox" name="<?php echo 'niveauDiscipline' .$key; ?>">3
		</label>
		<label for="" class="checkbox-inline">
			<input type="checkbox" name="<?php echo 'niveauDiscipline' .$key; ?>">4
		</label>
		<label for="" class="checkbox-inline">
			<input type="checkbox" name="<?php echo 'niveauDiscipline' .$key; ?>">5
		</label>
	</div>
	<div class="col-xs-1 disciplineHelp">
		<button type="button" class="btn btn-default popUpToggler" data-toPopup="<?php echo 'discipline' .$key; ?>">
			<span class="fa fa-question-circle"></span>
		</button>
	</div>
	<div class="col-md-6 col-xs-12 toPopup <?php echo 'discipline' .$key; ?>">
		<h3><?php echo $discipline->name; ?></h3>
		<p><?php echo $discipline->description; ?></p>
		<h4>Évolution de la Discipline</h4>
		<ul class="list-unstyled">
			<?php foreach ($discipline->sub_disciplines as $sub_discipline) : ?>
				<li>
					<p><strong><?php echo $sub_discipline->sub_name; ?></strong></p>
					<p><?php echo $sub_discipline->sub_desc; ?></p>
				</li>
			<?php endforeach; ?>
		</ul>
	</div>						
<?php endforeach; ?>

<script>
	$(document).ready(function(){
		$('.toPopup').hide();

		$(".owl-carousel").owlCarousel({
			loop: false,
			margin: 0,
			nav: true,
			dots: true,
			navElement: 'span',
			navText: ['<span class="fa fa-chevron-left"></span>&nbsp;&nbsp;Précédent','Suivant&nbsp;&nbsp;<span class="fa fa-chevron-right"></span>'],
			responsive:{
				0:{
					items:1
				},
			} 
		});
	});

	$(function () {
	  $('.popUpToggler').on('click', function(){
	  	var target = $(this).attr('data-toPopup');
	  	$('.' +target).bPopup({
	  		position: ['auto',($(window).height()*0.1)]
	  	});
	  })
	})

</script>