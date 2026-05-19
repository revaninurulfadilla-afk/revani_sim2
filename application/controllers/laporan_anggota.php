<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Laporan_anggota extends CI_Controller {

    public function __construct()
    {
        parent::__construct();

        if(!$this->session->userdata('login')){
            redirect('login');
        }
    }

    public function index()
    {
        $nama = $this->input->get('nama');

        $this->db->from('anggota');

        if($nama){
            $this->db->like('Nama', $nama);
        }

        $data['data'] = $this->db->get()->result();
        $data['nama'] = $nama;

        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('templates/topbar');
        $this->load->view('laporan_anggota/anggota', $data);
        $this->load->view('templates/footer');
    }
}