<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Perso_model extends CI_Model {
	
	public function __construct()	{
		parent::__construct();
		$this->db->db_select('mn_systeme');
	}

	public function getClans(){

		$this->db->order_by('name', 'asc');
		$query = $this->db->get('clans');

		return $query->result();
	}

	public function getStartDisciplines($idClan){
		$results = [];
		$this->db->select('start_discipline1, start_discipline2, start_discipline3');
		$this->db->where('id', $idClan);
		$query = $this->db->get('clans');
		$arrStartDisc = $query->row();

		$this->db->where('id', $arrStartDisc->start_discipline1);
		$this->db->or_where('id', $arrStartDisc->start_discipline2);
		$this->db->or_where('id', $arrStartDisc->start_discipline3);
		$query = $this->db->get('disciplines');
		$discParents = $query->result_array();

		foreach ($discParents as $key => $discParent) {

			$this->db->where('id_parent', $discParent['id']);
			$query = $this->db->get('sub_disciplines');
			
			$results[$key]['id'] = $discParent['id'];
			$results[$key]['name'] = $discParent['name'];
			$results[$key]['description'] = $discParent['description'];
			$results[$key]['subDiscipline'] = $query->result(); 
		}
		return $results;
	}


}

?>