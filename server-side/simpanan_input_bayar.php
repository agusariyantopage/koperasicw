<?php
include "../koneksi.php";
$id_simpanan_detail = $_POST['id_simpanan_detail'];
$id_simpanan = $_POST['id_simpanan'];
// Pembayaran Simpanan Ke-3
$sql_urut="SELECT * FROM simpanan_mutasi WHERE id_simpanan=$id_simpanan ORDER BY keterangan DESC limit 1";
// echo $sql_urut;
$query_urut=mysqli_query($koneksi,$sql_urut);
$data_urut=mysqli_fetch_array($query_urut);
$urut=intval(substr($data_urut['keterangan'],-1))+1;

$sql = "SELECT * FROM simpanan_detail WHERE id_simpanan=$id_simpanan AND urut=$urut ORDER BY urut LIMIT 1";
// $sql = "SELECT * FROM simpanan_detail WHERE id_simpanan=$id_simpanan AND realisasi_pembayaran<anggaran_pembayaran ORDER BY urut LIMIT 1";

$query = mysqli_query($koneksi, $sql);
$data = mysqli_fetch_array($query);
$ketemu = mysqli_num_rows($query);
$id_simpanan_detail = $data['id_simpanan_detail'];
if ($ketemu >= 1) {
?>

    <form action="aksi/simpanan.php" method='post'>
        <input type="hidden" name="aksi" value="simpanan-input-bayar">
        <input type="hidden" class="form-control" name="id_simpanan_detail" value="<?= $id_simpanan_detail; ?>">
        <input type="hidden" name="id_simpanan" value="<?= $id_simpanan; ?>">
        <label for="urut">Pembayaran Ke </label>
        <input type="number" name="urut" id="urut" class="form-control" value="<?= $data['urut']; ?>" required readonly>
        <label for="tanggal_jatuh_tempo">Tanggal Jatuh Tempo</label>
        <input type="date" name="tanggal_jatuh_tempo" id="tanggal_jatuh_tempo" class="form-control" value="<?= $data['tanggal_jatuh_tempo']; ?>" required readonly>
        <label for="tanggal_realisasi_bayar">Tanggal Pembayaran</label>
        <input type="date" name="tanggal_realisasi_bayar" id="tanggal_realisasi_bayar" class="form-control" required>
        <label for="realisasi_pembayaran">Nominal Pembayaran</label>
        <input type="number" name="realisasi_pembayaran" id="realisasi_pembayaran" class="form-control" value="<?= $data['anggaran_pembayaran'] - $data['realisasi_pembayaran']; ?>" min="1" max="<?= $data['anggaran_pembayaran'] - $data['realisasi_pembayaran']; ?>" required>
        <button type="submit" class="btn btn-info mt-2 btn-block"><i class="fas fa-save"></i> Bayar</button>
    </form>
<?php
} else {
    echo "Tidak ada data pembayaran yang terjadwal";
}
?>