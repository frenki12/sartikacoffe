<?php

class Dashboard extends CI_Controller
{

    public function __construct(){
        parent::__construct();

        if($this->session->userdata('role_id') != '2'){
            $this->session->set_flashdata('pesan', '<div class="alert alert-danger alert-dismissible fade show" role="alert"> Anda Belum Login!!!!! <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button></div>');
            redirect('auth/login');
        }
    }
    

    public function tambah_ke_keranjang($id)
    {
        $barang = $this->model_barang->find($id);

        $data = array(
            'id' => $barang->id_brg,
            'qty' => 1,
            'price' => $barang->harga,
            'name' => $barang->nama_brg,

        );

        $this->cart->insert($data);
        redirect('welcome');
    }

    public function detail_keranjang()
    {
        $this->load->view('header');
        $this->load->view('sidebar');
        $this->load->view('keranjang');
        $this->load->view('footer');
    }

    public function hapus_keranjang()
    {
        $this->cart->destroy();
        redirect('welcome');
    }

    public function hapus_item_keranjang($rowid)
    {
        $data = [
            'rowid' => $rowid,
            'qty' => 0
        ];

        $this->cart->update($data);
        redirect('dashboard/detail_keranjang');
    }


    public function pembayaran()
    {
        $this->load->view('header');
        $this->load->view('sidebar');
        $this->load->view('pembayaran');
        $this->load->view('footer');
    }

    public function proses_pesanan()
    {
        $is_processed = $this->model_invoice->index();
        if ($is_processed) {
            $this->cart->destroy();
            $this->load->view('header');
            $this->load->view('sidebar');
            $this->load->view('proses_pesanan');
            $this->load->view('footer');
        } else {
            echo "Maaf, Pesanan Anda Gagal diproses!";
        }

    }

    public function detail($id_brg)
    {
        $data['barang'] = $this->model_barang->detail_brg($id_brg);
        $this->load->view('header');
        $this->load->view('sidebar');
        $this->load->view('detail_barang', $data);
        $this->load->view('footer');
    }
}