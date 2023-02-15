<?php
$id_pinjaman = $_GET['id'];

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
                            <h3>Data Mutasi Pinjaman</h3>
                        </div>
                        <div class="card-body">
                            <button type="button" class="btn btn-primary mb-2 pinjaman_input_bayar" data-toggle="modal" data-target="#inputPembayaran" data-id="<?= $id_pinjaman; ?>"><i class="fas fa-cash-register"></i> Input Pembayaran</button>

                            <!-- <button type="button" class="btn btn-primary mb-2" data-toggle="modal" data-target="#exampleModal">
                                <i class="fas fa-plus"></i> Tambah Transaksi</button> -->




                            <a onclick="return confirm('Lakukan Re-Kalkulasi Mutasi Pada Akun Ini??')" href="aksi/pinjaman.php?aksi=rekalkulasi-mutasi&id=<?= $id_pinjaman; ?>"><button type="button" class="btn btn-warning mb-2">
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
                                        <td align="right"><?= number_format($kolom['saldo']); ?></td>

                                        <td>

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