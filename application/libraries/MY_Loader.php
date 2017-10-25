<?php



/*

 * To change this template, choose Tools | Templates

 * and open the template in the editor.

 */



/**

 * Description of MY_Loader

 *

 * @author formation

 */

class MY_Loader extends CI_Loader {

    function __construct(){

        parent::__construct();

}

    public function template($view, $data = array(), $return = FALSE){

        $content = $this->view("template/header",$return);
        $content .= $this->view("template/nav", $return);
        $content .= $this->view($view,$data,$return);
        $content .= $this->view("template/footer", $return);
      

        if ($return) {
            return $content;
        }
    }

}



?>

