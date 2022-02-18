<?php
    $BASE_URL="http://localhost/koperasi/";
    session_start();
    include "../koneksi.php";

    if(!empty($_POST)){
        if($_POST['aksi']=='keranjang-tambah'){
            $id_produk=$_POST['id_produk'];            
            $id_user=$_SESSION['backend_user_id'];
            $jumlah=$_POST['jumlah'];
            $harga=$_POST['harga'];
            $hpp=$_POST['hpp'];
            // Cek Sudah Ada Dikeranjang ??
            $sql2="select * from keranjang_beli where id_produk=$id_produk and id_user=$id_user";
            $query2=mysqli_query($koneksi,$sql2);
            $ketemu=mysqli_num_rows($query2);
            if($ketemu<=0){
                $sql="insert into keranjang_beli (id_user, id_produk, harga, jumlah,hpp) values($id_user, $id_produk, $harga, $jumlah,$hpp)";    
            } else {
                $sql="update keranjang_beli set harga=$harga,jumlah=$jumlah,diubah_pada=DEFAULT where id_produk=$id_produk and id_user=$id_user";
            }
            //echo $sql;
            mysqli_query($koneksi,$sql);
            
            
            header('location:../index.php?p=pembelian');
        }
        else if($_POST['aksi']=='keranjang-ubah'){
            $x0=$_POST['id'];
            $x1=$_POST['harga'];
            $x2=$_POST['qty'];
            $sql="update keranjang_beli set harga=$x1,jumlah=$x2,diubah_pada=DEFAULT where id_keranjang_beli=$x0";
            mysqli_query($koneksi,$sql);
            header('location:../index.php?p=pembelian');
        }
        else if($_POST['aksi']=='simpan-pembelian'){
            $id_pemasok=$_POST['id_pemasok'];
            $id_user=$_SESSION['backend_user_id'];
            $metode_bayar=$_POST['metode_bayar'];
            $tanggal_transaksi=$_POST['tanggal_transaksi'];
            $total=$_POST['total'];
            $diskon=0;
            $pajak=0;
            
            $sql="insert into beli (id_pemasok, id_user, metode_bayar, tanggal_transaksi, total, diskon, pajak, dibuat_pada, diubah_pada) values($id_pemasok,$id_user,'$metode_bayar','$tanggal_transaksi',$total,$diskon,$pajak,DEFAULT,DEFAULT)";
            mysqli_query($koneksi,$sql);

            // Simpan Detail Jual
            $sql1="select * from beli where id_user=$id_user order by id_beli desc limit 1";
            $query1=mysqli_query($koneksi,$sql1);
            $kolom1=mysqli_fetch_array($query1);
            $id_beli=$kolom1['id_beli'];

            $sql2="select keranjang_beli.*,produk.qty as jumlah_stok_sekarang from keranjang_beli,produk where keranjang_beli.id_produk=produk.id_produk and id_user=$id_user";
            $query2=mysqli_query($koneksi,$sql2);
            while($kolom2=mysqli_fetch_array($query2)){
                $id_produk=$kolom2['id_produk'];
                $hpp=$kolom2['hpp'];
                $harga_beli=$kolom2['harga'];
                $jumlah=$kolom2['jumlah'];
                $jumlah_stok_sekarang=$kolom2['jumlah_stok_sekarang'];

                //Hitung HPP Metode Average
                $hpp_average=(($harga_beli*$jumlah)+($hpp*$jumlah_stok_sekarang))/($jumlah+$jumlah_stok_sekarang);

                $sql3="insert into beli_detail(id_beli, id_produk, hpp, harga_beli, jumlah, dibuat_pada, diubah_pada) values($id_beli,$id_produk,$hpp,$harga_beli,$jumlah,DEFAULT,DEFAULT)";
                mysqli_query($koneksi,$sql3);
                $sql4="update produk set hpp=$hpp_average,hpp_awal=$harga_beli,qty=qty+$jumlah where id_produk=$id_produk";
                mysqli_query($koneksi,$sql4);
            }

            $sukses=mysqli_affected_rows($koneksi);
            if($sukses>=1){
                $_SESSION['status_proses'] ='SUKSES SIMPAN BELI';                    
            }

            // Kosongkan Keranjang
            $sql4="delete from keranjang_beli where id_user=$id_user";
            mysqli_query($koneksi,$sql4);            
            $link='location:../index.php?p=pembelian';
            header($link);
        }
        else if($_POST['aksi']=='ubah-pembelian'){
            $id_beli=$_POST['id_beli'];
            $id_pemasok=$_POST['id_pemasok'];
            $id_user=$_SESSION['backend_user_id'];
            $metode_bayar=$_POST['metode_bayar'];
            $tanggal_transaksi=$_POST['tanggal_transaksi'];
            $jumlah_data=$_POST['jumlah_data'];

            $sql="update beli set id_pemasok=$id_pemasok, id_user=$id_user, metode_bayar='$metode_bayar', tanggal_transaksi='$tanggal_transaksi', diubah_pada=DEFAULT where id_beli=$id_beli";
            
            mysqli_query($koneksi,$sql);
            $sukses=mysqli_affected_rows($koneksi);
            if($sukses>=1){
                $_SESSION['status_proses'] ='SUKSES SIMPAN BELI';                    
            }
            
            for($i=0;$i<$jumlah_data;$i++){
                $id_produk=$_POST['id_produk'][$i];
                $harga=$_POST['harga'][$i];
                $qty=$_POST['qty'][$i];
                $qty_awal=$_POST['qty_awal'][$i];
                $sql1="update beli_detail set harga_beli=$harga,jumlah=$qty,diubah_pada=DEFAULT where id_produk=$id_produk and id_beli=$id_beli";
                //echo $sql1."<br>";
                mysqli_query($koneksi,$sql1);
                
                $sql2="update produk set qty=qty-$qty_awal+$qty,diubah_pada=DEFAULT where id_produk=$id_produk";                
                mysqli_query($koneksi,$sql2);
            }

            $link="location:../index.php?p=pembelian-edit&token=$id_beli";
            header($link);

            
            

        }
    }


    if(!empty($_GET['aksi'])){
        if($_GET['aksi']=='keranjang-hapus'){
            $x0=$_GET['token'];
            $sql="delete from keranjang_beli where md5(id_keranjang_beli)='$x0'";
            mysqli_query($koneksi,$sql);
            header('location:../index.php?p=pembelian');
        }
    }
?>