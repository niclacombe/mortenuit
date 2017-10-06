<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Influence_model extends CI_Model {
	public function __construct()	{
		parent::__construct();
		$this->db->db_select('mn_influence');
	}

	public function getContactsBySecteur(){
		$this->db->order_by('secteur', 'asc');
		$query = $this->db->get('secteurs');
		$secteurs = $query->result();

		$return = array();

		foreach ($secteurs as $key => $secteur) {
			$this->db->select('id, nom, niveau');
			$this->db->where('secteur', $secteur->id);
			$this->db->order_by('niveau', 'desc');
			$query = $this->db->get('contacts');


			$return[$key]['idSecteur'] = $secteur->id;
			$return[$key]['nameSecteur'] = $secteur->secteur;
			$return[$key]['description'] = $secteur->description;
			$return[$key]['contacts'] = $query->result();
		}

		return $return;
	}

	public function getStartContactsBySecteur(){
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

			$this->db->select('id,description, niveau');
			$this->db->where('secteur_parent', $secteur->id);
			$this->db->where('niveau <=', 5);
			$this->db->where('niveau !=', 0);
			$this->db->order_by('niveau', 'asc');
			$query2 = $this->db->get('sub_secteurs');

			$return[$key]['idSecteur'] = $secteur->id;
			$return[$key]['nameSecteur'] = $secteur->secteur;
			$return[$key]['description'] = $secteur->description;
			$return[$key]['contacts'] = $query->result();
			$return[$key]['niveaux'] = $query2->result();
		}

		return $return;
	}
	

}

/* End of file Influence_model */
/* Location: ./application/models/Influence_model */ ?>