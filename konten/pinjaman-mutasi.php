<?php
$id_pinjaman = $_GET['id'];
$sql00 = "SELECT pinjaman.*,anggota.nama as napel,user.nama as petugas from pinjaman,anggota,user where pinjaman.id_anggota=anggota.id_anggota and pinjaman.id_user=user.id_user AND id_pinjaman=$id_pinjaman";
$query00 = mysqli_query($koneksi, $sql00);
$info_umum = mysqli_fetch_array($query00);

// $sql00 = "SELECT * FROM pinjaman WHERE id_pinjaman=$id_pinjaman";

?>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0">Mutasi Pinjaman</h1>
                </div><!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">Simpan Pinjam</a></li>
                        <li class="breadcrumb-item"><a href="index.php?p=pinjaman">Pinjaman</a></li>
                        <li class="breadcrumb-item active">Mutasi Pinjaman</li>
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
                            <h5>Informasi Umum Pinjaman</h5>
                        </div>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-3"><b>Nama Nasabah</b></div>
                                <div class="col-3"><?= $info_umum['napel']; ?></div>
                                <div class="col-3"><b>Pagu Bulanan</b></div>
                                <div class="col-3">Rp. <?= number_format($info_umum['pagu_bulanan']); ?></div>
                            </div>
                            <div class="row">
                                <div class="col-3"><b>Jaminan</b></div>
                                <div class="col-3"><?= $info_umum['jaminan']; ?></div>
                                <div class="col-3"><b>Nilai Taksir Jaminan</b></div>
                                <div class="col-3">Rp. <?= number_format($info_umum['nilai_jaminan']); ?></div>
                            </div>
                            <div class="row">
                                <div class="col-3"><b>Tanggal Awal Kontrak</b></div>
                                <div class="col-3"><?= date("d-m-Y", strtotime($info_umum['tanggal_awal_kontrak'])); ?></div>
                                <div class="col-3"><b>Tanggal Akhir Kontrak</b></div>
                                <div class="col-3"><?= date("d-m-Y", strtotime($info_umum['tanggal_akhir_kontrak'])); ?></div>
                            </div>
                            <div class="row">
                                <div class="col-3"><b>Durasi Kontrak (Bulan)</b></div>
                                <div class="col-3"><?= $info_umum['durasi_kontrak_bulan']; ?></div>
                                <div class="col-3"><b>Bunga Per-Tahun (Per-Bulan)</b></div>
                                <div class="col-3"><?= $info_umum['bunga_tahunan']; ?>% (<?= $info_umum['bunga_tahunan'] / 12; ?>%)</div>
                            </div>
                            <div class="row">
                                <div class="col-3"><b>Jumlah Pinjaman</b></div>
                                <div class="col-3">Rp. <?= number_format($info_umum['jumlah_pinjaman']); ?></div>
                                <div class="col-3"><b>Sisa Hutang</b></div>
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
                                <div class="col-3"><?= $info_umum['status_pinjaman']; ?></div>
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
                            <h5>Data Mutasi Pinjaman</h5>
                        </div>
                        <div class="card-body">
                            <button type="button" class="btn btn-primary mb-2 pinjaman_input_bayar" data-toggle="modal" data-target="#inputPembayaran" data-id="<?= $id_pinjaman; ?>"><i class="fas fa-cash-register"></i> Input Pembayaran</button>

                            <!-- <button type="button" class="btn btn-primary mb-2" data-toggle="modal" data-target="#exampleModal">
                                <i class="fas fa-plus"></i> Tambah Transaksi</button> -->




                            <a onclick="return confirm('Lakukan Re-Kalkulasi Mutasi Pada Akun Ini??')" href="aksi/pinjaman.php?aksi=rekalkulasi-mutasi&id=<?= $id_pinjaman; ?>"><button type="button" class="btn btn-success mb-2">
                                    <i class="fas fa-calculator"></i> Re-Kalkulasi Mutasi</button></a>
                            <table id="example1" class="table table-bordered table-striped table-sm">
                                <!-- Kepala Tabel -->
                                <thead>
                                    <tr>
                                        <td>#</td>
                                        <td>Tanggal Transaksi</td>
                                        <td>Jenis Transaksi</td>
                                        <td>Keterangan</td>
                                        <td>Cicilan Pokok</td>
                                        <td>Bunga</td>
                                        <td>Denda</td>
                                        <td>Sisa Pinjaman</td>
                                        <td>Aksi</td>
                                    </tr>
                                </thead>
                                <!-- Isi Tabel -->
                                <?php
                                $id = $_GET['id'];
                                $no = 0;
                                $sql = "select * from pinjaman_mutasi where id_pinjaman=$id";
                                $query = mysqli_query($koneksi, $sql);
                                $last_trx=mysqli_num_rows($query);
                                while ($kolom = mysqli_fetch_array($query)) {
                                    $no++;
                                ?>
                                    <tr>
                                        <td><?= $no; ?></td>
                                        <td><?= $kolom['tanggal_transaksi']; ?></td>
                                        <td><?= $kolom['jenis_transaksi']; ?></td>
                                        <td><?= $kolom['keterangan']; ?></td>
                                        <td align="right"><?= number_format($kolom['cicilan_pokok']); ?></td>
                                        <td align="right"><?= number_format($kolom['bunga_nominal']); ?></td>
                                        <td align="right"><?= number_format($kolom['denda_nominal']); ?></td>
                                        <td align="right"><?= number_format($kolom['saldo']); ?></td>

                                        <td>
                                            <?php if($no==$last_trx) { ?>
                                            &nbsp;
                                            <a title="Hapus Pembayaran" onclick="return confirm('Yakin Akan Hapus, Mutasi Pada Transaksi Ini??')" href="aksi/pinjaman.php?aksi=hapus&id_pinjaman_mutasi=<?= $kolom['id_pinjaman_mutasi']; ?>&id_pinjaman=<?= $kolom['id_pinjaman']; ?>"><i class="fas fa-trash text-info"></i></a>
                                            &nbsp;
                                            <a data-target='#editPembayaran' data-toggle='modal' class='text-dark pinjaman_edit_bayar' title='Ubah Pembayaran' data-id='<?= $kolom['id_pinjaman_mutasi']; ?>' href='#'><i class="fas fa-edit text-info"></i></a>
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

<!-- Modal Untuk Tambah Pinjaman -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="editModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="editModalLabel">Tambah Transaksi</h5>
                <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form action="aksi/pinjaman.php" method="post">

                    <input type="hidden" name="aksi" value="tambah-mutasi">
                    <input type="hidden" name="id_pinjaman" value="<?= $id_pinjaman; ?>">

                    <label for="pembayaran_ke">Pembayaran Ke</label>
                    <input type="number" name="pembayaran_ke" class="form-control" required>

                    <label for="tanggal_transaksi">Tanggal Transaksi</label>
                    <input type="date" name="tanggal_transaksi" class="form-control" required>

                    <label for="jenis_transaksi">Jenis Transaksi</label>
                    <select name="jenis_transaksi" class="form-control" required>
                        <option value="">-- Pilih Jenis Transaksi --</option>
                        <option>Setoran</option>
                        <option>Tarikan</option>
                        <option>Biaya</option>
                    </select>

                    <label for="jumlah">Pokok</label>
                    <input type="number" name="jumlah" class="form-control" required>

                    <label for="jumlah">Bunga</label>
                    <input type="number" name="jumlah" class="form-control" required>

                    <label for="jumlah">Total Angsuran</label>
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

<!-- Modal Untuk Input Pembayaran  -->
<div class="modal fade" id="inputPembayaran" tabindex="-1" aria-labelledby="editModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="editModalLabel">Input Pembayaran Pinjaman</h5>
                <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="isi-input-bayar-pinjaman"></div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>


            </div>
        </div>
    </div>
</div>

<!-- Modal Edit Pembayaran  -->
<div class="modal fade" id="editPembayaran" tabindex="-1" aria-labelledby="editModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="editModalLabel">Ubah Pembayaran Pinjaman</h5>
                <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="isi-edit-bayar-pinjaman"></div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>


            </div>
        </div>
    </div>
</div>