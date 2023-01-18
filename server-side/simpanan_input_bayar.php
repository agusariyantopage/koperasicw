<?php
include "../koneksi.php";
$id_simpanan_detail = $_POST['id_simpanan_detail'];
$id_simpanan = $_POST['id_simpanan'];
?>

<form action="aksi/simpanan.php" method='post'>
    <input type="hidden" name="aksi" value="simpanan-input-bayar">
    <input type="hidden" name="id_simpanan_detail" value="<?= $id_simpanan_detail; ?>">
    <input type="hidden" name="id_simpanan" value="<?= $id_simpanan; ?>">
    <label for="tanggal_realisasi_bayar">Tanggal Pembayaran</label>
    <input type="date" name="tanggal_realisasi_bayar" id="tanggal_realisasi_bayar" class="form-control" required>
    <label for="realisasi_pembayaran">Nominal Pembayaran</label>
    <input type="number" name="realisasi_pembayaran" id="realisasi_pembayaran" class="form-control" required>
    <button type="submit" class="btn btn-info mt-2 btn-block"><i class="fas fa-save"></i> Bayar</button>
</form>