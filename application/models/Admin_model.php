<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin_model extends CI_Model {

	public function __construct(){
		parent::__construct();
		//Do your magic here
	}

	public function getWaitingActions(){
		$this->db->db_select('mn_influence');

		$this->db->select('act.*, con.nom as nomContact, con.niveau as niveauContact, sec.secteur as nomSecteur');
		$this->db->from('mn_influence.actions act');
		$this->db->join('mn_influence.contacts con', 'con.id = act.id_contact', 'left');
		$this->db->join('mn_influence.secteurs sec', 'sec.id = con.secteur', 'left');
		$this->db->where('etat', 'ATTENT');
		$this->db->order_by('date_parution', 'asc');

		$query = $this->db->get();

		return $query->result();
	}

	

}

/* End of file Admin_model.php */
/* Location: ./application/models/Admin_model.php */ ?>