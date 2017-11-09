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

	public function addAction(){
		$this->db->db_select('mn_influence');

		if($this->input->post('note') == '') : $note = NULL; else : $note = $this->input->post('note'); endif;

		$data = array(
			'id_contact' => $this->input->post('idContact'),
			'description' => $this->input->post('actionDescription'),
			'note' => $note,
			'etat' => 'ATTENT',
			'niveau' => 0,
			'secret' => $this->input->post('niveauSecret'),
			'date_parution' => $this->input->post('dateParution'),
			'date_modif' => date('Y-m-d H:i:s', time())
		);

		$this->db->insert('actions', $data);
	}
	

	public function getSecteurs(){
		$this->db->db_select('mn_influence');

		$this->db->order_by('secteur', 'asc');
		$query = $this->db->get('secteurs');

		return $query->result();
	}

	public function readActions($idPerso, $startDate, $endDate, $secteurs = null){
		//get Secteurs
		$this->db->db_select('mn_influence');

		if($secteurs == null || empty($secteurs)){
			$this->db->select('DISTINCT(secteur)');
			$this->db->where('proprietaire', $idPerso);

			$query = $this->db->get('contacts');
			$results = $query->result();

			$secteurs = array();

			foreach ($results as $result) {
				array_push($secteurs, $result->secteur);
			}
		}

		//get approved Actions ID selon Secteurs
		$this->db->select('id_action');
		$this->db->where_in('id_secteur', $secteurs);
		$query = $this->db->get('action_secteur');
		$results = $query->result();

		$idActions = array();

		foreach ($results as $result) {
			array_push($idActions, $result->id_action);
		}

		//get Actions
		$this->db->select("act.*, sect.secteur as 'nomSecteur', con.nom as 'nomContact', con.titre as 'titre'");
		$this->db->from('mn_influence.actions act');
		$this->db->join('mn_influence.action_secteur actsect', 'actsect.id_action = act.id', 'left');
		$this->db->join('mn_influence.contacts con', 'con.id = act.id_contact', 'left');
		$this->db->join('mn_influence.secteurs sect', 'sect.id = con.secteur', 'left');
		$this->db->where_in('act.id', $idActions);
		$this->db->where('etat', 'ACCEPT');
		$this->db->where('date_parution >=', $startDate);
		$this->db->where('date_parution <=', $endDate);
		$this->db->group_by('act.id');
		$this->db->order_by('act.date_parution', 'desc');

		$query = $this->db->get();
		$results = $query->result_array();

		$actions = array();

		foreach ($results as $result) {
			$contact_owned = false;
			$locked = false;
			$is_faitDivers = false;

			$this->db->where('id', $result['id_contact']);
			$this->db->where('proprietaire', $idPerso);
			$query = $this->db->get('contacts');
			$autor_result = $query->row();

			if($autor_result) : $contact_owned = true; endif;

			//Discretion Manager
			if( $result['secret'] ){
				$locked = true;

				$this->db->where('id_action', $result['id']);
				$this->db->where('id_perso', $idPerso);
				$query = $this->db->get('actionsecrete_perso');
				$autor_result = $query->row();

				if($autor_result) : $locked = false; endif;
			}

			$actions[] = array(
				'id' => $result['id'],
				'id_contact' => $result['id_contact'],
				'description' => $result['description'],
				'niveau' => $result['niveau'],
				'secret' => $result['secret'],
				'date_parution' => $result['date_parution'],
				'nomSecteur' => $result['nomSecteur'],
				'nomContact' => $result['nomContact'],
				'titre' => $result['titre'],
				'contact_owned' => $contact_owned,
				'locked' => $locked
			);
		}


		return $actions;

	}

	public function unlockAction($idPerso, $idAction){
		$this->db->db_select('mn_influence');

		$this->db->select('secret, date_parution');
		$this->db->where('id', $idAction);
		$query = $this->db->get('actions');
		$action = $query->row();

		$data = array(
			'id_personnage' => $idPerso,
			'freebies' => -$action->secret,
			'raison' => 'Déverouiller une action du ' .$action->date_parution,
			'date' => date('Y-m-d H:i:s', time())	
		);

		$this->db->db_select('mn_personnages');
		$this->db->insert('freebies', $data);

		$data = array(
			'id_action' => $idAction,
			'id_perso' => $idPerso
		);

		$this->db->db_select('mn_influence');
		$this->db->insert('actionsecrete_perso', $data);
	}

}

/* End of file Influence_model */
/* Location: ./application/models/Influence_model */ ?>