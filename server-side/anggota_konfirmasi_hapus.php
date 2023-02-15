<?php
include "../koneksi.php";
$id_anggota = $_POST['id_anggota'];

$sql_jual = "SELECT * FROM jual WHERE id_anggota=$id_anggota";
$query_jual = mysqli_query($koneksi, $sql_jual);
$data_jual = mysqli_num_rows($query_jual);

$sql_simpanan = "SELECT * FROM simpanan WHERE id_anggota=$id_anggota";
$query_simpanan = mysqli_query($koneksi, $sql_simpanan);
$data_simpanan = mysqli_num_rows($query_simpanan);

$sql_pinjaman = "SELECT * FROM pinjaman WHERE id_anggota=$id_anggota";
$query_pinjaman = mysqli_query($koneksi, $sql_pinjaman);
$data_pinjaman = mysqli_num_rows($query_pinjaman);



?>

<form action="aksi/anggota.php" method='post'>
    <input type="hidden" name="aksi" value="hapus">
    <input type="hidden" name="id_anggota" value="<?= $id_anggota; ?>">
    <label for="">Hasil Pengecekan Data Terkait</label>
    <table class="table" style="width:100%;">
        <tr>
            <td>Data Transaksi Toko</td>
            <td><?= number_format($data_jual); ?> Data</td>
        </tr>
        <tr>
            <td>Data Transaksi Simpanan</td>
            <td><?= number_format($data_simpanan); ?> Data</td>
        </tr>
        <tr>
            <td>Data Transaksi Pinjaman</td>
            <td><?= number_format($data_pinjaman); ?> Data</td>
        </tr>
    </table>
    <?php if ($data_jual + $data_simpanan + $data_pinjaman > 0) { ?>
        <div class="alert alert-danger"><i>Keterangan : Tidak Dapat Menghapus Data Yang Memiliki Transaksi Terkait</i></div>
    <?php } else { ?>
        <button onclick="return confirm('Data yang dapat dihapus adalah data yang tidak tercatat pada transaksi toko ataupun simpan pinjam,Apakah anda yakin data ini dihapus??')" type="submit" class="btn btn-danger mt-2 btn-block"><i class="fas fa-trash"></i> Hapus Permanen</button>
    <?php } ?>
</form>