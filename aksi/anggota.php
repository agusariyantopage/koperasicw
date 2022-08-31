<?php
    session_start();
    include "../koneksi.php";

    if(!empty($_POST)){
        if($_POST['aksi']=='tambah'){
            $no_identitas=$_POST['no_identitas'];
            $tanggal_bergabung=$_POST['tanggal_bergabung'];
            $nama=$_POST['nama'];
            $alamat=$_POST['alamat'];
            $telepon=$_POST['telepon'];
            $email=$_POST['email'];
            $saldo=0;
            $poin=0;
            $is_individual=$_POST['is_individual'];
            
            $sql="insert into anggota (no_identitas, tanggal_bergabung, nama, alamat, telepon, email, saldo, poin, is_individual, dibuat_pada, diubah_pada) values('$no_identitas', '$tanggal_bergabung', '$nama', '$alamat', '$telepon', '$email', $saldo, $poin, $is_individual, DEFAULT, DEFAULT)";
            mysqli_query($koneksi,$sql);
            //echo $sql;
            header('location:../index.php?p=anggota');
        }
        else if($_POST['aksi']=='ubah'){
            $id_anggota=$_POST['id_anggota'];
            $no_identitas=$_POST['no_identitas'];
            $tanggal_bergabung=$_POST['tanggal_bergabung'];
            $nama=$_POST['nama'];
            $alamat=$_POST['alamat'];
            $telepon=$_POST['telepon'];
            $email=$_POST['email'];
            $belanja_wajib=$_POST['belanja_wajib'];
            $saldo=0;
            $poin=0;
            $is_individual=$_POST['is_individual'];
            

            $sql="update anggota set no_identitas='$no_identitas', tanggal_bergabung='$tanggal_bergabung', nama='$nama', alamat='$alamat', telepon='$telepon', email='$email', saldo=saldo, poin=poin, belanja_wajib=$belanja_wajib, is_individual=$is_individual, dibuat_pada=dibuat_pada, diubah_pada=DEFAULT where id_anggota=$id_anggota";
            mysqli_query($koneksi,$sql);
            header('location:../index.php?p=anggota');
        }
    }

    if(!empty($_GET['aksi'])){
        if($_GET['aksi']=='hapus'){
            $x0=$_GET['token'];
            // Jalankan Prosedur Cek Data
            $sql="delete from anggota where md5(id_anggota)='$x0'";
            //mysqli_query($koneksi,$sql);
            //echo $sql;
            header('location:../index.php?p=anggota');
        }
        if($_GET['aksi']=='buang-spasi'){
            $sql="update anggota set nama=trim(nama)";
            mysqli_query($koneksi,$sql);
            //echo $sql;
            header('location:../index.php?p=anggota');
        }
        if($_GET['aksi']=='set-kapital'){
            $sql="update anggota set nama=upper(nama)";
            mysqli_query($koneksi,$sql);
            //echo $sql;
            header('location:../index.php?p=anggota');
        }
        if($_GET['aksi']=='set-proper'){
            $sql="UPDATE anggota SET nama = CONCAT(UPPER(SUBSTRING(nama, 1, 1)), LOWER(SUBSTRING(nama FROM 2)))";
            mysqli_query($koneksi,$sql);
            //echo $sql;
            header('location:../index.php?p=anggota');
        }
        if($_GET['aksi']=='balancing-saldo'){
            $id_anggota=$_GET['token'];
            $akumulasi=$_GET['akumulasi'];
            $sql="UPDATE anggota SET saldo=$akumulasi WHERE md5(id_anggota)='$id_anggota'";
            mysqli_query($koneksi,$sql);
            //echo $sql;
            $link="location:../index.php?p=anggota-saldo-individu&token=".$id_anggota;
            header($link);

        }
        
    }
?>