<div id="page-wrapper">
	<div class="page-wrapper container-fluid">
		<?php $userInfo = $this->session->user_info; ?>
		<div class="row">
			<h2>Créer un Personnage</h2>
		</div>

		<div class="row"><?php echo validation_errors(); ?></div>

		<?php 
			$data = array(
				'class'	=> 'col-xs-12',
			);
			echo form_open('perso/CreatePerso',$data );
		?>
		<div class="row owl-carousel">
			<div class="item">
				<div class="col-xs-12">
					<h3>1/?</h3>
					<h3>Informations de base</h3>
					<div class="form-group col-md-4 col-xs-12">
						<label for="nom">Nom :</label>
						<input type="text" name="nom" class="form-control" placeholder="Nom">
					</div>

					<div class="form-group col-md-4 col-xs-12">
						<label for="concept">Concept :</label>
						<input type="text" name="concept" class="form-control" placeholder="Concept">
					</div>

					<div class="form-group col-md-4 col-xs-12">
						<label for="clan">Clan :</label>
						<select name="clan" class="form-control" id="select_clan">
							<?php foreach ($clans as $clan) { ?>
								<option value="$clan->id"><?php echo $clan->name ?></option>
							<?php } //end Foreach ?>
						</select>

					</div>
				</div>
				<div class="col-xs-12">
					<h3>Attributs</h3>
					<h4>En sélectionnant votre attribut primaire, vous lui attribuerez 7 points. Le secondaire, 5 points et le tertiaire, 3 points.</h4>
					<div class="form-group col-md-4 col-xs-12">
						<label for="">Attibuts Primaires</label>
						<select class="form-control" name="prim_attr" id="">
							<option value="physique">Physique</option>
							<option value="social">Social</option>
							<option value="mental">Mental</option>
						</select>
					</div>
					<div class="form-group col-md-4 col-xs-12">
						<label for="">Attibuts Secondaires</label>
						<select class="form-control" name="prim_attr" id="">
							<option value="physique">Physique</option>
							<option value="social">Social</option>
							<option value="mental">Mental</option>
						</select>
					</div>
					<div class="form-group col-md-4 col-xs-12">
						<label for="">Attibuts Tertiaires</label>
						<select class="form-control" name="prim_attr" id="">
							<option value="physique">Physique</option>
							<option value="social">Social</option>
							<option value="mental">Mental</option>
						</select>
					</div>
				</div>

				<div class="col-xs-12">
					<h3>Habiletés</h3>
					<div class="form-group col-md-4 col-xs-12">
						<h4>Physiques</h4>
						<ul class="list-unstyled">
							<li>a</li>
							<li>b</li>
							<li>c</li>
							<li>d</li>
							<li>e</li>
							<li>f</li>
							<li>g</li>
							<li>h</li>
							<li>i</li>
							<li>j</li>
						</ul>
					</div>
					<div class="form-group col-md-4 col-xs-12">
						<h4>Sociales</h4>
						<ul class="list-unstyled">
							<li>a</li>
							<li>b</li>
							<li>c</li>
							<li>d</li>
							<li>e</li>
							<li>f</li>
							<li>g</li>
							<li>h</li>
							<li>i</li>
							<li>j</li>
						</ul>
					</div>
					<div class="form-group col-md-4 col-xs-12">
						<h4>Mentales</h4>
						<ul class="list-unstyled">
							<li>a</li>
							<li>b</li>
							<li>c</li>
							<li>d</li>
							<li>e</li>
							<li>f</li>
							<li>g</li>
							<li>h</li>
							<li>i</li>
							<li>j</li>
						</ul>
					</div>
				</div>
				
			</div>
			<div class="item">
				<div id="disciplinesStepContainer">
					<div class="col-xs-12">
						<h3>2/?</h3>
						<h3>Disciplines</h3>
						<h4>Trois "points" à distribuer</h4>
						<div id="disciplineContainer">
							<?php foreach ($startDisciplines as $key => $startDiscipline) : ?>
								<div class="col-md-4 col-xs-12">
									<div class="form-group">
										<label for="">Discipline 1
											<a href="#" data-toggle="popover" 
														title="<?php echo $startDiscipline['name']; ?>" 
														data-content="<?php echo $startDiscipline['description']; ?>" data-trigger="focus" 
														data-placement="right">
												<span class="fa fa-question-circle"`></span>
											</a>
										</label>
										<input type="text" name="<?php echo 'disc' .$key ?>" class="form-control" readonly value="<?php echo $startDiscipline['name']; ?>">
									</div>
									<div class="form-group">
										<h4>Détails</h4>
										<?php foreach ($startDiscipline['subDiscipline'] as $key2 => $subDisc) : ?>
											<div class="form-check">
												<label for="" class="form-check-label">
													<input type="checkbox" 
															value="<?php echo $subDisc->id_parent .'-' .$subDisc->id ?>" class="form-check-input subDisc"
															<?php if($key2 > 0): ?>
																disabled="disabled"
															<?php endif; ?>
													>
													<?php echo $subDisc->sub_name; ?>
													&nbsp
													<a href="#" data-toggle="popover" 
																title="<?php echo $subDisc->sub_name; ?>" 
																data-content="<?php echo $subDisc->sub_desc; ?>" data-trigger="focus" 
																data-placement="right">
														<span class="fa fa-question-circle"`></span>
													</a>
												</label>
											</div>
										<?php endforeach; ?>
									</div>
								</div>
							<?php endforeach; ?>
						</div>
					</div>
				</div>
			</div>
			<div class="item">
				<div class="col-xs-12">
					<h3>3/?</h3>
					<h3>Historique</h3>
					<div class="col-md-6 col-xs-12">
						<ul class="list-unstyled">
							<li></li>
							<li></li>
							<li></li>
							<li></li>
							<li></li>
							<li></li>
							<li></li>
							<li></li>
						</ul>
					</div>
					<div class="col-md-6 col-xs-12">
						<h4>Histoire de votre personnage</h4>
						<textarea class="form-control" name="background_text" id="background_text" cols="30" rows="10"></textarea>
					</div>
				</div>
			</div>
		</div>


			<?php
				echo form_close(); 
			?>
			



	</div>
</div>

<script>
	// Enable Question popup
	$(function(){
		$('.fa-question-circle').parent('a').popover();
	});

	//Manage Sub-Discipline

	$(function(){
		$('.subDisc').click(function(){
			var checked = $('.subDisc:checkbox:checked'),
				notChecked = $('.subDisc:checkbox:not(:checked)');		

			if(checked.length >= 3){
				$('.subDisc:checkbox:not(:checked)').attr('disabled','disabled');
			} else{
				if($(this).prop('checked')){
					$(this).closest('.form-check').next('.form-check').children('label').children('input').removeAttr('disabled');
					$(this).closest('.form-check').next('.form-check').children('label').children('input:first').removeAttr('disabled');
				}
			}

		});
	});


	//Others
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
