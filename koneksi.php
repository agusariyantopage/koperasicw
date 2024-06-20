<?php
    date_default_timezone_set("Asia/Kuala_Lumpur");
    $adjustment_date='2023-12-31';
    $adjustment_state=1; // Aktif
    // Variabel Koneksi
    $servername     ="localhost";
    $database       ="dbkoperasi";
    $username       ="root";
    $password       ="";

    // Koneksi Ke Database
    $koneksi =mysqli_connect($servername,$username,$password,$database);

    
    // Cek apakah koneksi berhasil
    if(!$koneksi){
        die("koneksi Ke Database Gagal :".mysqli_connect_error());
    } else {
        //echo "Koneksi Ke Database Berhasil";
    }

?>