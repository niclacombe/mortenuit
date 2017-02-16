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
		<div class="row">
			<div class="col-md-6 col-xs-12">

			
				<div class="form-group col-md-6 col-xs-12">
					<label for="nom">Nom :</label>
					<input type="text" name="nom" class="form-control" placeholder="Nom">
				</div>

				<div class="form-group col-md-6 col-xs-12">
					<label for="concept">Concept :</label>
					<input type="text" name="concept" class="form-control" placeholder="Concept">
				</div>

				<div class="form-group col-md-6 col-xs-12">
					<label for="clan">Clan :</label>
					<select name="clan" class="form-control" id="select_clan">
						<?php foreach ($systeme['clans'] as $clan) { ?>
							<option value="$clan->id"><?php echo $clan->name ?></option>
						<?php } //end Foreach ?>
					</select>

				</div>
			</div>
		</div>

		<div class="row">
			<h3>Attributs</h3>
			<div class="form-group col-md-4 col-xs-12">
				<label for="">Attibuts Primaires</label>
				<select name="prim_attr" id="">
					<option value="physique">Physique</option>
					<option value="social">Social</option>
					<option value="mental">Mental</option>
				</select>
			</div>
			<div class="form-group col-md-4 col-xs-12">
				<label for="">Attibuts Secondaires</label>
				<select name="prim_attr" id="">
					<option value="physique">Physique</option>
					<option value="social">Social</option>
					<option value="mental">Mental</option>
				</select>
			</div>
			<div class="form-group col-md-4 col-xs-12">
				<label for="">Attibuts Tertiaires</label>
				<select name="prim_attr" id="">
					<option value="physique">Physique</option>
					<option value="social">Social</option>
					<option value="mental">Mental</option>
				</select>
			</div>
		</div>
		<div class="row">
			<h3>Habiletés</h3>
			<div class="form-group col-md-4 col-xs-12">
				<h4>Physiques</h4>
				<ul class="list-unstyled">
					<li>a</li>
					<li>b</li>
					<li>c</li>
					<li>d</li>
					<li>e</li>
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
				</ul>
			</div>
		</div>
		<div class="row">
			<h3>Disciplines</h3>
			<div class="col-md-8 col-xs-12" id="disciplineContainer">
				<?php foreach ($systeme['disciplines'] as $key => $discipline) { ?>
					<div class="form-group col-md-4 col-xs-12">
						<label for="">Discipline <?php echo $key+1; ?></label>
						<input type="text" class="form-control" disabled="disabled" placeholder="<?php echo $discipline->name; ?>">
					</div>
				<?php } ?>
			</div>
			<div class="col-md-4 col-xs-12">
				<button type="button" class="btn btn-primary btn-rerollDiscipline"><span class="fa fa-refresh"></span> Relancer les disciplines</button>
			</div>
		</div>
		<div class="row">
		<button type="submit" class="btn btn-success" disabled="disabled"><span class="fa fa-check"></span> Créer le personnage</button>

			<?php
				echo form_close(); 
			?>
			
		</div>


	</div>
</div>

<script type="text/javascript">
    $(function(){
        
        $('.btn-rerollDiscipline').click(function(event){
        	event.preventDefault();            
            getRandNumbers();
        });

        function getRandNumbers(){
        	var disciplines = [];
        	var numbers = [];

        	var j = 0

        	for (var i = 0; disciplines.length <= 2; i++) {

        		var number = Math.floor(Math.random() * 23);

        		if ( numbers.indexOf(number) == -1 ) {

	        		if (number >= 0 && number <= 3) { discipline = 1 };//Dominate
	        		if (number >= 4 && number <= 6) { discipline = 2 };//Presence
	        		if (number >= 7 && number <= 9) { discipline = 3 };//Potence
	        		if (number >= 10 && number <= 12) { discipline = 4 };//Auspex
	        		if (number >= 13 && number <= 14) { discipline = 5 };//Celerity
	        		if (number >= 15 && number <= 16) { discipline = 6 };//Animalism
	        		if (number >= 17 && number <= 18) { discipline = 7 };//Fortitude
	        		if (number >= 19 && number <= 20) { discipline = 8 };//Obfuscate
	        		if (number == 21) { discipline = 9 };//Protean
	        		if (number == 22) { discipline = 10 };//Obtenebration
	        		if (number == 23) { discipline = 11 };//Thaumaturgy

	        		if ( disciplines.indexOf(discipline) == -1 ) {
	        			disciplines[j] = discipline;
	        			j++;
	        		}
	        	}
        	}

        	getRandDiscipline(disciplines[0],disciplines[1],disciplines[2]);
    	}

    	function getRandDiscipline(discipline1, discipline2, discipline3) {
    		$.ajax({
                'url' : '/mortenuit/index.php/perso/getRandDiscipline', 
                'type' : 'POST',
                'data' : {'discipline1' : discipline1, 'discipline2' : discipline2, 'discipline3' : discipline3},
                'success' : function(data){
                	var container = $('#disciplineContainer');
                    if(data){
                    	container.html(data);
                    }
                },
                'error' : function(err){
                    console.log(err);
                }
            });
    	}
     });
</script>