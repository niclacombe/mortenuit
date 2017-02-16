<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Perso_model extends CI_Model {
	
	public function __construct()
	{
		parent::__construct();
		$this->db->db_select('mn_systeme');
	}

	public function newPerso($discipline1, $discipline2, $discipline3){
		$this->db->order_by('name', 'asc');
		$clans = $this->db->get('clans');
		$results['clans'] = $clans->result();


		$this->db->where('id',$discipline1);
		$this->db->or_where('id',$discipline2);
		$this->db->or_where('id',$discipline3);
		$disciplines = $this->db->get('disciplines');
		$results['disciplines'] = $disciplines->result();

		return $results;

	}

	public function getRandDiscipline($discipline1, $discipline2, $discipline3){
		$this->db->where('id',$discipline1);
		$this->db->or_where('id',$discipline2);
		$this->db->or_where('id',$discipline3);

		$results = $this->db->get('disciplines');
		return $results->result();
	}	

}

?>