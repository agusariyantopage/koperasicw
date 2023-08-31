<?php

function call_option($koneksi, $nama_tabel, $order_by, $value, $display)
{
    $sql = "SELECT * FROM " . $nama_tabel . " ORDER BY " . $order_by;
    $query = mysqli_query($koneksi, $sql);
    while ($kolom = mysqli_fetch_array($query)) {
        echo "<option value='$kolom[$value]'>$kolom[$display]</option>";
    }
}

function call_option_selected($koneksi, $nama_tabel, $order_by, $value, $display, $selected_id)
{
    $sql = "SELECT * FROM " . $nama_tabel . " ORDER BY " . $order_by;
    $query = mysqli_query($koneksi, $sql);
    while ($kolom = mysqli_fetch_array($query)) {
        echo ($selected_id == $kolom[$value]) ? "<option value='$kolom[$value]' selected>$kolom[$display]</option>" : "<option value='$kolom[$value]'>$kolom[$display]</option>";
    }
}

function call_option_selected_parametered($koneksi, $nama_tabel, $order_by, $value, $display, $selected_id, $parameter)
{
    $sql = "SELECT * FROM " . $nama_tabel . " WHERE " . $parameter . " ORDER BY " . $order_by;
    $query = mysqli_query($koneksi, $sql);
    while ($kolom = mysqli_fetch_array($query)) {
        echo ($selected_id == $kolom[$value]) ? "<option value='$kolom[$value]' selected>$kolom[$display]</option>" : "<option value='$kolom[$value]'>$kolom[$display]</option>";
    }
}

// Fungsi  Get Single Data
function get_single_data($koneksi, $nama_tabel, $kolom_kunci, $nilai_kunci)
{
    $sql = "SELECT * FROM " . $nama_tabel . " WHERE " . $kolom_kunci . "=" . $nilai_kunci;
    $query = mysqli_query($koneksi, $sql);
    $data = mysqli_fetch_array($query);
    return $data;
}

// Fungsi Cek Data Exist [Return True/False]
function cek_exist_1_parameter($koneksi, $nama_tabel, $kolom_kunci, $nilai_kunci)
{
    $sql = "SELECT * FROM " . $nama_tabel . " WHERE " . $kolom_kunci . "=" . $nilai_kunci;
    $query = mysqli_query($koneksi, $sql);
    $ketemu = mysqli_num_rows($query);
    if ($ketemu >= 1) {
        return true;
    } else {
        return false;
    }
}

// Fungsi Cek Data Exist [Return True/False]
function cek_exist_2_parameter($koneksi, $nama_tabel, $kolom_kunci1, $nilai_kunci1, $kolom_kunci2, $nilai_kunci2)
{
    $sql = "SELECT * FROM " . $nama_tabel . " WHERE " . $kolom_kunci1 . "='" . $nilai_kunci1 . "' AND " . $kolom_kunci2 . "='" . $nilai_kunci2 . "'";
    $query = mysqli_query($koneksi, $sql);
    $ketemu = mysqli_num_rows($query);

    if ($ketemu >= 1) {
        return true;
    } else {
        return false;
    }
}

// Fungsi cek data terkait mutasi simpanan (untuk proses massal)
function get_mutasi_simpanan_periode($koneksi, $id_simpanan, $tanggal_mulai, $tanggal_selesai)
{
    $sql = "SELECT * FROM simpanan_mutasi WHERE id_simpanan=$id_simpanan AND tanggal_transaksi BETWEEN '$tanggal_mulai' AND '$tanggal_selesai'";
    $query = mysqli_query($koneksi, $sql);
    $ketemu = mysqli_num_rows($query);
    return $ketemu;
}

// Fungsi Cek Data Exist [Return True/False]
function cek_exist_between_parameter($koneksi, $nama_tabel, $kolom_kunci, $nilai_kunci1, $nilai_kunci2)
{
    $sql = "SELECT * FROM " . $nama_tabel . " WHERE " . $kolom_kunci . " BEETWEEN '" . $nilai_kunci1 . "' AND " . $nilai_kunci2 . "'";
    $query = mysqli_query($koneksi, $sql);
    $ketemu = mysqli_num_rows($query);

    if ($ketemu >= 1) {
        return true;
    } else {
        return false;
    }
}

