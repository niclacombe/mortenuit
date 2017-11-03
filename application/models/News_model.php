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
        $this->db->db_select('mn_mortenuit');
        $query = "SELECT n.*, u.prenom, u.nom FROM news n LEFT JOIN users u ON n.id_author = u.id ORDER BY n.id DESC LIMIT 5;";
        $news = $this->db->query($query);

        return $news->result();
    }
    
    public function createNews(){
        $args = array(
            'title'         => $this->input->post('title'),
            'content'       => $this->input->post('content'),
            'id_author'     => $this->session->user_info->id,
            'date'          => time(),
        );

        $this->db->insert('news',$args);

        return true;
    }

    public function readSingleNews($id) {
        $this->db->where('id', $id);
        $row = $this->db->get('news');

        return $row->row();
    }

    public function updateNews(){
        $args = array(
            'title'         => $this->input->post('title'),
            'content'       => $this->input->post('content'),
            'id_author'     => $this->session->user_info->id,
            'modified'      => time(),
        );

        $this->db->where('id', $this->input->post('id'));
        $this->db->update('news', $args);

        return true;
    }

    public function deleteNews($id){
        $this->db->where('id', $id);
        $this->db->delete('news');

        return true;
    }


}

?>