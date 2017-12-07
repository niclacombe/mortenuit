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
			echo form_open('perso/newPerso2/' .$userInfo->id,$data );
		?>

		<div class="row">
			<ul class="nav nav-tabs">
				<li class="active"><a data-toggle="tab" href="#step1">Étape 1</a></li>
				<?php if(isset($startDisciplines) ): ?><li><a data-toggle="tab" href="#startDisciplines">Étape 2</a></li><?php endif; ?>
				<?php if(isset($step3) ): ?><li><a data-toggle="tab" href="#step3">Menu 2</a></li><?php endif; ?>
			</ul>

			<div class="tab-content">
				<div id="step1" class="tab-pane fade in active">
					<div class="row">
						<div class="col-xs-12">
							<h3>Étape 1/6</h3>
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
										<option value="<?php echo $clan->id; ?>"><?php echo $clan->name ?></option>
									<?php } //end Foreach ?>
								</select>

							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-xs-12">
							<div class="form-group col-xs-6 col-md-4">
								<label for="nature">Nature :</label>
								<select name="nature" class="form-control">
									<?php foreach ($natures as $nature) : ?>
										<option value="<?php echo $nature->id; ?>"><?php echo $nature->nom; ?></option>
									<?php endforeach; ?>
								</select>
							</div>
							<div class="form-group col-xs-6 col-md-4">
								<label for="attitude">Attitude :</label>
								<select name="attitude" class="form-control">
									<?php foreach ($natures as $nature) : ?>
										<option value="<?php echo $nature->id; ?>"><?php echo $nature->nom; ?></option>
									<?php endforeach; ?>
								</select>
							</div>
							<div class="col-xs-6 col-md-4"></div>
						</div>
					</div>
					<div class="row">
						<div class="col-xs-12">
							<h3>Attributs</h3>
							<h4>En sélectionnant votre attribut primaire, vous lui attribuerez 7 traits. Le secondaire, 5 traits et le tertiaire, 3 traits.</h4>
							<div class="col-md-4 col-xs-12">
								<h4>Attributs physiques</h4>
								<div class="radio">
									<label for="physique">
										<input type="radio" value="7" name="physique" checked>
										7 traits
									</label>
								</div>
								<div class="radio">
									<label for="physique">
										<input type="radio" value="5" name="physique">
										5 traits
									</label>
								</div>
								<div class="radio">
									<label for="physique">
										<input type="radio" value="3" name="physique">
										3 traits
									</label>
								</div>						
							</div>
							<div class="col-md-4 col-xs-12">
								<h4>Attributs sociaux</h4>
								<div class="radio">
									<label for="social">
										<input type="radio" value="7" name="social" checked>
										7 traits
									</label>
								</div>
								<div class="radio">
									<label for="social">
										<input type="radio" value="5" name="social">
										5 traits
									</label>
								</div>
								<div class="radio">
									<label for="social">
										<input type="radio" value="3" name="social">
										3 traits
									</label>
								</div>						
							</div>
							<div class="col-md-4 col-xs-12">
								<h4>Attributs mentaux</h4>
								<div class="radio">
									<label for="mental">
										<input type="radio" value="7" name="mental" checked>
										7 traits
									</label>
								</div>
								<div class="radio">
									<label for="mental">
										<input type="radio" value="5" name="mental">
										5 traits
									</label>
								</div>
								<div class="radio">
									<label for="mental">
										<input type="radio" value="3" name="mental">
										3 traits
									</label>
								</div>						
							</div>
						</div>

						
					</div>
				</div>
				<?php if(isset($startDisciplines) ): ?>
					<div id="startDisciplines" class="tab-pane fade">
						<h3>Étape 2</h3>
						<div class="row">
							<?php if($startDisciplines != false): ?>
								<?php foreach ($startDisciplines as $key => $discipline) : ?>
									<div class="col-xs-12 col-md-4">
										<div class="form-group">
											<label for="">Discipline <?php echo $key+1; ?></label>
											<input type="text" class="form-control" readonly value="<?php echo $discipline['name']; ?>">
										</div>
										<div class="form-group">
											<p>
												<?php echo substr($discipline['description'],0,250) ?>
												<a class="pop" data-pop="discipline<?php echo $key+1; ?>" href="#"> ...<span class="fa fa-question-circle"></span></a>
											</p>
										</div>
										<div class="form-group subContainer">
											<?php foreach ($discipline['sub_disciplines'] as $key2 => $sub) : ?>
												<div class="form-check">
													<label for="" class="form-check-label">
														<input type="checkbox" 
															name="<?php echo $discipline['id']; ?>"
															value="<?php echo $discipline['id'] .'-' .$sub->niveau; ?>"
															class="form-check-input sub"
															<?php if($key2>0): echo 'disabled'; endif; ?> >
														<?php echo $sub->name; ?>
														<a href="#" data-toggle="popover" 
															title="<?php echo $sub->name; ?>" 
															data-content="<?php echo $sub->description; ?>" 
															data-trigger="focus" 
															data-placement="right">
																<span class="fa fa-question-circle"></span>
														</a>
													</label>
												</div>
											<?php endforeach; ?>
										</div>
									</div>
								<?php endforeach; ?>
								<input type="hidden" name="startDisciplines" value="<?php echo $startDisciplines[0]['id'] .'-' .$startDisciplines[1]['id'] .'-' .$startDisciplines[2]['id'] ?>">
							<?php  endif; ?>			
						</div>
					</div>
				<?php endif; ?>
				<?php if(isset($step3) ): ?>
					<div id="step3" class="tab-pane fade">
						<h3>Step 3/h3>
						<p>Some content in menu 1.</p>
					</div>
				<?php endif; ?>
			</div>
		</div>


		<br><br>

		<div class="row">
			<div class="col-xs-6 col-md-3 col-xs-offset-6 col-md-offset-9">
				<button class="btn btn-primary btn-block btn-lg"><span class="fa fa-save"></span> Sauvegarder et continuer</button>
			</div>
		</div>


			<?php
				echo form_close(); 
			?>

			<?php if($startDisciplines): ?>

			<div class="row">
				<div id="discipline1" class="col-md-6 col-xs-12 toPop">
					<h3><?php echo $startDisciplines[0]['name']; ?></h3>
					<p><?php echo $startDisciplines[0]['description']; ?></p>
				</div>
				<div id="discipline2" class="col-md-6 col-xs-12 toPop">
					<h3><?php echo $startDisciplines[1]['name']; ?></h3>
					<p><?php echo $startDisciplines[1]['description']; ?></p>
				</div>
				<div id="discipline3" class="col-md-6 col-xs-12 toPop">
					<h3><?php echo $startDisciplines[2]['name']; ?></h3>
					<p><?php echo $startDisciplines[2]['description']; ?></p>
				</div>
			</div>

		<?php endif; ?>
			



	</div>
</div>

<script>
	// Enable Question popup
	$(function(){
		$('.fa-question-circle').parent('a').popover();
	});

	//Manage Sub-Discipline

	$(function(){
		var limit = 3;
		$('input[name="subDisc"]').on('change', function(evt) {
		   /*if($('input[name="subDisc"]:checked').length > limit) {
		    	this.checked = false;
		       
		    	$('input[name="subDisc"]:not(:checked)').attr('disabled','disabled');
		   } else {
		   		$(this).closest('.form-check').next('.form-check').children('label').children('input').removeAttr('disabled');
		   }*/

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
			navEle3: 'span',
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