// Fungsi Akuntansi Posting Jurnal
function get_id_jurnal($koneksi)
{
    $sql = "SELECT * FROM akun_jurnal ORDER BY id_akun_jurnal DESC LIMIT 1";
    $query = mysqli_query($koneksi, $sql);
    $data = mysqli_fetch_array($query);
    return $data['id_akun_jurnal'];
}

function posting_jurnal($koneksi, $tanggal_transaksi, $deskripsi, $id_akun_debet, $id_akun_kredit, $nominal_transaksi)
{
    $nomor_jurnal = '';
    $sql = "INSERT INTO akun_jurnal(id_akun_jurnal, nomor_jurnal, deskripsi, tanggal_transaksi, dibuat_pada, diubah_pada) VALUES(DEFAULT,'$nomor_jurnal','$deskripsi','$tanggal_transaksi',DEFAULT,DEFAULT)";
    mysqli_query($koneksi, $sql);

    $id_akun_jurnal = get_id_jurnal($koneksi);

    $sql_debet = "INSERT INTO akun_mutasi(id_akun_mutasi, id_akun_jurnal, id_akun, debet, kredit, dibuat_pada, diubah_pada) VALUES(DEFAULT, $id_akun_jurnal, $id_akun_debet, $nominal_transaksi, 0, DEFAULT, DEFAULT)";
    mysqli_query($koneksi, $sql_debet);
    //echo $id_akun_jurnal;    
    $sql_kredit = "INSERT INTO akun_mutasi(id_akun_mutasi, id_akun_jurnal, id_akun, kredit, debet, dibuat_pada, diubah_pada) VALUES(DEFAULT, $id_akun_jurnal, $id_akun_kredit, $nominal_transaksi, 0, DEFAULT, DEFAULT)";
    mysqli_query($koneksi, $sql_kredit);
}

function unposting_jurnal($koneksi, $id_akun_jurnal)
{
    $sql1 = "DELETE FROM akun_jurnal WHERE id_akun_jurnal=$id_akun_jurnal";
    mysqli_query($koneksi, $sql1);

    $sql2 = "DELETE FROM akun_mutasi WHERE id_akun_jurnal=$id_akun_jurnal";
    mysqli_query($koneksi, $sql2);
}

function get_nama_akun($koneksi, $id_akun)
{
    $sql = "SELECT * FROM akun WHERE id_akun=$id_akun";
    $query = mysqli_query($koneksi, $sql);
    $kolom = mysqli_fetch_array($query);
    return $kolom['akun'];
}

function pesan_transaksi($koneksi)
{
    $sukses = mysqli_affected_rows($koneksi);
    if ($sukses >= 1) {
        $_SESSION['status_proses'] = 'SUKSES';
    } else {
        $_SESSION['status_proses'] = 'GAGAL';
    }
}

