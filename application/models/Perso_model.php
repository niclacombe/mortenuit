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

	public function getPersonnages($id_user){
		$this->db->where('id_user', $id_user);
		$query = $this->db->get('personnages');

		return $query->result();
	}

	public function newPerso($id_user){
		$data = array(
			'id_user'	=> $id_user,
			'nom'		=> $this->input->post('nom'),
			'concept'	=> $this->input->post('concept'),
			'clan'		=> $this->input->post('clan'),
			'physique'	=> $this->input->post('physique'),
			'social'	=> $this->input->post('social'),
			'mental'	=> $this->input->post('mental'),
		);

		$this->db->insert('personnages', $data);
	}

	public function getStartDisciplines($idUser){
		$this->db->where('id_user', $idUser);
		$this->db->order_by('id', 'desc');
		$query = $this->db->get('personnages');

		$perso = $query->row();

		if($perso->reroll > 0){
			$this->db->db_select('mn_systeme');

			/* GET TOTAL */
			$disc_id = [];
			while(count($disc_id) != 3){
				if(isset($disc_id[0])){
					$this->db->where('id_discipline !=', $disc_id[0]);
				}
				if(isset($disc_id[1])){
					$this->db->where('id_discipline !=', $disc_id[0]);
					$this->db->where('id_discipline !=', $disc_id[1]);
				}
				$this->db->order_by('prob', 'desc');
				$query = $this->db->get('discipline_prob');
				$tab_prob = $query->result();

				$maxRoll = 0;
				foreach ($tab_prob as $tab) {
					$maxRoll = $maxRoll + $tab->prob;
				}
				$roll = rand(1,$maxRoll);

				while($roll >= 0){
					$roll = $roll-$tab_prob[0]->prob;
					if($roll > 0){
						array_shift($tab_prob);
					} else {
						$disc_id[] = $tab_prob[0]->id_discipline;
						array_shift($tab_prob);
					}
				}
			}

			return $disc_id;


		} else {
			return false;
		}
	}


}

?>