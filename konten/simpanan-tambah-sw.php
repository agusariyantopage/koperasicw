<?php
// Ambil Nilai Formulir Jika Tidak Kosong
if (!empty($_GET['id_anggota'])) {
    $id_anggota = $_GET['id_anggota'];
    $id_simpanan_jenis = $_GET['id_simpanan_jenis'];
    $tanggal_awal_kontrak = $_GET['tanggal_awal_kontrak'];
    $saldo_terakhir = $_GET['saldo_terakhir'];
} else {
    $id_anggota = '';
    $id_simpanan_jenis = '';
    $tanggal_awal_kontrak = '';
    $saldo_terakhir = 0;
}
?>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0">Transaksi Simpanan Wajib Baru</h1>
                </div><!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">Simpan Pinjam</a></li>
                        <li class="breadcrumb-item"><a href="index.php?p=simpanan">Simpanan</a></li>
                        <li class="breadcrumb-item active">Input Simpanan Wajib</li>
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
                            <h3>Input Transaksi Simpanan Wajib</h3>
                        </div>
                        <div class="card-body">

                            <form action="#" method="get">
                                <input type="hidden" name="p" value="simpanan-tambah-sw">
                                <input type="hidden" name="id_simpanan_jenis" value="4">
                                <div class="form-row">
                                    <div class="form-group col-sm-12">
                                        <label for="id_anggota">Anggota</label>
                                        <select name="id_anggota" class="select2bs4 form-control" required>

                                            <?php
                                            if (!empty($_GET['id_anggota'])) {
                                                $sql2 = "select * from anggota where id_anggota=$id_anggota";
                                                $query2 = mysqli_query($koneksi, $sql2);
                                                $kolom2 = mysqli_fetch_array($query2);
                                                $nama=$kolom2['nama'];
                                                echo "<option value='$id_anggota'>$kolom2[nama]</option>";
                                            } else {
                                                echo "<option value=''>-- Pilih Anggota Koperasi --</option>";
                                                $sql1 = "select * from anggota where id_anggota!=0 order by nama";
                                                $query1 = mysqli_query($koneksi, $sql1);
                                                while ($kolom1 = mysqli_fetch_array($query1)) {
                                                    echo "<option value='$kolom1[id_anggota]'>$kolom1[nama]</option>";
                                                }
                                            }



                                            ?>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="form-group col-sm-4">
                                        <label for="tanggal_awal_kontrak">Tanggal Awal Kontrak</label>
                                        <input class="form-control" type="date" value="<?= $tanggal_awal_kontrak; ?>" name="tanggal_awal_kontrak" required <?php if (!empty($_GET['id_anggota'])) { ?> readonly="" <?php } ?>>
                                    </div>
                                    <div class="form-group col-sm-4">
                                        <label for="saldo_terakhir">Setoran Awal</label>
                                        <input class="form-control" type="number" value="<?= $saldo_terakhir; ?>" name="saldo_terakhir" required <?php if (!empty($_GET['id_anggota'])) { ?> readonly="" <?php } ?>>
                                    </div>
                                    <div class="form-group col-sm-4 align-self-end">
                                        <button type="submit" class="btn btn-warning btn-block"><i class="fas fa-calculator"></i> Cek</button>
                                    </div>
                                </div>

                            </form> <!-- Tutup Form 1 -->
                            <?php
                            if (!empty($_GET['id_anggota'])) {
                                $sql_cek="SELECT * FROM simpanan WHERE id_simpanan_jenis=$id_simpanan_jenis AND id_anggota=$id_anggota";
                                $query_cek=mysqli_query($koneksi,$sql_cek);
                                $ketemu=mysqli_num_rows($query_cek);
                                if($ketemu>=1){
                                    echo "<span class='badge badge-danger'>Tidak dapat diproses karena Data Dengan Nama Anggota <b>".$nama."</b> Sudah Memiliki Rekening Simpanan Wajib</span>";
                                } else {
                            ?>
                                <span class="badge badge-success">Transaksi bisa diproses, tidak ditemukan rekening simpanan wajib dengan nama anggota <?= $nama; ?></span>
                                <form action="aksi/simpanan.php" method="post">
                                    <input type="hidden" name="aksi" value="simpan-simpanan-sw">
                                    <input type="hidden" name="id_anggota" value="<?= $id_anggota; ?>">
                                    <input type="hidden" name="id_user" value="<?= $_SESSION['backend_user_id']; ?>">
                                    <input type="hidden" name="id_simpanan_jenis" value="<?= $id_simpanan_jenis; ?>">
                                    <input type="hidden" name="tanggal_awal_kontrak" value="<?= $tanggal_awal_kontrak; ?>">
                                    <input type="hidden" name="saldo_terakhir" value="<?= $saldo_terakhir; ?>">
                                    <button type="submit" class="btn btn-warning btn-block mt-2"><i class="fas fa-save"></i> Simpan</button>
                                </form>
                            <?php
                                }
                            }
                            ?>

            </row>


        </div><!-- /.container-fluid -->

    </section>
    <!-- /.content -->
</div>
<!-- /.content-wrapper -->