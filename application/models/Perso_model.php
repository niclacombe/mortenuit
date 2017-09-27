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

			/* GET ROLL */
			$roll = rand(1,$prob_total[0]['total']);

			while($roll >= 0){
				$roll = $roll - 
			}


		} else {
			return false;
		}
	}


}

?>