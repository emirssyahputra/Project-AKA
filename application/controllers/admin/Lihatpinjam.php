<?php
class Lihatpinjam extends CI_Controller{
	function __construct(){
		parent::__construct();
		if($this->session->userdata('masuk') !=TRUE){
            $url=base_url('administrator');
            redirect($url);
        };
		$this->load->model('m_tulisan');
		$this->load->model('m_pengguna');
	}


	function index(){
		$x['data']=$this->m_tulisan->get_all_peminjaman();
		$this->load->view('admin/v_lihatpinjam',$x);
	}	
}