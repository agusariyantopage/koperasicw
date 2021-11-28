<?php
    $BASE_URL="http://localhost/koperasi/";
    session_start();
    include "../koneksi.php";

    if(!empty($_POST)){
        if($_POST['aksi']=='keranjang-tambah'){
            $barcode=$_POST['barcode'];
            $sql1="select * from produk where barcode='$barcode'";
            $query1=mysqli_query($koneksi,$sql1);
            $ketemu=mysqli_num_rows($query1);
            if($ketemu>=1){
                $kolom1=mysqli_fetch_array($query1);
                $id_user=$_SESSION['backend_user_id'];
                $jumlah=$_POST['jumlah'];
                $id_produk=$kolom1['id_produk'];
                $harga=$kolom1['harga_jual'];
                $hpp=$kolom1['hpp'];
                // Cek Sudah Ada Dikeranjang ??
                $sql2="select * from keranjang where id_produk=$id_produk and id_user=$id_user";
                $query2=mysqli_query($koneksi,$sql2);
                $ketemu=mysqli_num_rows($query2);
                if($ketemu<=0){
                    $sql="insert into keranjang (id_user, id_produk, harga, jumlah,hpp) values($id_user, $id_produk, $harga, $jumlah,$hpp)";    
                } else {
                    $sql="update keranjang set jumlah=jumlah+$jumlah,diubah_pada=DEFAULT where id_produk=$id_produk and id_user=$id_user";
                }
                
                mysqli_query($koneksi,$sql);
            }
            
            header('location:../index.php?p=penjualan');
        }
        else if($_POST['aksi']=='keranjang-ubah'){
            $x0=$_POST['id'];
            $x1=$_POST['qty'];
            $sql="update keranjang set jumlah=$x1,diubah_pada=DEFAULT where id_keranjang=$x0";
            mysqli_query($koneksi,$sql);
            header('location:../index.php?p=penjualan');
        }
        else if($_POST['aksi']=='simpan-penjualan'){
            $id_anggota=$_POST['id_anggota'];
            $id_user=$_SESSION['backend_user_id'];
            $metode_bayar=$_POST['metode_bayar'];
            $tanggal_transaksi=$_POST['tanggal_transaksi'];
            $total=$_POST['total'];
            $diskon=0;
            $pajak=0;
            
            $sql="insert into jual (id_anggota, id_user, metode_bayar, tanggal_transaksi, total, diskon, pajak, dibuat_pada, diubah_pada) values($id_anggota,$id_user,'$metode_bayar','$tanggal_transaksi',$total,$diskon,$pajak,DEFAULT,DEFAULT)";
            mysqli_query($koneksi,$sql);

            // Simpan Detail Jual
            $sql1="select * from jual where id_user=$id_user order by id_jual desc limit 1";
            $query1=mysqli_query($koneksi,$sql1);
            $kolom1=mysqli_fetch_array($query1);
            $id_jual=$kolom1['id_jual'];

            $sql2="select * from keranjang where id_user=$id_user";
            $query2=mysqli_query($koneksi,$sql2);
            while($kolom2=mysqli_fetch_array($query2)){
                $id_produk=$kolom2['id_produk'];
                $hpp=$kolom2['hpp'];
                $harga_jual=$kolom2['harga'];
                $jumlah=$kolom2['jumlah'];

                $sql3="insert into jual_detail(id_jual, id_produk, hpp, harga_jual, jumlah, dibuat_pada, diubah_pada) values($id_jual,$id_produk,$hpp,$harga_jual,$jumlah,DEFAULT,DEFAULT)";
                mysqli_query($koneksi,$sql3);
                // Update Stok Produk Pada Jenis Barang Non Jasa
                $sql4="update produk set qty=qty-$jumlah where id_produk=$id_produk and servis=0";
                mysqli_query($koneksi,$sql4);
            }

            $sukses=mysqli_affected_rows($koneksi);
            if($sukses>=1){
                $_SESSION['status_proses'] ='SUKSES SIMPAN JUAL';                    
            }

            // Kosongkan Keranjang
            $sql4="delete from keranjang where id_user=$id_user";
            mysqli_query($koneksi,$sql4);
            $url_struk=$BASE_URL."pdf/output/struk.php?token=".md5($id_jual);            

            //echo "<script type='text/javascript'>window.open( 'https://stackoverflow.com/' )</script>";
            $link='location:../index.php?p=penjualan&last='.md5($id_jual);
            header($link);
        }
    }

    if(!empty($_GET['aksi'])){
        if($_GET['aksi']=='keranjang-hapus'){
            $x0=$_GET['token'];
            $sql="delete from keranjang where md5(id_keranjang)='$x0'";
            mysqli_query($koneksi,$sql);
            header('location:../index.php?p=penjualan');
        }
        else if($_GET['aksi']=='keranjang-tambah'){
            $token=$_GET['token'];
            $sql1="select * from produk where md5(id_produk)='$token'";
            $query1=mysqli_query($koneksi,$sql1);
            $ketemu=mysqli_num_rows($query1);
            if($ketemu>=1){
                $kolom1=mysqli_fetch_array($query1);
                $id_user=$_SESSION['backend_user_id'];
                $jumlah=1;
                $id_produk=$kolom1['id_produk'];
                $harga=$kolom1['harga_jual'];
                $hpp=$kolom1['hpp'];
                // Cek Sudah Ada Dikeranjang ??
                $sql2="select * from keranjang where id_produk=$id_produk and id_user=$id_user";
                $query2=mysqli_query($koneksi,$sql2);
                $ketemu=mysqli_num_rows($query2);
                if($ketemu<=0){
                    $sql="insert into keranjang (id_user, id_produk, harga, jumlah,hpp) values($id_user, $id_produk, $harga, $jumlah,$hpp)";   
                } else {
                    $sql="update keranjang set jumlah=jumlah+$jumlah,diubah_pada=DEFAULT where id_produk=$id_produk and id_user=$id_user";
                }
                mysqli_query($koneksi,$sql);
                
                
            }
            
            header('location:../index.php?p=penjualan');
        }
    }
?>