<?php
$id_simpanan = $_GET['id'];

$sql00 = "SELECT simpanan.*,anggota.nama as napel,user.nama as petugas,simpanan_jenis.jenis_simpanan,simpanan_jenis.kode from simpanan,anggota,user,simpanan_jenis where simpanan.id_anggota=anggota.id_anggota and simpanan.id_user=user.id_user and simpanan.id_simpanan_jenis=simpanan_jenis.id_simpanan_jenis AND simpanan.id_simpanan=$id_simpanan";
$query00 = mysqli_query($koneksi, $sql00);
$info_umum = mysqli_fetch_array($query00);

?>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0">Mutasi Simpanan</h1>
                </div><!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">Simpan Pinjam</a></li>
                        <li class="breadcrumb-item"><a href="index.php?p=simpanan">Simpanan</a></li>
                        <li class="breadcrumb-item active">Mutasi Simpanan</li>
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
                            <h5>Informasi Umum Simpanan</h5>
                        </div>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-3"><b>Nama Nasabah</b></div>
                                <div class="col-3"><?= $info_umum['napel']; ?></div>
                                <div class="col-3"><b>Jenis Simpanan</b></div>
                                <div class="col-3"><?= $info_umum['kode']; ?> (<?= $info_umum['jenis_simpanan']; ?>)</div>
                            </div>
                            <div class="row">
                                <div class="col-3"><b>Tanggal Awal Kontrak</b></div>
                                <div class="col-3"><?= date("d-m-Y", strtotime($info_umum['tanggal_awal_kontrak'])); ?></div>
                                <div class="col-3"><b>Tanggal Akhir Kontrak</b></div>
                                <div class="col-3">
                                    <?php if (is_null($info_umum['tanggal_akhir_kontrak'])) {
                                        echo "-- Tidak Ditentukan --";
                                    } else {
                                        echo date("d-m-Y", strtotime($info_umum['tanggal_akhir_kontrak']));
                                    }
                                    ?>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-3"><b>Bunga Per-Tahun</b></div>
                                <div class="col-3"><?= $info_umum['bunga_tahunan']; ?>%</div>
                                <div class="col-3"><b>Bunga Per-Bulan</b></div>
                                <div class="col-3"><?= number_format($info_umum['bunga_tahunan'] / 12, 2); ?>%</div>
                            </div>
                            <div class="row">
                                <div class="col-3"><b>Anggaran Bulanan</b></div>
                                <div class="col-3">Rp. <?= number_format($info_umum['jumlah_simpanan']); ?></div>
                                <div class="col-3"><b>Saldo Terakhir</b></div>
                                <div class="col-3">Rp. <?= number_format($info_umum['saldo_terakhir']); ?></div>
                            </div>
                            <div class="row">
                                <div class="col-3"><b>Potong Otomatis</b></div>
                                <div class="col-3"><?php if ($info_umum['potong_otomatis'] == 1) {
                                                        echo "Ya";
                                                    } else {
                                                        echo "Tidak";
                                                    } ?></div>
                                <div class="col-3"><b>Status</b></div>
                                <div class="col-3"><?= $info_umum['status_simpanan']; ?></div>
                            </div>
                            <div class="row">
                                <div class="col-3"><b>Dibuat Pada</b></div>
                                <div class="col-3"><?= $info_umum['dibuat_pada']; ?></div>
                                <div class="col-3"><b>Terakhir Diubah Pada</b></div>
                                <div class="col-3"><?= $info_umum['diubah_pada']; ?></div>
                            </div>
                        </div>
                    </div>


                    <div class="card">
                        <div class="card-header">
                            <h5>Data Mutasi Simpanan</h5>
                        </div>
                        <div class="card-body">
                            <?php if ($info_umum['id_simpanan_jenis'] == 1 || $info_umum['id_simpanan_jenis'] == 2) {
                            ?>
                                <button type="button" class="btn btn-primary mb-2 simpanan_input_bayar" data-toggle="modal" data-target="#inputPembayaran" data-id="1" data-id2="<?= $id_simpanan; ?>"><i class="fas fa-cash-register"></i> Input Pembayaran Terjadwal</button>
                            <?php
                            } else {
                            ?>

                                <button type="button" class="btn btn-primary mb-2" data-toggle="modal" data-target="#exampleModal">
                                    <i class="fas fa-plus"></i> Tambah Transaksi</button>

                                <button type="button" class="btn btn-success mb-2" data-toggle="modal" data-target="#prosesBunga">
                                    <i class="fas fa-percent"></i> Proses Bunga</button>



                            <?php } ?>
                            <a onclick="return confirm('Lakukan Re-Kalkulasi Mutasi Pada Akun Ini??')" href="aksi/simpanan.php?aksi=rekalkulasi-mutasi&id=<?= $id_simpanan; ?>"><button type="button" class="btn btn-warning mb-2">
                                    <i class="fas fa-calculator"></i> Re-Kalkulasi Mutasi</button></a>
                            <button type="button" class="btn bg-purple mb-2" data-toggle="modal" data-target="#cetakMutasi">
                                <i class="fas fa-print"></i> Cetak Mutasi</button>
                            <table id="example1" class="table table-bordered table-striped table-sm">
                                <!-- Kepala Tabel -->
                                <thead>
                                    <tr>
                                        <td>#</td>
                                        <td>Tanggal Transaksi</td>
                                        <td>Jenis Transaksi</td>
                                        <td>Keterangan</td>
                                        <td>Jumlah</td>
                                        <td>Saldo</td>
                                        <td>Aksi</td>
                                    </tr>
                                </thead>
                                <!-- Isi Tabel -->
                                <?php
                                $id = $_GET['id'];
                                $no = 0;
                                $sql = "select * from simpanan_mutasi where id_simpanan=$id";
                                $query = mysqli_query($koneksi, $sql);
                                $last_trx = mysqli_num_rows($query);
                                while ($kolom = mysqli_fetch_array($query)) {
                                    $no++;
                                ?>
                                    <tr>
                                        <td><?= $no; ?></td>
                                        <td><?= $kolom['tanggal_transaksi']; ?></td>
                                        <td><?= $kolom['jenis_transaksi']; ?></td>
                                        <td><?= $kolom['keterangan']; ?></td>
                                        <td align="right"><?= number_format($kolom['jumlah']); ?></td>
                                        <td align="right"><?= number_format($kolom['saldo']); ?></td>

                                        <td>
                                            <?php if ($no == $last_trx) { ?>
                                                &nbsp;
                                                <a title="Hapus Transaksi" onclick="return confirm('Yakin Akan Hapus, Mutasi Pada Transaksi Ini??')" href="aksi/simpanan.php?aksi=hapus&id_simpanan_mutasi=<?= $kolom['id_simpanan_mutasi']; ?>&id_simpanan=<?= $kolom['id_simpanan']; ?>"><i class="fas fa-trash text-info"></i></a>
                                                &nbsp;
                                                <a data-target='#editPembayaran' data-toggle='modal' class='text-dark simpanan_edit_bayar' title='Ubah Pembayaran' data-id='<?= $kolom['id_simpanan_mutasi']; ?>' href='#'><i class="fas fa-edit text-info"></i></a>
                                            <?php } ?>
                                        </td>
                                    </tr>

                                <?php
                                }
                                ?>
                            </table>
                        </div>
                    </div>
                </div>
            </row>


        </div><!-- /.container-fluid -->

    </section>
    <!-- /.content -->
