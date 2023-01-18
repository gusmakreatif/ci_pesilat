<?php

namespace App\Controllers;

class Home extends BaseController
{
    public function index()
    {
        $data=[
            'title'=>'Aplikasi | Pencak Silat'
        ];
        return view('home', $data);
    }
}
