<?php

class hinh_chu_nhat extends da_giac {
    public $chieu_dai;

    public $chieu_rong;

    public function dien_tich()
    {
        parent::dien_tich();
        $dien_tich = $this->chieu_dai * $this->chieu_rong;
        return $dien_tich;
    }
}