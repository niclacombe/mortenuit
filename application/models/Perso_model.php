<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Perso_model extends CI_Model {
	
	public function __construct()	{
		parent::__construct();
		$this->db->db_select('mn_personnages');
	}

	public function getClans(){
		$this->db->db_select('mn_systeme');

		$this->db->order_by('name', 'asc');
		$query = $this->db->get('clans');

		return $query->result();
	}

	public function getNatures(){
		$this->db->db_select('mn_systeme');

		$this->db->order_by('nom', 'asc');
		$query = $this->db->get('natures');

		return $query->result();
	}

	public function getPersonnages($idUser){
		$this->db->where('id_user', $idUser);
		$query = $this->db->get('personnages');

		return $query->result();
	}

	public function getActivePerso($idUser){
		$this->db->where('etat', 'ACTIF');
		$this->db->where('id_user', $idUser);
		$query = $this->db->get('personnages',1);

		return $query->row();
	}

	public function newPerso($idUser){
		$data = array(
			'id_user'	=> $idUser,
			'nom'		=> $this->input->post('nom'),
			'concept'	=> $this->input->post('concept'),
			'clan'		=> $this->input->post('clan'),
			'physique'	=> $this->input->post('physique'),
			'social'	=> $this->input->post('social'),
			'mental'	=> $this->input->post('mental'),
			'nature'	=> $this->input->post('nature'),
			'attitude'	=> $this->input->post('attitude'),
		);

		$this->db->insert('personnages', $data);
	}

	public function getStartDisciplines($idUser){
		$this->db->db_select('mn_personnages');

		$this->db->where('id_user', $idUser);
		$this->db->order_by('id', 'desc');
		$query = $this->db->get('personnages');

		$perso = $query->row();

		$this->db->db_select('mn_systeme');
		$this->db->order_by('prob', 'desc');
		$query = $this->db->get('discipline_prob');
		$tab_prob = $query->result();

		//$tab_prob => RÉSULTAT DE RECHECHE

		function sum($addt, $item) { // Section pour faire la somme avec array_reduce
			return ($addt += $item->prob);
		}

		if($perso->reroll >= 0){

			$tab_rand_disc = [];

			for($i = 0; $i < 3; $i++) {
				$max_prob = array_reduce($tab_prob, "sum"); // Permet d'obtenir la somme des probabilités
				$prob = rand(0, $max_prob - 1); // Nombre aléatoire de 0 à probabilités totales moins 1
				$tab_disc_temp = []; // Réinitialisation du tableau temporaire pour la décompte des disciplines
				/* var_dump($prob); // Voir les résultats aléatoires*/

				while (true) { // Boucle infini qui sera terminé par break si le total des probabilité à ce point est supérieur au résultat
					$prob -= $tab_prob[0]->prob; // Decrémentation de la probabilité de l'élément courant
					if ($prob >= 0) {
						array_push($tab_disc_temp, array_shift($tab_prob)); // Push apres le dernier élément du tableau temp et retirer l'élément courant du tableau des disciplines
					} else {
						break;
					}
				}
				array_push($tab_rand_disc, array_shift($tab_prob)); // Ajout du résultat et retire l'élément courant
				$tab_prob = array_merge($tab_disc_temp, $tab_prob); // Merge des tableau de décompte et des éléments restant dans le tableau des disciplines
			                                                      //ex [0, 1, 2, 4, 5, 6] si l'élément aléatoire était le 3.

			}

			$this->db->where('id', $tab_rand_disc[0]->id_discipline);
			$this->db->or_where('id', $tab_rand_disc[1]->id_discipline);
			$this->db->or_where('id', $tab_rand_disc[2]->id_discipline);
			$query = $this->db->get('disciplines');
			$vDisciplines = $query->result();

			foreach ($vDisciplines as $vDisc) {
				$this->db->where('id_parent', $vDisc->id);
				$query = $this->db->get('sub_disciplines');

				
				$disciplines[] = array(
					'reroll' => $perso->reroll,
					'idPerso' => $perso->id,
					'name' => $vDisc->name,
					'id' => $vDisc->id,
					'description' => $vDisc->description,
					'sub_disciplines' => $query->result(),
				);
			}

			return $disciplines;

		} else {
			return false;
		}
	}

	public function reroll($idPerso){
		$query = "UPDATE mn_personnages.personnages SET reroll = reroll-1 WHERE id = " .$idPerso .";";
		$this->db->query($query);

	}

	public function addStartDisciplines($idPerso){

		$startDisc = array_slice($_POST,0,3);

		foreach ($startDisc as $disc) {
			$explode = explode('-', $disc);
			$data = array(
				'id_personnage' => $idPerso,
				'id_discipline' => $explode[0],
				'niveau'		=> $explode[1],
				'start_discipline' => 1
			);

			$this->db->insert('disciplines_acquises', $data);

			$disciplines = explode('-',$this->input->post('disciplines'));

			$data = array(
				'startDisc_1' => $disciplines[0],
				'startDisc_2' => $disciplines[1],
				'startDisc_3' => $disciplines[2]
			);

			$this->db->where('id', $idPerso);
			$this->db->update('personnages', $data);
		}
	}

	public function getStartSkills(){
		$this->db->db_select('mn_systeme');

		$query = $this->db->get('habiletes');

		return $query->result();
	}

	public function addHabiletes($idPerso){
		$skills = $_POST;

		$this->db->db_select('mn_personnages');

		foreach ($skills as $skill) {
			$explode = explode('-', $skill);
			$data = array(
				'id_personnage' => $idPerso,
				'id_habilete'	=> $explode[0],
				'niveau'		=> $explode[1]
			);

			$this->db->insert('habiletes_acquises', $data);
		}
	}

	public function addBackground($idPerso){
		$data = array();
		$update = false;

		if($this->input->post('generation')){
			$data['generation'] = $this->input->post('generation');
			$update = true;
		}
		if($this->input->post('ressource')){
			$data['ressources'] = $this->input->post('ressource');
			$update = true;
		}
		if($this->input->post('herd')){
			$data['herd'] = $this->input->post('herd');
			$update = true;
		}

		if($update){
			$data['herd'] = $this->input->post('herd');
			$this->db->where('id', $idPerso);
			$this->db->update('personnages', $data);
		}
	}

	public function updateFreebies($idPerso){
		$data = array();
	}

	public function getFreebies($idPerso){
		$this->db->db_select('mn_personnages');

		$this->db->select('SUM(freebies) AS freebies');
		$this->db->where('id_personnage', $idPerso);

		$query = $this->db->get('freebies');
		return $query->row();
	}

	public function updateBG($idPerso){
		$data = array(
			'background' => $this->input->post('bg')
		);
		$this->db->where('id', $idPerso);
		$this->db->update('personnages', $data);
	}

	public function waitEtat($idPerso, $idUser){
		$data = array(
			'etat' => 'INACT'
		);
		$this->db->where('etat !=', 'MORT');
		$this->db->where('etat !=', 'TORP');
		$this->db->where('id_user', $idUser);
		$this->db->update('personnages', $data);

		$data = array(
			'etat' => 'ATTENT',
			'date_soumission' => date('Y-m-d H:i:s',time())
		);
		$this->db->where('id', $idPerso);
		$this->db->update('personnages', $data);
	}


}

?>