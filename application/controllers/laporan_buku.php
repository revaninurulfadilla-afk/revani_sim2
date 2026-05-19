<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Laporan_buku extends CI_Controller {

    public function __construct()
    {
        parent::__construct();

        if(!$this->session->userdata('login')){
            redirect('login');
        }
    }

    public function index()
    {
        $penulis = $this->input->get('penulis');

        $this->db->select('buku.*, kategori.nama_kategori');
        $this->db->from('buku');

        $this->db->join(
            'kategori',
            'kategori.id = buku.id_kategori'
        );

        if($penulis){
            $this->db->like('penulis', $penulis);
        }

        $data['data'] = $this->db->get()->result();
        $data['penulis'] = $penulis;

        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('templates/topbar');
        $this->load->view('laporan_buku/buku', $data);
        $this->load->view('templates/footer');
    }
}