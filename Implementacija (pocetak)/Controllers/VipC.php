<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of VipC
 *
 * @author asus
 */
class VipC extends CI_Controller {
    public function __construct() {
        parent::__construct();
        
        $this->load->model('Korisnik');
        $this->load->model('Admin');
        $this->load->model('Moderator');
        $this->load->model('Igrac');
        $this->load->model('Vip');
        
        $korisnik = $this->session->userdata('korisnik');
        if($korisnik == null) {
            redirect('Gost');
        }
        
        if($this->Moderator->proveriModeratora($korisnik->Username)) {
            redirect('ModeratorC');
        }
        
        if($this->Igrac->proveriIgraca($korisnik->Username)) {
            redirect('IgracC');
        }
        
        if($this->Admin->proveriAdmina($korisnik->Username)) {
            redirect('AdminC');
        }
    }
    
    private function prikazi($page, $content = []) {
        $this->load->view($page, $content);
    }
    
    public function index() {
        $this->prikazi('HomePageVip.php');
    }
                 
    public function logout() {
        $this->session->unset_userdata('korisnik');
        $this->session->sess_destroy();
        redirect('Gost');
    }
}