</div>
<!-- /.content-wrapper -->

<!-- Modal Untuk Tambah Simpanan -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="editModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="editModalLabel">Tambah Transaksi</h5>
                <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form action="aksi/simpanan.php" method="post">

                    <input type="hidden" name="aksi" value="tambah-mutasi">
                    <input type="hidden" name="id_simpanan" value="<?= $id_simpanan; ?>">

                    <label for="tanggal_transaksi">Tanggal Transaksi</label>
                    <input type="date" name="tanggal_transaksi" class="form-control" required>

                    <label for="jenis_transaksi">Jenis Transaksi</label>
                    <select name="jenis_transaksi" class="form-control" required>
                        <option value="">-- Pilih Jenis Transaksi --</option>
                        <option>Setoran</option>
                        <option>Tarikan</option>
                        <option>Biaya</option>
                    </select>

                    <label for="jumlah">Nominal Transaksi</label>
                    <input type="number" name="jumlah" class="form-control" required>

                    <label for="keterangan">Keterangan</label>
                    <textarea name="keterangan" class="form-control" rows="4"></textarea>
            </div>
            <div class="modal-footer">
                <button type="submit" class="btn btn-info">Simpan</button>
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>

                </form>
            </div>
        </div>
    </div>
</div>

<!-- Modal Untuk Hitung Bunga -->
<div class="modal fade" id="prosesBunga" tabindex="-1" aria-labelledby="editModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="editModalLabel">Proses Bunga</h5>
                <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form action="aksi/simpanan.php" method="post">

                    <input type="hidden" name="aksi" value="proses-bunga">
                    <input type="hidden" name="id_simpanan" value="<?= $id_simpanan; ?>">

                    <label for="tanggal_awal">Tanggal Awal</label>
                    <input type="date" name="tanggal_awal" class="form-control" required>

                    <label for="tanggal_akhir">Tanggal Akhir</label>
                    <input type="date" name="tanggal_akhir" class="form-control" required>

                    <label for="bunga">Persentase Bunga (%)</label>
                    <input type="number" name="bunga" class="form-control" step="0.01" required>


            </div>
            <div class="modal-footer">
                <button type="submit" class="btn btn-info">Simpan</button>
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>

                </form>
            </div>
        </div>
    </div>
</div>

<!-- Modal Untuk Input Pembayaran (SIDIDIK & TAHARA) -->
<div class="modal fade" id="inputPembayaran" tabindex="-1" aria-labelledby="editModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="editModalLabel">Input Pembayaran Simpanan Terjadwal</h5>
                <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="isi-input-bayar"></div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>


            </div>
        </div>
    </div>
</div>

<!-- Modal Untuk Cetak Mutasi -->
<div class="modal fade" id="cetakMutasi" tabindex="-1" aria-labelledby="editModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="editModalLabel">Cetak Mutasi Transaksi</h5>
                <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form action="pdf/output/lap_mutasi_simpanan.php" target="_blank" method="get">
                    
                    <input type="hidden" name="id_simpanan" value="<?= $id_simpanan; ?>">

                    <label for="tanggal_awal">Tanggal Awal</label>
                    <input type="date" name="tanggal_awal" class="form-control" required>

                    <label for="tanggal_akhir">Tanggal Akhir</label>
                    <input type="date" name="tanggal_akhir" class="form-control" required>

                    


            </div>
            <div class="modal-footer">
                <button type="submit" class="btn btn-info">Cetak</button>
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>

                </form>
            </div>
        </div>
    </div>
</div>