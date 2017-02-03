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
        
    }
    
}

?>