function setup_anggaran_simpanan_berjangka($koneksi, $id_simpanan)
{
    $data = get_single_data($koneksi, 'simpanan', 'id_simpanan', $id_simpanan);
    $tanggal_awal = $data['tanggal_awal_kontrak'];
    $pokok = $data['jumlah_simpanan'];
    $durasi = $data['durasi_kontrak_bulan'];
    $bunga_persen = $data['bunga_tahunan'] / 12;
    $no = 0;
    $grandtotal = 0;

    for ($i = 1; $i <= $durasi; $i++) {
        $no++;
        $tahunTransaksi = substr($tanggal_awal, 0, 4);
        $bulanTransaksi = substr($tanggal_awal, 5, 2);
        $hariTransaksi = substr($tanggal_awal, 8, 2);
        if ($hariTransaksi > 28) { // Maksimal Tutup Buku Diatur Setiap Tanggal 28
            $hariTransaksi = 28;
        }
        $bulanTransaksi = (int)$bulanTransaksi + ($i - 1);
        if ($bulanTransaksi > 12) {
            //$tahun_inc=round($bulanTransaksi/12,0,PHP_ROUND_HALF_DOWN);
            $tahun_inc = floor($bulanTransaksi / 12);
            $tahunTransaksi = $tahunTransaksi + $tahun_inc;
            $bulanTransaksi = $bulanTransaksi - (12 * $tahun_inc);
            if ($bulanTransaksi == 0) {
                $bulanTransaksi = 12;
                $tahunTransaksi = $tahunTransaksi - 1;
            }
        }
        $bulanTransaksi = "" . $bulanTransaksi;
        if (strlen($bulanTransaksi) == 1) {
            $bulanTransaksi = "0" . $bulanTransaksi;
        } else {
            $bulanTransaksi = $bulanTransaksi;
        }
        $tanggal_jatuh_tempo = $tahunTransaksi . "-" . $bulanTransaksi . "-" . $hariTransaksi;

        $bunga_nominal = $bunga_persen / 100 * $grandtotal;
        $grandtotal_row = $grandtotal + $pokok + $bunga_nominal;
        $grandtotal = $grandtotal + $bunga_nominal + $pokok;
        $sql2 = "INSERT into simpanan_detail(id_simpanan, urut, tanggal_jatuh_tempo, tanggal_realisasi_bayar, anggaran_pembayaran, realisasi_pembayaran, bunga_persentase, bunga_nominal, anggaran_saldo_akhir, realisasi_saldo_akhir, dibuat_pada, diubah_pada, diterima_oleh) values($id_simpanan, $no, '$tanggal_jatuh_tempo', DEFAULT, $pokok, DEFAULT, $bunga_persen, $bunga_nominal, $grandtotal_row, DEFAULT, DEFAULT, DEFAULT, DEFAULT)";
        if (cek_exist_2_parameter($koneksi, 'simpanan_detail', 'id_simpanan', $id_simpanan, 'urut', $no) == false) {
            mysqli_query($koneksi, $sql2);
        }

        $tanggal_saat_ini = date('Y-m-d');
        $id_user = $_SESSION['backend_user_id'];
        if ($tanggal_jatuh_tempo < $tanggal_saat_ini) {
            $keterangan = "Pembayaran Simpanan Ke-" . $no;
            $keterangan_bunga = "Pembayaran Bunga Simpanan Ke-" . $no;

            $sql2 = "INSERT INTO simpanan_mutasi(id_simpanan, tanggal_transaksi, jenis_transaksi, jumlah, saldo, keterangan, id_user, dibuat_pada, diubah_pada) VALUES ($id_simpanan, '$tanggal_jatuh_tempo', 'Setoran', $pokok, $grandtotal_row-$bunga_nominal, '$keterangan',$id_user , DEFAULT, DEFAULT)";
            mysqli_query($koneksi, $sql2);

            $sql2 = "INSERT INTO simpanan_mutasi(id_simpanan, tanggal_transaksi, jenis_transaksi, jumlah, saldo, keterangan, id_user, dibuat_pada, diubah_pada) VALUES ($id_simpanan, '$tanggal_jatuh_tempo', 'Bunga', $bunga_nominal, $grandtotal_row, '$keterangan_bunga',$id_user , DEFAULT, DEFAULT)";
            mysqli_query($koneksi, $sql2);

            $sql_update_simpanan_detail = "UPDATE simpanan_detail SET tanggal_realisasi_bayar='$tanggal_jatuh_tempo',realisasi_pembayaran=$pokok,auto_pay=1,diubah_pada=DEFAULT WHERE id_simpanan=$id_simpanan AND urut=$no";
            //echo $sql_update_simpanan_detail,"<br>";
            mysqli_query($koneksi, $sql_update_simpanan_detail);
        }
    }
}

function update_saldo_simpanan($koneksi, $id_simpanan)
{
    $sql_update_saldo = "UPDATE simpanan SET saldo_terakhir=(SELECT SUM(jumlah) FROM simpanan_mutasi WHERE id_simpanan=$id_simpanan) WHERE id_simpanan=$id_simpanan";
    mysqli_query($koneksi, $sql_update_saldo);
}
