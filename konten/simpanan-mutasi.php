<?php
$id_simpanan = $_GET['id'];

$sql00 = "SELECT * FROM simpanan WHERE id_simpanan=$id_simpanan";

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
                            <h3>Data Mutasi Simpanan</h3>
                        </div>
                        <div class="card-body">
                            <button type="button" class="btn btn-primary mb-2 simpanan_input_bayar" data-toggle="modal" data-target="#inputPembayaran" data-id="1" data-id2="<?= $id_simpanan; ?>"><i class="fas fa-cash-register"></i> Input Pembayaran</button>

                            <button type="button" class="btn btn-primary mb-2" data-toggle="modal" data-target="#exampleModal">
                                <i class="fas fa-plus"></i> Tambah Transaksi</button>


                            <button type="button" class="btn btn-success mb-2" data-toggle="modal" data-target="#prosesBunga">
                                <i class="fas fa-percent"></i> Proses Bunga</button>

                            <a onclick="return confirm('Lakukan Re-Kalkulasi Mutasi Pada Akun Ini??')" href="aksi/simpanan.php?aksi=rekalkulasi-mutasi&id=<?= $id_simpanan; ?>"><button type="button" class="btn btn-warning mb-2">
                                    <i class="fas fa-calculator"></i> Re-Kalkulasi Mutasi</button></a>
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
                <h5 class="modal-title" id="editModalLabel">Input Pembayaran Simpanan</h5>
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