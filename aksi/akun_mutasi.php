<?php
    include "../koneksi.php";

    if(!empty($_POST)){
        if($_POST['aksi']=='tambah'){
            $tanggal=$_POST['tanggal'];
            $akun=$_POST['akun'];
            $keterangan=$_POST['keterangan'];
            $jumlah=$_POST['jumlah'];
            
            $sql="insert into akun_mutasi (tanggal, akun, keterangan, jumlah, dibuat_pada, diubah_pada) values('$tanggal', '$akun', '$keterangan'   , $jumlah, DEFAULT, DEFAULT)";
            mysqli_query($koneksi,$sql);
            //echo $sql;
            header('location:../index.php?p=penjualan-info-kas');
        }
    }

    if(!empty($_GET['aksi'])){
        if($_GET['aksi']=='hapus'){
            $x0=$_GET['token'];
            // Jalankan Prosedur Cek Data
            $sql="delete from akun_mutasi where md5(id_akun_mutasi)='$x0'";
            mysqli_query($koneksi,$sql);
            //echo $sql;
            header('location:../index.php?p=penjualan-info-kas');
        }       
        
    }
?>