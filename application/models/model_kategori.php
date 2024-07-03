<?php 

class Model_kategori extends CI_Model{
    public function data_espresso_base(){
        return $this->db->get_where("tb_barang",array('kategori' => 'Espresso Base'));
    }

    public function data_manual_brew(){
        return $this->db->get_where("tb_barang",array('kategori' => 'Manual Brew'));
    }

    public function data_varian_tea(){
        return $this->db->get_where("tb_barang",array('kategori' => 'Varian Tea'));
    }

    public function data_milk_base(){
        return $this->db->get_where("tb_barang",array('kategori' => 'Milk Base'));
    }

    public function data_main_course(){
        return $this->db->get_where("tb_barang",array('kategori' => 'Main Course'));
    }

    public function data_snack(){
        return $this->db->get_where("tb_barang",array('kategori' => 'Snack'));
    }
}