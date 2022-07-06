<?php
include "../koneksi.php";
$id_jual = $_POST['idjual'];
$sql1 = "select jual.*,anggota.nama as napel,saldo from jual,anggota where jual.id_anggota=anggota.id_anggota and id_jual='$id_jual'";

$query1 = mysqli_query($koneksi, $sql1);
$kolom1 = mysqli_fetch_array($query1);

echo '

<div class="row">
		<div class="col-md-3 col-sm-6">No Transaksi</div>
		<div class="col-md-3 col-sm-6">: #' . $kolom1['id_jual'] . ' </div>
		<div class="col-md-3 col-sm-6">Tanggal Transaksi</div>
		<div class="col-md-3 col-sm-6">: ' . $kolom1['tanggal_transaksi'] . '</div>
</div>
<div class="row">
		<div class="col-md-3">Anggota</div>
		<div class="col-md-3">: ' . $kolom1['napel'] . ' </div>
		<div class="col-md-3">Metode Pembayaran</div>
		<div class="col-md-3">: ' . $kolom1['metode_bayar'] . '</div>
</div><br><b>DAMPAK PENGHAPUSAN</b>';
?>
<form action="aksi/penjualan.php" method="post">
    <table class="table table-bordered table-striped" style="width:100%;">
        <thead class="thead-dark">
            <tr>
                <th scope="col">#</th>
                <th scope="col">Keterangan</th>
                <th scope="col">Data Saat Ini</th>
                <th scope="col">Perubahan</th>
                <th scope="col">Menjadi</th>
            </tr>
        </thead>
        <tbody>

            <input type="hidden" name="aksi" value="hapus-penjualan">
            <input type="hidden" name="id_jual" value="<?= $kolom1['id_jual']; ?>">
            <input type="hidden" name="id_anggota" value="<?= $kolom1['id_anggota']; ?>">
            <?php

            $sql2 = "select jual_detail.*,produk.nama,produk.qty as qty_now,servis from jual_detail,produk where jual_detail.id_produk=produk.id_produk and id_jual='$id_jual'";
            $query2 = mysqli_query($koneksi, $sql2);
            $no = 0;
            $grandtotal = 0;
            $upd_stok="";
            while ($kolom2 = mysqli_fetch_array($query2)) {
                $no++;
                $qty_now = number_format($kolom2['qty_now']);
                if ($kolom2['servis'] == 1) {
                    $jumlah = number_format($kolom2['jumlah']);
                    $qty_after = 0;
                } else {
                    $jumlah = number_format($kolom2['jumlah']);
                    $qty_after = number_format($kolom2['qty_now'] + $kolom2['jumlah']);
                }

                $token = md5($kolom2['id_jual']);
                $res_sql1="update produk set qty=$qty_after where id_produk=$kolom2[id_produk] and servis=0;";
                $upd_stok=$upd_stok.$res_sql1;
                echo "
		<tr>
			<td>$no</td>			
			<td><b>STOK</b> $kolom2[nama]</td>
			<td align=right>$qty_now</td>
			<td align=right style='width:150px;'>$jumlah</td>
			<td align=right>$qty_after</td>
		</tr>
        <input type='hidden' name='id_produk[]' value='$kolom2[id_produk]'>
        <input type='hidden' name='qty[]' value='$qty_after'>
		";
            }
            ?>
            <input type="hidden" name="jumlah_item" value="<?= $no; ?>">
            <?php
            // Perhitungan Saldo
            $saldo_awal = $kolom1['saldo'];
            if ($kolom1['metode_bayar'] == 'POTONG SALDO ANGGOTA') {
                $belanja = $kolom1['total'];
            } else {
                $belanja = 0;
            }

            $saldo_perubahan = $saldo_awal + $belanja;
            ?>
            <tr>
                <td><?= $no+1; ?></td>
                <td><b>SALDO BELANJA ANGGOTA</b> <?= $kolom1['napel']; ?></td>
                <td align="right"><?= number_format($saldo_awal); ?></td>
                <td align="right"><?= number_format($belanja); ?></td>
                <td align="right"><?= number_format($saldo_perubahan); ?></td>
            </tr>
            <input type="hidden" name="saldo" value="<?= $saldo_perubahan; ?>">
            <input type="hidden" name="perintah_update_stok" value="<?= $upd_stok; ?>">

        </tbody>

    </table>
    
    <button class="btn btn-danger" type="submit" onclick="return confirm('Apakah anda yakin akan menghapus data transaksi ini?')"><i class="fas fa-trash"></i> Proses Hapus</button>
</form>
<?php
if ($kolom1['metode_bayar'] == 'CICIL BAYAR') {
?>
    <table class="table table-bordered table-striped" style="width:100%;">
        <thead class="thead-dark">
            <tr>
                <th scope="col">#</th>
                <th scope="col">Keterangan</th>
                <th scope="col">Tanggal Jatuh Tempo</th>
                <th scope="col">Lunas</th>
                <th scope="col">Nominal Bayar</th>
            </tr>
        </thead>
        <tbody>
            <?php

            $sql3 = "select * from jual_cicil where id_jual='$id_jual'";
            $query3 = mysqli_query($koneksi, $sql3);
            $no = 0;
            while ($kolom3 = mysqli_fetch_array($query3)) {
                $no++;
                if ($kolom3['is_terbayar'] == 1) {
                    $status_lunas = "Ya";
                } else {
                    $status_lunas = "Belum";
                }
                echo "
				  <tr>
					  <td>$no</td>
					  <td>$kolom3[keterangan]</td>
					  <td>$kolom3[tanggal_jatuh_tempo]</td>
					  <td align=right>$status_lunas</td>					  
					  <td align=right>" . number_format($kolom3['jumlah_tagihan']) . "</td>					  
				  </tr>
				  ";
            }
            ?>
        </tbody>
    </table>
<?php
}
?>