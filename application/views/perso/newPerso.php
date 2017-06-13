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
				<div id="disciplinesStepContainer">
					<div class="col-xs-12">
						<h3>2/?</h3>
						<h3>Disciplines</h3>
						<h4>La Malédiction du Sang frappe tous les Kindreds. Nul ne peut savoir quelles seront les Disciplines de son infant. <em>Vous n'avez que 3 relances.</em></h4>
						<div id="disciplineContainer">
							<h4>relances restantes</h4>
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
						</div>
					</div>
					<div class="col-md-offset-3 col-md-6 col-xs-12">
						<button type="button" id="refreshDiscipline" class="btn btn-primary btn-lg btn-block" >
							Relancer les disciplines <span class="fa fa-refresh"></span>
						</button>
					</div>
				</div>
				<!--<pre><?php echo var_dump($systeme['disciplines'][0]); ?></pre>-->
				<pre><?php echo var_dump($_SESSION); ?></pre>
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

	$('#refreshDiscipline').on('click',function(){
		var controller = 'Perso',
            base_url = '<?php echo site_url();?>', 
            data;


        var container = $('#disciplineContainer');

        $.ajax({
            'url' : base_url + controller + '/rerollDisciplines',
            'type' : 'POST',
            'data' : {},
            'success' : function(data){
                if(data){
                    container.html(data);
                }
            },
            'error' : function(err){
                console.log(err);
            }
        });
	})


</script>
