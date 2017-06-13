<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Perso_model extends CI_Model {
	
	public function __construct()	{
		parent::__construct();
		$this->db->db_select('mn_systeme');
	}

	public function newPerso($idDiscipline1, $idDiscipline2, $idDiscipline3){

		$this->db->order_by('name', 'asc');
		$clans = $this->db->get('clans');
		$results['clans'] = $clans->result();

		$results['disciplines'] = $this->getRandDisciplines($idDiscipline1, $idDiscipline2, $idDiscipline3);

		foreach ($results['disciplines'] as $discipline) {
			$this->db->where('id_parent', $discipline->id);
			$query = $this->db->get('sub_disciplines');
			$discipline->sub_disciplines = $query->result();
		}

		return $results;
	}


	public function getRandDisciplines($idDiscipline1, $idDiscipline2, $idDiscipline3){
		$this->db->where('id', $idDiscipline1);
		$this->db->or_where('id', $idDiscipline2);
		$this->db->or_where('id', $idDiscipline3);
		$disciplines = $this->db->get('disciplines');

		$disciplines = $disciplines->result();

		foreach ($disciplines as $discipline) {
			$this->db->where('id_parent', $discipline->id);
			$query = $this->db->get('sub_disciplines');
			$discipline->sub_disciplines = $query->result();
		}
		
		return $disciplines;
	}

}

?>