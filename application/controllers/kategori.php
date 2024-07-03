<?php 

class Kategori extends CI_Controller{
    public function espresso_base()
    {
        $data['espresso_base'] = $this->model_kategori->data_espresso_base()->result();
        $this->load->view('header');
        $this->load->view('sidebar');
        $this->load->view('espresso_base',$data);
        $this->load->view('footer');
    }

    public function manual_brew()
    {
        $data['manual_brew'] = $this->model_kategori->data_manual_brew()->result();
        $this->load->view('header');
        $this->load->view('sidebar');
        $this->load->view('manual_brew',$data);
        $this->load->view('footer');
    }
    public function varian_tea()
    {
        $data['varian_tea'] = $this->model_kategori->data_varian_tea()->result();
        $this->load->view('header');
        $this->load->view('sidebar');
        $this->load->view('varian_tea',$data);
        $this->load->view('footer');
    }
    public function milk_base()
    {
        $data['milk_base'] = $this->model_kategori->data_milk_base()->result();
        $this->load->view('header');
        $this->load->view('sidebar');
        $this->load->view('milk_base',$data);
        $this->load->view('footer');
    }
    public function main_course()
    {
        $data['main_course'] = $this->model_kategori->data_main_course()->result();
        $this->load->view('header');
        $this->load->view('sidebar');
        $this->load->view('main_course',$data);
        $this->load->view('footer');
    }

    public function snack()
    {
        $data['snack'] = $this->model_kategori->data_snack()->result();
        $this->load->view('header');
        $this->load->view('sidebar');
        $this->load->view('snack',$data);
        $this->load->view('footer');
    }
}