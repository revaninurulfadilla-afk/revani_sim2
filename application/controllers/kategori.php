<?php
defined('BASEPATH')OR exit('No direct script access allowed');

class kategori extends CI_Controller{

    public function __construct()
    {
        parent ::__construct();
        $this->load->model('Kategori_model');

    }
    public function index()
    {
        $data['kategori'] = $this->Kategori_model->get_all();
        $this->load->view('kategori/index', $data);

    }
}