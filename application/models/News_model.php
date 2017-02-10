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
class News_model extends CI_Model{
    
    function __construct() {
    }

    public function getNews(){
        $this->db->order_by('id', 'desc');
        $this->db->get('news', 5);
    }
    
    public function addNews(){
        $args = array(
            'title'     => $this->input->post('title'),
            'content'   => $this->input->post('content'),
            'author'    => $this->session->user_info->id,
            'date'      => time(),
        );

        $this->db->insert('news',$args);

        return true;
    }
}

?>