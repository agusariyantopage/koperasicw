<?php
// Ambil Nilai Formulir Jika Tidak Kosong
if (!empty($_GET['id_anggota'])) {
    $id_anggota = $_GET['id_anggota'];
    $id_pinjaman_jenis = $_GET['id_pinjaman_jenis'];
    $tanggal_awal_kontrak = $_GET['tanggal_awal_kontrak'];
    $durasi_kontrak_bulan = $_GET['durasi_kontrak_bulan'];
    $bunga_tahunan = $_GET['bunga_tahunan'];
    $jumlah_pinjaman = $_GET['jumlah_pinjaman'];
} else {
    $id_anggota = '';
    $id_pinjaman_jenis = '';
    $tanggal_awal_kontrak = '';
    $durasi_kontrak_bulan = '';
    $bunga_tahunan = '';
    $jumlah_pinjaman = '';
}
?>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0">Transaksi Pinjaman Baru</h1>
                </div><!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">Simpan Pinjam</a></li>
                        <li class="breadcrumb-item"><a href="index.php?p=pinjaman">Pinjaman</a></li>
                        <li class="breadcrumb-item active">Input Pinjaman</li>
                    </ol>
                </div><!-- /.col -->
            </div><!-- /.row -->
        </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <row>
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <h3>Input Transaksi Pinjaman</h3>
                        </div>
                        <div class="card-body">

                            <form action="#" method="get">
                                <input type="hidden" name="p" value="pinjaman-tambah">
                                <div class="form-row">
                                    <div class="form-group col-sm-12">
                                        <label for="id_anggota">Anggota</label>
                                        <select name="id_anggota" class="select2bs4 form-control" required>

                                            <?php
                                            if (!empty($_GET['id_anggota'])) {
                                                $sql2 = "select * from anggota where id_anggota=$id_anggota";
                                                $query2 = mysqli_query($koneksi, $sql2);
                                                $kolom2 = mysqli_fetch_array($query2);
                                                echo "<option value='$id_anggota'>$kolom2[nama]</option>";
                                            } else {
                                                echo "<option value=''>-- Pilih Anggota Koperasi --</option>";
                                            }

                                            $sql1 = "select * from anggota where id_anggota!=0 order by nama";
                                            $query1 = mysqli_query($koneksi, $sql1);
                                            while ($kolom1 = mysqli_fetch_array($query1)) {
                                                echo "<option value='$kolom1[id_anggota]'>$kolom1[nama]</option>";
                                            }

                                            ?>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="form-group col-sm-4">
                                        <label for="id_pinjaman_jenis">Jenis Pinjaman</label>
                                        <select class="form-control" name="id_pinjaman_jenis" id="" required>
                                            <option>Bunga Menetap</option>
                                            <option>Bunga Menurun</option>

                                        </select>
                                    </div>
                                    <div class="form-group col-sm-4">
                                        <label for="tanggal_awal_kontrak">Tanggal Awal Kontrak</label>
                                        <input class="form-control" type="date" value="<?= $tanggal_awal_kontrak; ?>" name="tanggal_awal_kontrak" required>
                                    </div>
                                    <div class="form-group col-sm-4">
                                        <label for="durasi_kontrak_bulan">Durasi Pinjaman (Bulan)</label>
                                        <input class="form-control" type="number" value="<?= $durasi_kontrak_bulan; ?>" name="durasi_kontrak_bulan" required>
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="form-group col-sm-4">
                                        <label for="bunga_tahunan">Bunga Per Tahun</label>
                                        <input class="form-control" type="number" value="<?= $bunga_tahunan; ?>" name="bunga_tahunan" required>
                                    </div>
                                    <div class="form-group col-sm-4">
                                        <label for="jumlah_pinjaman">Jumlah Pinjaman</label>
                                        <input class="form-control" type="number" value="<?= $jumlah_pinjaman; ?>" name="jumlah_pinjaman" required>
                                    </div>
                                    <div class="form-group col-sm-4 align-self-end">
                                        <button type="submit" class="btn btn-warning btn-block"><i class="fas fa-calculator"></i> Proses</button>
                                    </div>
                                </div>

                            </form> <!-- Tutup Form 1 -->
                            <?php if (!empty($_GET['id_anggota'])) { ?>
                                <table class="table table-bordered table-striped table-sm" style="width:100%;">
                                    <thead class="thead-dark">
                                        <tr>
                                            <th scope="col">#</th>
                                            <th scope="col">Tanggal Jatuh Tempo</th>
                                            <th scope="col">Pokok</th>
                                            <th scope="col">Bunga ( <?= $_GET['bunga_tahunan'] / 12; ?>%)</th>
                                            <th scope="col">Total Angsuran</th>
                                            <th scope="col">Sisa Hutang</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <form action="aksi/pinjaman.php" method="post"> <!-- Form 2 -->
                                            <input type="hidden" name="aksi" value="simpan-pinjaman">
                                            <input type="hidden" name="id_anggota" value="<?= $id_anggota; ?>">
                                            <input type="hidden" name="id_user" value="1">
                                            <input type="hidden" name="id_pinjaman_jenis" value="<?= $id_pinjaman_jenis; ?>">
                                            <input type="hidden" name="tanggal_awal_kontrak" value="<?= $tanggal_awal_kontrak; ?>">
                                            <input type="hidden" name="durasi_kontrak_bulan" value="<?= $durasi_kontrak_bulan; ?>">
                                            <input type="hidden" name="bunga_tahunan" value="<?= $bunga_tahunan; ?>">
                                            <input type="hidden" name="jumlah_pinjaman" value="<?= $jumlah_pinjaman; ?>">


                                            <?php
                                            $id_user = $_SESSION['backend_user_id'];
                                            $no = 0;
                                            $grandtotal = 0;

                                            // buat for
                                            if (!empty($_GET['durasi_kontrak_bulan'])) {
                                                $tanggal_awal = $_GET['tanggal_awal_kontrak'];
                                                $pokok = $_GET['jumlah_pinjaman'];
                                                $durasi = $_GET['durasi_kontrak_bulan'];
                                                $cicilan_bulanan = $pokok / $durasi;
                                                $bunga_persen = $_GET['bunga_tahunan'] / 12;
                                                $sum_bunga = 0;



                                                for ($i = 1; $i <= $durasi; $i++) {
                                                    $no++;
                                                    $tahunTransaksi = substr($tanggal_awal, 0, 4);
                                                    $bulanTransaksi = substr($tanggal_awal, 5, 2);
                                                    $hariTransaksi = substr($tanggal_awal, 8, 2);
                                                    $bulanTransaksi = (int)$bulanTransaksi + ($i - 0);
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

                                                    $bunga_nominal = $bunga_persen / 100 * $pokok;
                                                    $sum_bunga = $sum_bunga + $bunga_nominal;
                                                    $pokok = $pokok - $cicilan_bulanan;

                                                    // $bunga_nominal=$bunga_persen/100*$grandtotal;
                                                    $grandtotal_row = $grandtotal + $pokok + $bunga_nominal;
                                                    echo "
                        <tr>
                          <td>$no</td>
                          <td>$tanggal_jatuh_tempo</td>
                          <td align='right'>" . number_format($cicilan_bulanan) . "</td>
                          <td align='right'>" . number_format($bunga_nominal) . "</td>
                          <td align='right'>" . number_format($cicilan_bulanan + $bunga_nominal) . "</td>
                          <td align='right'>" . number_format(round($pokok)) . "</td>                          
                        </tr>
                        <input type='hidden' value='$no' name='urut[]'>
                        <input type='hidden' value='$tanggal_jatuh_tempo' name='tanggal_jatuh_tempo[]'>
                        <input type='hidden' value='$pokok' name='anggaran_pembayaran[]'>
                        <input type='hidden' value='$bunga_persen' name='bunga_persentase[]'>
                        <input type='hidden' value='$bunga_nominal' name='bunga_nominal[]'>
                        <input type='hidden' value='$grandtotal_row' name='anggaran_saldo_akhir[]'>
                      ";
                                                    $grandtotal = $grandtotal + $bunga_nominal + $pokok;
                                                }
                                            }


                                            ?>

                                    </tbody>
                                    <tfoot>
                                        <td align='center' colspan="2">GRANDTOTAL</td>
                                        <td align='right'>
                                            <p><?php if (!empty($_GET['id_anggota'])) {
                                                    echo number_format($_GET['jumlah_pinjaman']);
                                                } ?></p>
                                        </td>
                                        <td align='right'><?= number_format($sum_bunga); ?></td>
                                        <td align='right' colspan="2"><?= number_format($_GET['jumlah_pinjaman'] + $sum_bunga); ?></td>

                                    </tfoot>
                                </table>

                        </div>
                    </div>
                    <?php
                                if ($grandtotal > 0) {
                                    echo "Pilih Aksi Selanjutnya : ";
                                    echo "<div class='row'>";
                                    echo "<div class='col-sm-4 mb-1'>";
                                    echo "<button type='submit' class='btn btn-success btn-block'><i class='fas fa-save'></i> Simpan Transaksi </button>";
                                    echo "</div>";
                                    echo "<div class='col-sm-4 mb-1'>";
                                    echo "<button type='button' class='btn btn-success btn-block' onclick='window.print()'><i class='fas fa-print'></i> Cetak Ilustrasi </button>";
                                    echo "</div>";
                                    echo "<div class='col-sm-4 mb-1'>";
                                    echo "<a href='index.php?p=pinjaman-tambah&id_pinjaman_jenis=$_GET[id_pinjaman_jenis]'><button type='button' class='btn btn-success btn-block' data-toggle='modal' data-target='#simpanJualModalCicil'><i class='fas fa-recycle'></i> Hitung Ulang </button></a>";
                                    echo "</div>";
                                    echo "</div>";
                                }
                    ?>
                </div>
                </form> <!-- Tutup Form 2 -->
                <br><br>
            <?php } ?>
            </row>


        </div><!-- /.container-fluid -->

    </section>
    <!-- /.content -->
</div>
<!-- /.content-wrapper -->