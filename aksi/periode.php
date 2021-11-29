<?php
    session_start();
    include "../koneksi.php";

    if(!empty($_POST)){
        if($_POST['aksi']=='tambah'){
            
        }
        else if($_POST['aksi']=='ubah'){
            $id_periode=$_POST['id_periode'];
            $tanggal_mulai=$_POST['tanggal_mulai'];
            $tanggal_selesai=$_POST['tanggal_selesai'];
            

            $sql="update periode_pembukuan set tanggal_mulai='$tanggal_mulai',tanggal_selesai='$tanggal_selesai' where id_periode=$id_periode";
            mysqli_query($koneksi,$sql);
            header('location:../index.php?p=keuangan-periode');
        }
    }

    if(!empty($_GET['aksi'])){        
        
    }
?>