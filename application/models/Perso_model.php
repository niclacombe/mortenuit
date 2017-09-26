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

	public function getClanDisciplines($idClan){
		$this->db->db_select('mn_systeme');
		$this->db->select('start_discipline1,start_discipline2,start_discipline3');
		$this->db->where('id', $idClan);
		$query = $this->db->get('clans');
		$idDisciplines = $query->result();

		$this->db->where('id', $idDisciplines[0]->start_discipline1);
		$this->db->or_where('id', $idDisciplines[0]->start_discipline2);
		$this->db->or_where('id', $idDisciplines[0]->start_discipline3);
		$query = $this->db->get('disciplines');
		$disciplines = $query->result();

		$vDisciplines = [];

		foreach ($disciplines as $discipline) {
			$this->db->where('id_parent', $discipline->id);
			$query = $this->db->get('sub_disciplines');
			$sub_discipline = $query->result_array();

			$vDisciplines[]['name'] = $discipline->name;
			$vDisciplines[]['description'] = $discipline->description;
			$vDisciplines[]['$sub_discipline'] = $sub_discipline;
		}

		return $vDisciplines;
	}


}

?>