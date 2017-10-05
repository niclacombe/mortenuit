<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Influence_model extends CI_Model {
	public function __construct()	{
		parent::__construct();
		$this->db->db_select('mn_influence');
	}

	public function getContactsBySecteur(){
		$this->db->select('id,secteur');
		$this->db->order_by('secteur', 'asc');
		$query = $this->db->get('secteurs');
		$secteurs = $query->result();

		$return = array();

		foreach ($secteurs as $key => $secteur) {
			$this->db->select('nom, niveau');
			$this->db->where('secteur', $secteur->id);
			$this->db->order_by('niveau', 'desc');
			$query = $this->db->get('contacts');


			$return[$key]['idSecteur'] = $secteur->id;
			$return[$key]['nameSecteur'] = $secteur->secteur;
			$return[$key]['contacts'] = $query->result();
		}

		return $return;
	}

	public function getStartContactsBySecteur(){
		$this->db->select('id,secteur');
		$this->db->order_by('secteur', 'asc');
		$query = $this->db->get('secteurs');
		$secteurs = $query->result();

		$return = array();

		foreach ($secteurs as $key => $secteur) {
			$this->db->select('id,nom, niveau');
			$this->db->where('secteur', $secteur->id);
			$this->db->where('niveau <=', 3);
			$this->db->where('niveau !=', 0);
			$this->db->order_by('niveau', 'desc');
			$query = $this->db->get('contacts');


			$return[$key]['idSecteur'] = $secteur->id;
			$return[$key]['nameSecteur'] = $secteur->secteur;
			$return[$key]['contacts'] = $query->result();
		}

		return $return;
	}
	

}

/* End of file Influence_model */
/* Location: ./application/models/Influence_model */ ?>