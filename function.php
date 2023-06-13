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

function call_option_selected_parametered($koneksi, $nama_tabel, $order_by, $value, $display, $selected_id,$parameter)
{
    $sql = "SELECT * FROM " . $nama_tabel . " WHERE ".$parameter." ORDER BY " . $order_by;
    $query = mysqli_query($koneksi, $sql);
    while ($kolom = mysqli_fetch_array($query)) {
        echo ($selected_id == $kolom[$value]) ? "<option value='$kolom[$value]' selected>$kolom[$display]</option>" : "<option value='$kolom[$value]'>$kolom[$display]</option>";
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
    $nomor_jurnal='';
    $sql = "INSERT INTO akun_jurnal(id_akun_jurnal, nomor_jurnal, deskripsi, tanggal_transaksi, dibuat_pada, diubah_pada) VALUES(DEFAULT,'$nomor_jurnal','$deskripsi','$tanggal_transaksi',DEFAULT,DEFAULT)";
    mysqli_query($koneksi, $sql);

    $id_akun_jurnal = get_id_jurnal($koneksi);
    
    $sql_debet = "INSERT INTO akun_mutasi(id_akun_mutasi, id_akun_jurnal, id_akun, debet, kredit, dibuat_pada, diubah_pada) VALUES(DEFAULT, $id_akun_jurnal, $id_akun_debet, $nominal_transaksi, 0, DEFAULT, DEFAULT)";
    mysqli_query($koneksi, $sql_debet);
    //echo $id_akun_jurnal;    
    $sql_kredit = "INSERT INTO akun_mutasi(id_akun_mutasi, id_akun_jurnal, id_akun, kredit, debet, dibuat_pada, diubah_pada) VALUES(DEFAULT, $id_akun_jurnal, $id_akun_kredit, $nominal_transaksi, 0, DEFAULT, DEFAULT)";
    mysqli_query($koneksi, $sql_kredit);
}

function unposting_jurnal($koneksi,$id_akun_jurnal){
    $sql1="DELETE FROM akun_jurnal WHERE id_akun_jurnal=$id_akun_jurnal";
    mysqli_query($koneksi,$sql1);

    $sql2="DELETE FROM akun_mutasi WHERE id_akun_jurnal=$id_akun_jurnal";
    mysqli_query($koneksi,$sql2);
    // echo $sql1;
    // echo $sql2;

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
?>
