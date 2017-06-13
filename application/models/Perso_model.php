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

		$this->db->where('id', $idDiscipline1);
		$this->db->or_where('id', $idDiscipline2);
		$this->db->or_where('id', $idDiscipline3);
		$disciplines = $this->db->get('disciplines');
		$results['disciplines'] = $disciplines->result();

		return $results;
	}

}

?>