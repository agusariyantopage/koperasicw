<?php
    $BASE_URL="http://localhost/koperasi/";
    session_start();
    include "../koneksi.php";

    if(!empty($_POST)){
        if($_POST['aksi']=='keranjang-tambah'){
            header('location:../index.php?p=penjualan');
        }
        else if($_POST['aksi']=='keranjang-ubah'){
            header('location:../index.php?p=penjualan');
        }
        else if($_POST['aksi']=='simpan-simpanan'){
            $id_anggota=$_POST['id_anggota'];
            $id_user=$_SESSION['backend_user_id'];
            $jenis_simpanan=$_POST['jenis_simpanan'];
            $tanggal_transaksi=$_POST['tanggal_awal_kontrak'];
            $tanggal_awal_kontrak=$_POST['tanggal_awal_kontrak'];
            $tanggal_akhir_kontrak=$_POST['tanggal_awal_kontrak'];
            $durasi_kontrak_bulan=$_POST['durasi_kontrak_bulan'];
            $bunga_tahunan=$_POST['bunga_tahunan'];
            $jumlah_simpanan=$_POST['jumlah_simpanan'];
            
            $sql="insert into simpanan (id_anggota, id_user, jenis_simpanan, tanggal_transaksi, tanggal_awal_kontrak, tanggal_akhir_kontrak, durasi_kontrak_bulan, bunga_tahunan, jumlah_simpanan, dibuat_pada, diubah_pada, status_simpanan) values($id_anggota, $id_user, '$jenis_simpanan', '$tanggal_transaksi', '$tanggal_awal_kontrak', '$tanggal_akhir_kontrak', $durasi_kontrak_bulan, $bunga_tahunan, $jumlah_simpanan,DEFAULT,DEFAULT,DEFAULT)";
            mysqli_query($koneksi,$sql);
            //echo $sql;
            // Simpan Detail Jual
            $sql1="select * from simpanan where id_user=$id_user order by id_simpanan desc limit 1";
            $query1=mysqli_query($koneksi,$sql1);
            $kolom1=mysqli_fetch_array($query1);
            //$id_jual=$kolom1['id_jual'];
            for($i=0;$i<$durasi_kontrak_bulan;$i++){                
                $id_simpanan=$kolom1['id_simpanan'];
                $urut=$_POST['urut'][$i];
                $tanggal_jatuh_tempo=$_POST['tanggal_jatuh_tempo'][$i];                
                $anggaran_pembayaran=$_POST['anggaran_pembayaran'][$i];
                $bunga_persentase=$_POST['bunga_persentase'][$i];
                $bunga_nominal=$_POST['bunga_nominal'][$i];
                $anggaran_saldo_akhir=$_POST['anggaran_saldo_akhir'][$i];                
                $sql2="insert into simpanan_detail(id_simpanan, urut, tanggal_jatuh_tempo, tanggal_realisasi_bayar, anggaran_pembayaran, realisasi_pembayaran, bunga_persentase, bunga_nominal, anggaran_saldo_akhir, realisasi_saldo_akhir, dibuat_pada, diubah_pada, diterima_oleh) values($id_simpanan, $urut, '$tanggal_jatuh_tempo', DEFAULT, $anggaran_pembayaran, DEFAULT, $bunga_persentase, $bunga_nominal, $anggaran_saldo_akhir, DEFAULT, DEFAULT, DEFAULT, DEFAULT)";
                //echo $sql2."<br>";
                mysqli_query($koneksi,$sql2);
            }
            header('location:../index.php?p=simpanan');
           
        }
    }

   
?>