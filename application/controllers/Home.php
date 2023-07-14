<?php
class Home extends CI_Controller{
	function __construct(){
		parent::__construct();
		$this->load->model('m_tulisan');
		$this->load->model('m_files');
		$this->load->model('m_pengunjung');
		$this->load->model('m_guru');
		$this->m_pengunjung->count_visitor();
	}
	function index(){
			$x['berita']=$this->m_tulisan->get_berita_home();
			$x['guru']=$this->m_guru->get_all_guru();
			$x['tot_guru']=$this->db->get('tbl_guru')->num_rows();
			$x['tot_tulisan']=$this->db->get('tbl_tulisan')->num_rows();
			$x['tot_files']=$this->db->get('tbl_files')->num_rows();
			$this->load->view('depan/v_home',$x);
	}

}
