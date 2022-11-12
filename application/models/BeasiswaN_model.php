<?php
defined('BASEPATH') or exit('No direct script access allowed');

class BeasiswaN_model extends CI_Model
{
    public function import_data($databeasiswan)
    {
        $jumlah = count($databeasiswan);
        if ($jumlah > 0) {
            $this->db->replace('beasiswa_nasional', $databeasiswan);
        }
    }

    public function getdatabeasiswan($tanggalawal = null, $tanggalakhir = null)
    {
        $tanggalawalbaru = strtotime($tanggalawal);
        $tanggalakhirbaru = strtotime($tanggalakhir);
        if ($tanggalawal && $tanggalakhir) {
            $this->db->where('date_created >=', $tanggalawalbaru);
            $this->db->where('date_created <=', $tanggalakhirbaru);
        }
        return $this->db->get('beasiswa_nasional')->result_array();
    }
    }
    