<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Influence_model extends CI_Model {
	public function __construct()	{
		parent::__construct();
		$this->db->db_select('mn_influence');
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

	public function getFreeContactsBySecteur($idPerso){
		$this->db->db_select('mn_influence');

		$this->db->order_by('secteur', 'asc');
		$query = $this->db->get('secteurs');
		$secteurs = $query->result();

		$return = array();

		foreach ($secteurs as $key => $secteur) {

			$owned = $this->db->query('SELECT id FROM mn_influence.contacts WHERE proprietaire = ' .$idPerso .';')->result_array();
			$ownedId = array();
			foreach ($owned as $own) {
				$ownedId[] = $own['id'];
			}

			if(!empty($ownedId)) : $this->db->where_not_in('id', $ownedId); endif;
			$this->db->where('secteur', $secteur->id);
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

	public function getContactsBySecteur(){
		$this->db->db_select('mn_influence');

		$this->db->order_by('secteur', 'asc');
		$query = $this->db->get('secteurs');
		$secteurs = $query->result();

		$return = array();

		foreach ($secteurs as $key => $secteur) {
			$this->db->where('secteur', $secteur->id);
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

	public function getPersoContacts($idPerso){
		$this->db->db_select('mn_influence');

		$this->db->select('con.*, sec.secteur as nomSecteur');
		$this->db->from('contacts con');
		$this->db->where('proprietaire', $idPerso);
		$this->db->join('secteurs sec', 'sec.id = con.secteur', 'left');
		$query = $this->db->get();

		return $query->result();

	}

	public function addContact($idPerso,$idContact){
		$this->db->db_select('mn_influence');

		$data = array(
			'proprietaire'	=> $idPerso,
			'date_achat'	=> date('Y-m-d H:i:s', time()),
			'date_protection' => date('Y-m-d H:i:s', strtotime('+3 week'))
		);

		$this->db->where('id', $idContact);
		$this->db->update('contacts', $data);

		$this->db->select('niveau, nom');
		$this->db->where('id', $idContact);
		$contact = $this->db->get('contacts')->row();

		$this->db->db_select('mn_personnages');

		$data = array(
			'id_personnage' => $idPerso,
			'freebies' => '-' .$contact->niveau,
			'raison' => 'Achat ' .$contact->nom,
			'date' => date('Y-m-d H:i:s', time()),
		);

		$this->db->insert('freebies', $data);
	}

	public function getContact($idContact){
		$this->db->db_select('mn_influence');

		$this->db->select('con.*, sec.secteur as nomSecteur');
		$this->db->from('contacts con');
		$this->db->join('secteurs sec', 'sec.id = con.secteur', 'left');
		$this->db->where('con.id', $idContact);
		$query = $this->db->get('contacts', 1);

		return $query->row();
	}

	public function getLast3Actions($idContact){
		$this->db->db_select('mn_influence');

		$this->db->where('id_contact', $idContact);
		$this->db->where('etat', 'ACCEPT');
		$this->db->order_by('date_parution', 'desc');
		$query = $this->db->get('actions', 3);

		return $query->result();
	}
	

}

/* End of file Influence_model */
/* Location: ./application/models/Influence_model */ ?>