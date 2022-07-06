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

            // Simpan Jadwal Pembayaran Jika Metode Bayar Adalah Cicilan
            if($metode_bayar=="CICIL BAYAR"){
                $jumlah_cicil=$_POST['jumlah_cicil'];
                $cicil[0]=$_POST['jumlah_bayar1'];                
                $cicil[1]=$_POST['jumlah_bayar2'];                
                $cicil[2]=$_POST['jumlah_bayar3'];                
                $cicil[3]=$_POST['jumlah_bayar4'];                
                $cicil[4]=$_POST['jumlah_bayar5'];                

                //$sql6="update anggota set saldo=saldo-$cicil[0] where id_anggota=$id_anggota";
                //mysqli_query($koneksi,$sql6);

                for($i=0;$i<$jumlah_cicil;$i++){
                    $keterangan="Pembayaran ke -".($i+1);
                    $tanggal_jatuh_tempo=$_POST['tanggal_jatuh_tempo'][$i];
                    $jumlah_tagihan=$cicil[$i];
                    $is_terbayar=0;

                    $sql5="insert into jual_cicil(id_jual, keterangan, tanggal_jatuh_tempo, jumlah_tagihan, is_terbayar, dibuat_pada, diubah_pada) values($id_jual,'$keterangan','$tanggal_jatuh_tempo',$jumlah_tagihan,$is_terbayar,DEFAULT,DEFAULT)";
                    mysqli_query($koneksi,$sql5);
                }
            }

            if($metode_bayar=="POTONG SALDO ANGGOTA"){
                $sql6="update anggota set saldo=saldo-$total where id_anggota=$id_anggota";
                mysqli_query($koneksi,$sql6);
            }

            // Kosongkan Keranjang
            $sql4="delete from keranjang where id_user=$id_user";
            mysqli_query($koneksi,$sql4);
            $url_struk=$BASE_URL."pdf/output/struk.php?token=".md5($id_jual);            

            //echo "<script type='text/javascript'>window.open( 'https://stackoverflow.com/' )</script>";
            $link='location:../index.php?p=penjualan&last='.md5($id_jual);
            header($link);
        }

        else if($_POST['aksi']=='hapus-penjualan'){
            $id_jual=$_POST['id_jual'];
            $id_anggota=$_POST['id_anggota'];
            $saldo=$_POST['saldo'];
            $perintah_update_stok=$_POST['perintah_update_stok'];

            // Update Saldo Belanja
            $sql1="update anggota set saldo=$saldo where id_anggota=$id_anggota";
            mysqli_query($koneksi,$sql1);
            
            // Delete Nota
            $sql3="delete from jual where id_jual=$id_jual";
            mysqli_query($koneksi,$sql3);

            // Update Stok
            mysqli_multi_query($koneksi,$perintah_update_stok); 
            $sukses=mysqli_affected_rows($koneksi);
            if($sukses>=1){
                $_SESSION['status_proses'] ='SUKSES SIMPAN JUAL';                    
            }                      

           

            // Redirection
            header('location:../index.php?p=daftar-penjualan');
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