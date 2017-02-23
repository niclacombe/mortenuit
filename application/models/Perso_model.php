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
		$disciplines = $this->db->get('disciplines');
		$results['disciplines'][] = $disciplines->result();

		$this->db->where('id',$discipline2);
		$disciplines = $this->db->get('disciplines');
		$results['disciplines'][] = $disciplines->result();

		$this->db->where('id',$discipline3);
		$disciplines = $this->db->get('disciplines');
		$results['disciplines'][] = $disciplines->result();

		$this->db->where('id_parent',$discipline1);
		$sub_disciplines = $this->db->get('sub_disciplines');
		$results['sub_disciplines'][] = $sub_disciplines->result();

		$this->db->where('id_parent',$discipline2);
		$sub_disciplines = $this->db->get('sub_disciplines');
		$results['sub_disciplines'][] = $sub_disciplines->result();

		$this->db->where('id_parent',$discipline3);
		$sub_disciplines = $this->db->get('sub_disciplines');
		$results['sub_disciplines'][] = $sub_disciplines->result();

		return $results;

	}

	public function getRandDiscipline($discipline1, $discipline2, $discipline3){
		$this->db->where('id',$discipline1);
		$disciplines = $this->db->get('disciplines');
		$results['disciplines'][] = $disciplines->result();

		$this->db->where('id',$discipline2);
		$disciplines = $this->db->get('disciplines');
		$results['disciplines'][] = $disciplines->result();

		$this->db->where('id',$discipline3);
		$disciplines = $this->db->get('disciplines');
		$results['disciplines'][] = $disciplines->result();

		$this->db->where('id_parent',$discipline1);
		$sub_disciplines = $this->db->get('sub_disciplines');
		$results['sub_disciplines'][] = $sub_disciplines->result();

		$this->db->where('id_parent',$discipline2);
		$sub_disciplines = $this->db->get('sub_disciplines');
		$results['sub_disciplines'][] = $sub_disciplines->result();

		$this->db->where('id_parent',$discipline3);
		$sub_disciplines = $this->db->get('sub_disciplines');
		$results['sub_disciplines'][] = $sub_disciplines->result();

		return $results;
	}

		

}

?>