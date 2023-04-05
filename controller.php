<?php
    $BASE_URL="http://localhost/koperasi/";
    $app_version="1.0";

    if(empty($_GET['p'])){
        $title  ="App Koperasi V $app_version"; 
        $konten="konten/home.php";    
    }

    // (START) Menu Master Data
    else if($_GET['p']=='kategori'){
        $title  ="App Koperasi V $app_version | Kategori Produk";
        $konten="konten/produk_kategori.php";
    }
    else if($_GET['p']=='produk'){
        $title  ="App Koperasi V $app_version | Produk";
        $konten="konten/produk.php";
    }
    else if($_GET['p']=='produk-konsinyasi'){
        $title  ="App Koperasi V $app_version | Produk Konsinyasi";
        $konten="konten/produk_konsinyasi.php";
    }
    else if($_GET['p']=='produk-tambah'){
        $title  ="App Koperasi V $app_version | Tambah Produk";
        $konten="konten/produk_tambah.php";
    }
    else if($_GET['p']=='produk-ubah'){
        $title  ="App Koperasi V $app_version | Ubah Produk";
        $konten="konten/produk_ubah.php";
    }
    else if($_GET['p']=='anggota'){
        $title  ="App Koperasi V $app_version | Anggota";
        $konten="konten/anggota.php";
    }
    else if($_GET['p']=='pemasok'){
        $title  ="App Koperasi V $app_version | Pemasok";
        $konten="konten/pemasok.php";
    }
    // (END) Menu Master Data

    else if($_GET['p']=='user'){
        $title  ="App Koperasi V $app_version | User";
        $konten="konten/user.php";
    }
    else if($_GET['p']=='daftar-penjualan'){
        $title  ="App Koperasi V $app_version | Daftar Penjualan";
        $konten="konten/penjualan-daftar.php";
    }
    else if($_GET['p']=='penjualan'){
        $title  ="App Koperasi V $app_version | Point Of Sales";
        $konten="konten/penjualan.php";
    }
    else if($_GET['p']=='penjualan-info'){
        $title  ="App Koperasi V $app_version | Informasi Penjualan";
        $konten="konten/penjualan-info.php";
    }
    else if($_GET['p']=='daftar-pembelian'){
        $title  ="App Koperasi V $app_version | Daftar Pembelian";
        $konten="konten/pembelian-daftar.php";
    }
    else if($_GET['p']=='pembelian'){
        $title  ="App Koperasi V $app_version | Pembelian";
        $konten="konten/pembelian.php";
    }
    else if($_GET['p']=='pembelian-info'){
        $title  ="App Koperasi V $app_version | Informasi Pembelian";
        $konten="konten/pembelian-info.php";
    }
    else if($_GET['p']=='pembelian-edit'){
        $title  ="App Koperasi V $app_version | Ubah Pembelian";
        $konten="konten/pembelian-edit.php";
    }
    else if($_GET['p']=='kartu-stok'){
        $title  ="App Koperasi V $app_version | Kartu Stok";
        $konten="konten/kartu_stok.php";
    }
    else if($_GET['p']=='kartu-stok-individu'){
        $title  ="App Koperasi V $app_version | Kartu Stok Individu";
        $konten="konten/kartu_stok_individu.php";
    }
    else if($_GET['p']=='penjualan-info-kas'){
        $title  ="App Koperasi V $app_version | Informasi Kas Toko";
        $konten="konten/penjualan-info-kas.php";
    }

    // (START)  Menu Simpanan
    else if($_GET['p']=='simpanan'){
        $title  ="App Koperasi V $app_version | Daftar Simpanan";
        $konten="konten/simpanan.php";
    }
    else if($_GET['p']=='simpanan-tambah'){
        $title  ="App Koperasi V $app_version | Tambah Transaksi Simpanan";
        $konten="konten/simpanan-tambah.php";
    }
    else if($_GET['p']=='simpanan-tambah-sw'){
        $title  ="App Koperasi V $app_version | Tambah Baru Simpanan Wajib";
        $konten="konten/simpanan-tambah-sw.php";
    }
    else if($_GET['p']=='simpanan-detail'){
        $title  ="App Koperasi V $app_version | Detail Transaksi Simpanan";
        $konten="konten/simpanan-detail.php";
    }
    else if($_GET['p']=='simpanan-mutasi'){
        $title  ="App Koperasi V $app_version | Mutasi Transaksi Simpanan";
        $konten="konten/simpanan-mutasi.php";
    }
    else if($_GET['p']=='simpanan-autopay'){
        $title  ="App Koperasi V $app_version | Pengaturan Potong Gaji Simpanan";
        $konten="konten/simpanan-autopay.php";
    }
    // (END)    Menu Simpanan
    
    // (START)  Menu Pinjamanan
    else if($_GET['p']=='pinjaman'){
        $title  ="App Koperasi V $app_version | Daftar Pinjaman";
        $konten="konten/pinjaman.php";
    }
    else if($_GET['p']=='pinjaman-tambah'){
        $title  ="App Koperasi V $app_version | Tambah Transaksi Pinjaman";
        $konten="konten/pinjaman-tambah.php";
    }
    else if($_GET['p']=='pinjaman-tambah-cicilan-tetap'){
        $title  ="App Koperasi V $app_version | Tambah Transaksi Pinjaman";
        $konten="konten/pinjaman-tambah-cicilan-tetap.php";
    }
    else if($_GET['p']=='pinjaman-mutasi'){
        $title  ="App Koperasi V $app_version | Mutasi Transaksi Pinjaman";
        $konten="konten/pinjaman-mutasi.php";
    }
    else if($_GET['p']=='pinjaman-autopay'){
        $title  ="App Koperasi V $app_version | Pengaturan Potong Gaji Pinjaman";
        $konten="konten/pinjaman-autopay.php";
    }
    // (END)    Menu Pinjamanan

    else if($_GET['p']=='laporan'){
        $title  ="App Koperasi V $app_version | Laporan";
        $konten="konten/laporan.php";
    }

    
    else if($_GET['p']=='keuangan-periode'){
        $title  ="App Koperasi V $app_version | Periode Pembukuan";
        $konten="konten/keuangan-periode.php";
    }
    else if($_GET['p']=='keuangan-periode-prosesbulanan'){
        $title  ="App Koperasi V $app_version | Proses Perhitungan Bulanan";
        $konten="konten/keuangan-periode-prosesbulanan.php";
        //$konten="konten/keuangan-periode-prosesbulanan-backup-simpanpinjam.php";
    }
    else if($_GET['p']=='anggota-saldo'){
        $title  ="App Koperasi V $app_version | Saldo Anggota";
        $konten="konten/anggota-saldo.php";
    }
    else if($_GET['p']=='anggota-saldo-individu'){
        $title  ="App Koperasi V $app_version | Saldo Anggota Individu";
        $konten="konten/anggota-saldo-individu.php";
    }
    else if($_GET['p']=='anggota-poin'){
        $title  ="App Koperasi V $app_version | Poin Anggota";
        $konten="konten/anggota-poin.php";
    }

    // (START)  Menu Pemeliharaan
    else if($_GET['p']=='pemeliharaan'){
        $title  ="App Koperasi V $app_version | Pemeliharaan";
        $konten="konten/pemeliharaan.php";
    }
    else if($_GET['p']=='pemeliharaan-tidakwajar'){
        $title  ="App Koperasi V $app_version | Transaksi Dengan Harga Tidak Wajar";
        $konten="konten/pemeliharaan-tidakwajar.php";
    }
    else if($_GET['p']=='pemeliharaan-beda-total'){
        $title  ="App Koperasi V $app_version | Transaksi Beda Total";
        $konten="konten/pemeliharaan-beda-total.php";
    }
    // (END)  Menu Pemeliharaan
?>