<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

if ( ! function_exists('formatEmail')){
    function formatEmail($msg = '', $signature = "L'Équipe des Enfatns de Cain")    {
    	$html = "<html><head></head><body style=\"background-image: url('https://www.toptal.com/designers/subtlepatterns/patterns/circles-and-roundabouts.png');\">";
		$html .= '<div style="width:600px; margin: 0 auto;"><table cellpadding="0" cellspacing="0" border="0">';
		$html .= '<tr><td><img src="http://static3.wikia.nocookie.net/__cb20090117025305/whitewolf/images/c/cc/LogoVampireAnkh.png" alt="logo" style="height:200px; width:auto;"></td></tr>';
		$html .= '<tr><td style="padding-top: 25px; padding-bottom:15px">' .$msg .'</td></tr>';
		$html .= '<tr><td>-----<br><br>' .$signature .'</td></tr>';
        $html .= '</table>';
		$html .= "</div></body></html>";

        return $html;
    }   
}