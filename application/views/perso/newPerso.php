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
							<?php foreach ($systeme['clans'] as $clan) { ?>
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
				<div class="col-xs-12">
					<h3>Disciplines</h3>
					<h4>La Malédiction du Sang frappe tous les Kindreds. Nul ne peut savoir quelles seront les Disciplines de son infant. <em>Vous n'avez que 5 relances.</em></h4>
					<div id="disciplineContainer">
						<?php foreach ($systeme['disciplines'] as $key => $discipline) : ?>
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
							</div>						
						<?php endforeach; ?>
					</div>
				</div>
				<pre><?php echo var_dump($systeme['disciplines'][0]); ?></pre>
			</div>
		</div>


			<?php
				echo form_close(); 
			?>
			



	</div>
</div>

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

	  	});
	  })
	})
</script>
