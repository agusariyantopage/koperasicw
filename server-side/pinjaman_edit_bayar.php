<?php
include "../koneksi.php";
include "../function.php";
$id_pinjaman_mutasi = $_POST['id_pinjaman_mutasi'];

$pinjaman_mutasi=get_single_data($koneksi,"pinjaman_mutasi","id_pinjaman_mutasi",$id_pinjaman_mutasi);
$id_pinjaman=$pinjaman_mutasi['id_pinjaman'];
$urut=$pinjaman_mutasi['urut'];
$cicilan_nominal=round($pinjaman_mutasi['cicilan_pokok'],0);
$bunga_nominal=round($pinjaman_mutasi['bunga_nominal'],0);
$denda_nominal=round($pinjaman_mutasi['denda_nominal'],0);
$saldo_awal=$pinjaman_mutasi['saldo']+$cicilan_nominal;
$tanggal_realisasi_bayar=$pinjaman_mutasi['tanggal_transaksi'];

?>

<form action="aksi/pinjaman.php" method='post'>
  <input type="hidden" name="aksi" value="pinjaman-ubah-bayar">
  <input type="hidden" name="id_pinjaman_mutasi" value="<?= $id_pinjaman_mutasi; ?>">
  <input type="hidden" name="id_pinjaman" value="<?= $id_pinjaman; ?>">
  <input type="hidden" name="saldo_awal" value="<?= $saldo_awal; ?>">

  <label for="urut">Pembayaran Ke </label>
  <input type="number" name="urut" id="urut" class="form-control" value="<?= $urut; ?>" required readonly>

  <label for="tanggal_realisasi_bayar">Tanggal Pembayaran</label>
  <input type="date" name="tanggal_realisasi_bayar" id="tanggal_realisasi_bayar" class="form-control" value="<?= $tanggal_realisasi_bayar; ?>" required>

  <label for="cicilan_pokok">Pokok</label>
  <input type="text" name="cicilan_pokok" id="cicilan_pokok" value="<?= $cicilan_nominal; ?>" class="form-control number-separator text-right" required readonly>

  <label for="bunga">Bunga</label>
  <input type="text" name="bunga" id="bunga" value="<?= $bunga_nominal; ?>" class="form-control number-separator text-right" required readonly>

  <label for="denda">Denda</label>
  <input type="text" name="denda" id="denda" value="<?= $denda_nominal; ?>" class="form-control number-separator text-right">

  <label for="jumlah">Total Angsuran</label>
  <input type="text" name="jumlah" id="jumlah" value="<?= $cicilan_nominal + $bunga_nominal + $denda_nominal; ?>" class="form-control number-separator text-right" required>

  
    <button type="submit" class="btn btn-info mt-2 btn-block"><i class="fas fa-save"></i> Ubah Pembayaran</button>
  
</form>

<!-- numberformatter -->
<script src="../dist/js/easy-number-separator.js"></script>

<script>
  easyNumberSeparator({
    selector: '.number-separator',
    separator: ',',
    resultInput: '#result_input',
  });

  function hitung_porsi_angsuran(evt) {
    var jumlah = document.getElementById("jumlah").value;
    jumlah = jumlah.replace(/,/gi, '');
    var bunga = document.getElementById("bunga").value;
    bunga = bunga.replace(/,/gi, '');
    var denda = document.getElementById("denda").value;
    denda = denda.replace(/,/gi, '');
    var cicilan_pokok = document.getElementById("cicilan_pokok").value;
    cicilan_pokok = cicilan_pokok.replace(/,/gi, '');
    // cicilan_pokok = jumlah - bunga;
    cicilan_pokok = jumlah - bunga-denda;
    cicilan_pokok = cicilan_pokok.toLocaleString('en-US');
    // document.getElementById("cicilan_pokok").innerHTML="Rp. "+kembali;
    document.getElementById("cicilan_pokok").value = cicilan_pokok;
  }

  document.getElementById('jumlah').addEventListener("mouseup", function(evt) {
    hitung_porsi_angsuran();
  }, false);
  document.getElementById('jumlah').addEventListener("keyup", function(evt) {
    hitung_porsi_angsuran();
  }, false);
  document.getElementById('denda').addEventListener("mouseup", function(evt) {
    hitung_porsi_angsuran();
  }, false);
  document.getElementById('denda').addEventListener("keyup", function(evt) {
    hitung_porsi_angsuran();
  }, false);
</script>