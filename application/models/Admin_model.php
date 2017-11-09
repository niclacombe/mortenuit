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

	public function getAction($idAction){
		$this->db->db_select('mn_influence');

		$this->db->select('act.*, con.nom as nomContact, con.power as powerContact, con.niveau as niveauContact, sec.secteur as nomSecteur');
		$this->db->from('mn_influence.actions act');
		$this->db->join('mn_influence.contacts con', 'con.id = act.id_contact', 'left');
		$this->db->join('mn_influence.secteurs sec', 'sec.id = con.secteur', 'left');
		$this->db->where('act.id', $idAction);
		$query = $this->db->get('actions',1);

		return $query->row();
	}

	public function saveAction($idAction){
		$this->db->db_select('mn_influence');
		$data = array(
			'etat' => 'ACCEPT',
			'date_modif' => date('Y-m-d H:i:s', time()),
			'niveau' => $this->input->post('niveauAction'),
			'commentaires' => $this->input->post('commentaires')
		);

		$this->db->where('id', $idAction);
		$this->db->update('actions', $data);

		$actionPower = intval($this->input->post('niveauActionFinal'));
		$idContact = intval($this->input->post('idContact'));

		$query = "UPDATE mn_influence.contacts SET power = power-{$actionPower} WHERE id = {$idContact};";
		$this->db->query($query);

		foreach ($this->input->post('secteurs') as $secteur) {
			$this->db->insert('action_secteur', array('id_action' => $idAction, 'id_secteur' => $secteur ));
		}

	}

	public function refusAction($idAction){
		$this->db->db_select('mn_influence');
		$data = array(
			'etat' => 'REFUS',
			'date_modif' => date('Y-m-d H:i:s', time()),
			'commentaires' => $this->input->post('commentaires')
		);

		$this->db->where('id', $idAction);
		$this->db->update('actions', $data);

	}

	public function getJoueurFromContact($idContact){

		$this->db->select('jou.*');
		$this->db->from('mn_personnages.personnages perso');
		$this->db->join('mn_influence.contacts con', 'con.proprietaire = perso.id', 'left');
		$this->db->join('mn_mortenuit.users jou', 'jou.id = perso.id_user', 'left');
		$this->db->where('con.id', $idContact);

		$query = $this->db->get();

		return $query->result();
	}

	public function validatePerso(){
		$this->db->db_select('mn_personnages');

		$this->db->select("perso.*, CONCAT(user.Prenom, ' ' , user.nom) as 'nomUser' ");
		$this->db->from('mn_personnages.personnages perso');
		$this->db->join('mn_mortenuit.users user', 'user.id = perso.id_user', 'left');
		$this->db->where('perso.etat', 'ATTENT');
		$query = $this->db->get();

		return $query->result();
	}

	public function inspectPerso($idPerso){
		$this->db->db_select('mn_personnages');

		$this->db->where('id', $idPerso);
		$query = $this->db->get('personnages');

		return $query->row();
	}

	

}

/* End of file Admin_model.php */
/* Location: ./application/models/Admin_model.php */ ?>