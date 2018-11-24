<?php
defined('BASEPATH') OR exit('No direct script access allowed');
//include controller master 
include APPPATH.'controllers/Master.php';

class kegiatan extends Master {
	public function __construct(){
		parent::__construct();
		$this->load->model('Crud');
		// if(($this->session->userdata('login')!=true) || ($this->session->userdata('level')!=1) ){
		// 	redirect(site_url('login/logout'));
		// }
	}
	//VARIABEL
	private $master_tabel="kegiatan"; //Mendefinisikan Nama Tabel
	private $id="kegiatan_id";	//Menedefinisaikan Nama Id Tabel
	private $default_url="frontend/kegiatan/"; //Mendefinisikan url controller
	private $default_view="frontend/kegiatan/"; //Mendefinisiakn defaul view
	private $view="template/webfrontend"; //Mendefinisikan Tamplate Root
	private $path='./upload/';

	private function global_set($data){
		$data=array(
			'menu'=>'kegiatan',//Seting menu yang aktif
			'menu_submenu'=>false,
			'headline'=>$data['headline'], //Deskripsi Menu
			'url'=>$data['url'], //Deskripsi URL yang dilewatkan dari function
			'ikon'=>"fa fa-tasks",
			'view'=>"views/frontend/kegiatan/index.php",
			'detail'=>false,
			'cetak'=>false,
			'edit'=>true,
			'delete'=>true,
		);
		return (object)$data; //MEMBUAT ARRAY DALAM BENTUK OBYEK
		//$data->menu=kegiatan, bentuk obyek
		//$data['menu']=kegiatan, array bentuk biasa
	}

	public function index()
	{
		$global_set=array(
			'headline'=>'kegiatan',
			'url'=>$this->default_url,
		);
		$global=$this->global_set($global_set);
		if($this->input->post('submit')){
			//PROSES SIMPAN
			$data=array(
				'user_nama'=>$this->input->post('user_nama'),
				'user_terdaftar'=>date('Y-m-d',strtotime($this->input->post('user_terdaftar'))),
				'user_username'=>$this->input->post('user_username'),
				'user_password'=>$this->input->post('user_password'),
				'user_level'=>$this->input->post('user_level'),
			);
			$query=array(
				'data'=>$data,
				'tabel'=>$this->master_tabel,
			);
			$insert=$this->Crud->insert($query);
			$this->notifiaksi($insert);
			redirect(site_url($this->default_url));
			//print_r($data);
		}else{
			$data=array(
				'global'=>$global,
				'menu'=>$this->menu(0),
			);
			//$this->viewdata($data);			
			$this->load->view($this->view,$data);
			//print_r($data['data']);
		}
	}
	public function tabel(){
		$global_set=array(
			'headline'=>'kegiatan',
			'url'=>$this->default_url,
		);
		//LOAD FUNCTION GLOBAL SET
		$global=$this->global_set($global_set);		
		//PROSES TAMPIL DATA
		$query=array(
			'tabel'=>$this->master_tabel,
		);
		$data=array(
			'global'=>$global,
			'data'=>$this->Crud->read($query)->result(),
			'tes'=>'dwadwa',
		);
		//$this->viewdata($data);
		//print_r(json_encode($data));
		//return $this->output->set_output(json_encode($data));
		$this->load->view($this->default_view.'tabel',$data);		
		//$this->output->set_content_type('aplication/json')->set_output(json_encode($data));_
	}
	public function edit(){
		$global_set=array(
			'headline'=>'edit data',
			'url'=>$this->default_url.'/edit',
		);
		$global=$this->global_set($global_set);
		$id=$this->input->post('id');
		if($this->input->post('submit')){
			//PROSES SIMPAN
			$data=array(
				'user_nama'=>$this->input->post('user_nama'),
				'user_terdaftar'=>date('Y-m-d',strtotime($this->input->post('user_terdaftar'))),
				'user_username'=>$this->input->post('user_username'),
				'user_password'=>$this->input->post('user_password'),
				'user_level'=>$this->input->post('user_level'),
			);
			$query=array(
				'data'=>$data,
				'tabel'=>$this->master_tabel,
				'where'=>array($this->id=>$id),
			);
			$update=$this->Crud->update($query);
			$this->notifiaksi($update);
			redirect(site_url($this->default_url));
		}else{
			$query=array(
				'tabel'=>$this->master_tabel,
				'where'=>array(array($this->id=>$id))
			);
			$data=array(
				'data'=>$this->Crud->read($query)->row(),
				'global'=>$global,
				'menu'=>$this->menu(0),
			);
			//$this->viewdata($data);			
			$this->load->view($this->default_view.'edit',$data);
		}			
	}	
	public function add(){
		$global_set=array(
			'submenu'=>false,
			'headline'=>'add data',
			'url'=>$this->default_url, //AKAN DIREDIRECT KE INDEX
		);	
		$global=$this->global_set($global_set);
		$data=array(
			'global'=>$global,
			);
		$this->load->view($this->default_view.'add',$data);		
	}	
	public function hapus($id){
		$query=array(
			'tabel'=>$this->master_tabel,
			'where'=>array('user_id'=>$id),
		);
		$delete=$this->Crud->delete($query);
		$this->notifiaksi($delete);
		redirect(site_url($this->default_url));
	}

}
