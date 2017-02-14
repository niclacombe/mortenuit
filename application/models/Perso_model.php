<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Perso_model extends CI_Model {
	
	public function __construct()
	{
		parent::__construct();
		$this->db->db_select('mn_systeme');
	}

	public function newPerso(){
		$this->db->order_by('name', 'asc');
		$results = $this->db->get('clans');
		return $results->result();

	}
	public function createPerso(){
		
	}
	

}

?>