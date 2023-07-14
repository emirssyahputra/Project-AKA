<?php
class Peminjaman extends CI_Controller{
	function __construct(){
		parent::__construct();
		if($this->session->userdata('masuk') !=TRUE){
            $url=base_url('administrator');
            redirect($url);
        };
		$this->load->model('m_tulisan');
		$this->load->model('m_pengguna');
		$this->load->library('upload');
	}
    function index(){
		$this->load->view('admin/v_peminjaman');
    }
    function simpan_peminjaman(){
                                      $kode=$this->session->userdata('idadmin');
                                    $user=$this->m_pengguna->get_pengguna_login($kode);
									$p=$user->row_array();
									$user_nama=$p['pengguna_nama'];
									$waktu=strip_tags($this->input->post('xjudul'));
                                    $deskripsi=$this->input->post('xisi');
									$this->m_tulisan->simpan_peminjaman($user_nama,$waktu,$deskripsi);
									echo $this->session->set_flashdata('msg','success');
									redirect('admin/jadwal');
    }
}