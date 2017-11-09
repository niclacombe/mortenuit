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

		<br><br>

		<div class="row">
			<div class="col-xs-6 col-md-3 col-xs-offset-6 col-md-offset-9">
				<button class="btn btn-primary btn-block btn-lg"><span class="fa fa-save"></span> Sauvegarder et continuer</button>
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
