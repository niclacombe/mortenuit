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
				<h3>Étape 1/?</h3>
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
				<h3>Attributs</h3>
				<h4>En sélectionnant votre attribut primaire, vous lui attribuerez 7 points. Le secondaire, 5 points et le tertiaire, 3 points.</h4>
				<div class="col-md-4 col-xs-12">
					<h4>Attributs primaires</h4>
					<div class="radio">
						<label for="prim_attr">
							<input type="radio" value="PHYS" name="prim_attr" checked>
							Physique
						</label>
					</div>
					<div class="radio">
						<label for="prim_attr">
							<input type="radio" value="SOC" name="prim_attr">
							Social
						</label>
					</div>
					<div class="radio">
						<label for="prim_attr">
							<input type="radio" value="MENT" name="prim_attr">
							Mental
						</label>
					</div>						
				</div>
				<div class="col-md-4 col-xs-12">
					<h4>Attributs secondaires</h4>
					<div class="radio">
						<label for="sec_attr">
							<input type="radio" value="PHYS" name="sec_attr" checked>
							Physique
						</label>
					</div>
					<div class="radio">
						<label for="sec_attr">
							<input type="radio" value="SOC" name="sec_attr">
							Social
						</label>
					</div>
					<div class="radio">
						<label for="sec_attr">
							<input type="radio" value="MENT" name="sec_attr">
							Mental
						</label>
					</div>						
				</div>
				<div class="col-md-4 col-xs-12">
					<h4>Attributs tertiaires</h4>
					<div class="radio">
						<label for="tert_attr">
							<input type="radio" value="PHYS" name="tert_attr" checked>
							Physique
						</label>
					</div>
					<div class="radio">
						<label for="tert_attr">
							<input type="radio" value="SOC" name="tert_attr">
							Social
						</label>
					</div>
					<div class="radio">
						<label for="tert_attr">
							<input type="radio" value="MENT" name="tert_attr">
							Mental
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
