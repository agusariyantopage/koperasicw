<?php
    $BASE_URL="http://localhost/koperasi/";

    if(empty($_GET['p'])){
        $title  ="App Koperasi V 1.0"; 
        $konten="konten/home.php";    
    }

    // Awal Menu Master Data
    else if($_GET['p']=='kategori'){
        $title  ="App Koperasi V 1.0 | Kategori Produk";
        $konten="konten/produk_kategori.php";
    }
    else if($_GET['p']=='produk'){
        $title  ="App Koperasi V 1.0 | Produk";
        $konten="konten/produk.php";
    }
    else if($_GET['p']=='produk-tambah'){
        $title  ="App Koperasi V 1.0 | Tambah Produk";
        $konten="konten/produk_tambah.php";
    }
    else if($_GET['p']=='produk-ubah'){
        $title  ="App Koperasi V 1.0 | Ubah Produk";
        $konten="konten/produk_ubah.php";
    }
    else if($_GET['p']=='anggota'){
        $title  ="App Koperasi V 1.0 | Anggota";
        $konten="konten/anggota.php";
    }
    else if($_GET['p']=='pemasok'){
        $title  ="App Koperasi V 1.0 | Pemasok";
        $konten="konten/pemasok.php";
    }
    // Akhir Menu Master Data

    else if($_GET['p']=='user'){
        $title  ="App Koperasi V 1.0 | User";
        $konten="konten/user.php";
    }
    else if($_GET['p']=='daftar-penjualan'){
        $title  ="App Koperasi V 1.0 | Daftar Penjualan";
        $konten="konten/penjualan-daftar.php";
    }
    else if($_GET['p']=='penjualan'){
        $title  ="App Koperasi V 1.0 | Point Of Sales";
        $konten="konten/penjualan.php";
    }
    else if($_GET['p']=='daftar-pembelian'){
        $title  ="App Koperasi V 1.0 | Daftar Pembelian";
        $konten="konten/pembelian-daftar.php";
    }
    else if($_GET['p']=='pembelian'){
        $title  ="App Koperasi V 1.0 | Pembelian";
        $konten="konten/pembelian.php";
    }
    else if($_GET['p']=='kartu-stok'){
        $title  ="App Koperasi V 1.0 | Kartu Stok";
        $konten="konten/kartu_stok.php";
    }
    else if($_GET['p']=='kartu-stok-individu'){
        $title  ="App Koperasi V 1.0 | Kartu Stok Individu";
        $konten="konten/kartu_stok_individu.php";
    }
    else if($_GET['p']=='pesanan-edit'){
        $title  ="App Koperasi V 1.0";
        $konten="konten/pesanan-edit.php";
    }
    else if($_GET['p']=='laporan'){
        $title  ="App Koperasi V 1.0 | Laporan";
        $konten="konten/laporan.php";
    }
    else if($_GET['p']=='keuangan-periode'){
        $title  ="App Koperasi V 1.0 | Periode Pembukuan";
        $konten="konten/keuangan-periode.php";
    }
    else if($_GET['p']=='keuangan-periode-prosesbulanan'){
        $title  ="App Koperasi V 1.0 | Proses Perhitungan Bulanan";
        $konten="konten/keuangan-periode-prosesbulanan.php";
    }
    else if($_GET['p']=='anggota-saldo'){
        $title  ="App Koperasi V 1.0 | Saldo Anggota";
        $konten="konten/anggota-saldo.php";
    }
?>