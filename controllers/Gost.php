<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Gost
 *
 * @author asus
 */
class Gost extends CI_Controller {
    public function __construct() {
        parent::__construct();
        
        $this->load->model('Korisnik');
        $this->load->model('Admin');
        $this->load->model('Moderator');
        $this->load->model('Igrac');
        
        $this->session->unset_userdata('korisnik');
        
        $korisnik = $this->session->userdata('korisnik');
        if($korisnik != null) {
            if($this->Admin->proveriAdmina($korisnik->Username)) {
                redirect('AdminC');
            }
            
            if($this->Moderator->proveriModeratora($korisnik->Username)) {
                redirect('ModeratorC');
            }
            
            if($this->Igrac->proveriIgraca($korisnik->Username)) {
                redirect('IgracC');
            }
            else {
                redirect('VipC');
            }        
        }
    }
    
    private function prikazi($page, $content = []) {
        $this->load->view($page, $content);
    }
    
    public function index() {
        $this->prikazi('LogIn.php');
    }
    
    public function login() {
        $this->form_validation->set_rules('username', 'username', 'required');
        $this->form_validation->set_rules('Password', 'password', 'required');
        
        if($this->form_validation->run()) {
            $username = $this->input->post('username');
            $password = $this->input->post('Password');  
            $korisnik = $this->Korisnik->dohvatiKorisnika($username);
            
            if($korisnik != null) {
                if($korisnik->Password == $password) {
                    $this->session->set_userdata('korisnik', $korisnik);
                    echo $korisnik->IdKorisnik;
                    if($this->Admin->proveriAdmina($username)) {
                        redirect('AdminC');                      
                    }
                    
                    if($this->Moderator->proveriModeratora($username)) {
                        redirect('ModeratorC');
                    }
                    
                    if($this->Igrac->proveriIgraca($username)) {
                        redirect('IgracC');
                    }
                    else {
                        redirect('VipC');
                    }
                }
                else {
                    $content['korime'] = $username; //postoji username, ali je sifra pogresna (zapamtim ga)
                    $content['poruka'] = 'Wrong password!';
                    $this->prikazi('LogIn.php', $content);
                }
            }
            else {
                $content['poruka'] = 'Wrong username!';
                $this->prikazi('LogIn.php', $content);
            }
        }
        else {
            $content['poruka'] = 'All fields are required!';
            $this->prikazi('LogIn.php', $content);
        }
    }
    
    public function register() {
        $this->form_validation->set_rules('name', 'name', 'required');
        $this->form_validation->set_rules('lastname', 'lastname', 'required');
        $this->form_validation->set_rules('username', 'username', 'required');
        $this->form_validation->set_rules('Password', 'password', 'required');
        $this->form_validation->set_rules('ConfirmPassword', 'confirm password', 'required');
        $this->form_validation->set_rules('Email', 'email', 'required');
        
        if($this->form_validation->run()) {
            $name = $this->input->post('name');
            $lastname = $this->input->post('lastname');
            $username = $this->input->post('username');
            $password = $this->input->post('Password');  
            $conPass = $this->input->post('ConfirmPassword');
            $email = $this->input->post('Email');
            
            $korisnik = $this->Korisnik->dohvatiKorisnika($username);
            if($korisnik == null) {
                $this->Korisnik->ubaciUBazu($username, $password, $email);
            }
            else {
                /*$content['name'] = $name;
                $content['lastname'] = $lastname;
                $content['email'] = $email;*/
                $content['poruka'] = 'Username already exists!';                      
                $this->prikazi('Register.php', $content);
            }
        }
        else {
            $content['poruka'] = 'All fields are required!';
            $this->prikazi('Register.php', $content);
        }
    }
}
