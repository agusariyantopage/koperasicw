<?php
    $BASE_URL="http://localhost/koperasi/";

    if(empty($_GET['p'])){
        $title  ="App Koperasi V 1.0"; 
        $konten="konten/home.php";    
    }

    // (START) Menu Master Data
    else if($_GET['p']=='kategori'){
        $title  ="App Koperasi V 1.0 | Kategori Produk";
        $konten="konten/produk_kategori.php";
    }
    else if($_GET['p']=='produk'){
        $title  ="App Koperasi V 1.0 | Produk";
        $konten="konten/produk.php";
    }
    else if($_GET['p']=='produk-konsinyasi'){
        $title  ="App Koperasi V 1.0 | Produk Konsinyasi";
        $konten="konten/produk_konsinyasi.php";
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
    // (END) Menu Master Data

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
    else if($_GET['p']=='penjualan-info'){
        $title  ="App Koperasi V 1.0 | Informasi Penjualan";
        $konten="konten/penjualan-info.php";
    }
    else if($_GET['p']=='daftar-pembelian'){
        $title  ="App Koperasi V 1.0 | Daftar Pembelian";
        $konten="konten/pembelian-daftar.php";
    }
    else if($_GET['p']=='pembelian'){
        $title  ="App Koperasi V 1.0 | Pembelian";
        $konten="konten/pembelian.php";
    }
    else if($_GET['p']=='pembelian-info'){
        $title  ="App Koperasi V 1.0 | Informasi Pembelian";
        $konten="konten/pembelian-info.php";
    }
    else if($_GET['p']=='pembelian-edit'){
        $title  ="App Koperasi V 1.0 | Ubah Pembelian";
        $konten="konten/pembelian-edit.php";
    }
    else if($_GET['p']=='kartu-stok'){
        $title  ="App Koperasi V 1.0 | Kartu Stok";
        $konten="konten/kartu_stok.php";
    }
    else if($_GET['p']=='kartu-stok-individu'){
        $title  ="App Koperasi V 1.0 | Kartu Stok Individu";
        $konten="konten/kartu_stok_individu.php";
    }
    else if($_GET['p']=='penjualan-info-kas'){
        $title  ="App Koperasi V 1.0 | Informasi Kas Toko";
        $konten="konten/penjualan-info-kas.php";
    }

    // (START)  Menu Simpanan
    else if($_GET['p']=='simpanan'){
        $title  ="App Koperasi V 1.0 | Daftar Simpanan";
        $konten="konten/simpanan.php";
    }
    else if($_GET['p']=='simpanan-tambah'){
        $title  ="App Koperasi V 1.0 | Tambah Transaksi Simpanan";
        $konten="konten/simpanan-tambah.php";
    }
    else if($_GET['p']=='simpanan-tambah-sw'){
        $title  ="App Koperasi V 1.0 | Tambah Baru Simpanan Wajib";
        $konten="konten/simpanan-tambah-sw.php";
    }
    else if($_GET['p']=='simpanan-detail'){
        $title  ="App Koperasi V 1.0 | Detail Transaksi Simpanan";
        $konten="konten/simpanan-detail.php";
    }
    else if($_GET['p']=='simpanan-mutasi'){
        $title  ="App Koperasi V 1.0 | Mutasi Transaksi Simpanan";
        $konten="konten/simpanan-mutasi.php";
    }
    else if($_GET['p']=='pinjaman'){
        $title  ="App Koperasi V 1.0 | Daftar Pinjaman";
        $konten="konten/pinjaman.php";
    }
    // (END)    Menu Simpanan

    // (START)  Menu Pinjamanan
    else if($_GET['p']=='pinjaman-tambah'){
        $title  ="App Koperasi V 1.0 | Tambah Transaksi Pinjaman";
        $konten="konten/pinjaman-tambah.php";
    }
    // (END)    Menu Pinjamanan

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
    else if($_GET['p']=='anggota-saldo-individu'){
        $title  ="App Koperasi V 1.0 | Saldo Anggota Individu";
        $konten="konten/anggota-saldo-individu.php";
    }
    else if($_GET['p']=='anggota-poin'){
        $title  ="App Koperasi V 1.0 | Poin Anggota";
        $konten="konten/anggota-poin.php";
    }

    // (START)  Menu Pemeliharaan
    else if($_GET['p']=='pemeliharaan'){
        $title  ="App Koperasi V 1.0 | Pemeliharaan";
        $konten="konten/pemeliharaan.php";
    }
    else if($_GET['p']=='pemeliharaan-tidakwajar'){
        $title  ="App Koperasi V 1.0 | Transaksi Dengan Harga Tidak Wajar";
        $konten="konten/pemeliharaan-tidakwajar.php";
    }
    else if($_GET['p']=='pemeliharaan-beda-total'){
        $title  ="App Koperasi V 1.0 | Transaksi Beda Total";
        $konten="konten/pemeliharaan-beda-total.php";
    }
    // (END)  Menu Pemeliharaan
?>