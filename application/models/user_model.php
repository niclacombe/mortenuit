<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of register_model
 *
 * @author Nicolas
 */
class User_model extends CI_Model{
    
    function __construct() {
    }
    
    public function addUser(){
        
        $infoNewUser = array(
            'identifiant' => $this->input->post('register_id'),
            'mot_de_passe' => md5($this->input->post('register_pw')),
            'prenom' => $this->input->post('register_prenom'),
            'nom' => $this->input->post('register_nom'),
            'adresse' => $this->input->post('register_adresse'),
            'categorie' => $this->input->post('categorie'),
        );
        
        $query = $this->db->insert('users', $infoNewUser);
        
        return $query/*->result()*/;
        
    }
    
}

?>