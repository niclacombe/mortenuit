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

        $encryptedPW = $this->encryption->encrypt($this->input->post('password'));
        
        $infoNewUser = array(
            'prenom'        => $this->input->post('prenom'),
            'nom'           => $this->input->post('nom'),
            'password'      => $encryptedPW,
            'courriel'      => $this->input->post('courriel'),
            'created_at'    => time(),
        );
        
        $this->db->insert('users', $infoNewUser);

        return true;
        
    }

    public function validateUser($userEmail){
        $this->db->set('is_confirmed',1);
        $this->db->where('courriel',$userEmail);
        $this->db->update('users');
    }

    public function logIn(){
        $this->db->where('courriel',$this->input->post('logIn_courriel'));
        $row = $this->db->get('users');

        $returned = $row->row();

        return $returned;        
    }

    public function readProfile($idUser) {
        $this->db->where('id', $idUser);
        $row = $this->db->get('users');

        return $row->row();
    }

    public function updateEmail($idUser) {
        $this->db->where('id', $idUser);
        $args = array(
            'courriel' => $this->input->post('new_courriel'),
        );
        $row = $this->db->update('users',$args);

        
        $this->db->where('id', $idUser);
        $row = $this->db->get('users');

        return $row->row();
    }
    public function updatePassword($idUser){
        $this->db->where('id', $idUser);
        $this->load->library('encryption');
        $args = array(
            'password' => $this->encryption->encrypt($this->input->post('new_password')),
        );
        $row = $this->db->update('users',$args);
    }    
}

?>