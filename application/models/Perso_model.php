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
			$this->db->select('SUM(prob) as total');
			$this->db->order_by('prob', 'desc');
			$query = $this->db->get('discipline_prob');
			$prob_total = $query->result_array();

			$disciplines_id = [];

			while(count($disciplines_id) != 3 ){
				/* GET ROLL */
				$maxRoll = 0;
				for($i = 0 ; $i <= count($prob_total)-1; $i++){
					$maxRoll .= $prob_total[$i]['prob'];
				}				
				$roll = rand(1,$maxRoll);

				while($roll >= 0){
					$roll = $roll - $prob_total[0]['prob'];
					array_shift($prob_total);
					if($roll > 0){
						$disciplines_id[] = $prob_total[0]['id'];
					} else {
						array_shift($prob_total);
					}
				}
			}

			$this->db->where('id', $disciplines_id[0]);
			$this->db->or_where('id', $disciplines_id[1]);
			$this->db->or_where('id', $disciplines_id[2]);
			$query = $this->db->get('disciplines');
			$vDisciplines = $query->result();

			$disciplines = [];

			foreach ($vDisciplines as $vDisc) {
				$this->db->where('id_parent', $vDisc->id);
				$query = $this->db->get('sub_disciplines');

				$disciplines['id'] = $vDisc->id;
				$disciplines['name'] = $vDisc->name;
				$disciplines['description'] = $vDisc->description;
				$disciplines['subDisciplines'] = $query->result();
			}

			return $disciplines;


		} else {
			return false;
		}
	}


}

?>