 <!-- Content Wrapper. Contains page content -->
 <div class="content-wrapper">
     <!-- Content Header (Page header) -->
     <div class="content-header">
         <div class="container-fluid">
             <div class="row mb-2">
                 <div class="col-sm-6">
                     <h1 class="m-0">Pinjaman</h1>
                 </div><!-- /.col -->
                 <div class="col-sm-6">
                     <ol class="breadcrumb float-sm-right">
                         <li class="breadcrumb-item"><a href="#">Simpan Pinjam</a></li>
                         <li class="breadcrumb-item active">Pinjaman</li>
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
                             <h3>Data Pinjaman</h3>
                         </div>
                         <div class="card-body">
                             <button type="button" class="btn btn-primary mb-2" data-toggle="modal" data-target="#exampleModal">
                                 <i class="fas fa-plus"></i> Tambah Pinjaman Baru</button>
                             <a href="index.php?p=pinjaman-autopay"><button type="button" class="btn btn-success mb-2"><i class="fas fa-wallet"></i> Proses Potong Gaji</button></a>

                            

                             <table id="example1" class="table table-bordered table-striped table-sm">
                                 <!-- Kepala Tabel -->
                                 <thead>
                                     <tr>
                                         <td>#</td>
                                         <td>Anggota</td>
                                         <td>Periode Kontrak</td>
                                         <td>Jumlah Pinjaman</td>
                                         <td>Sisa Hutang</td>
                                         <td>Status</td>
                                         <td>Aksi</td>
                                     </tr>
                                 </thead>
                                 <!-- Isi Tabel -->
                                 <?php
                                    $sql = "SELECT pinjaman.*,anggota.nama as napel,user.nama as petugas from pinjaman,anggota,user where pinjaman.id_anggota=anggota.id_anggota and pinjaman.id_user=user.id_user order by pinjaman.id_pinjaman desc";
                                    $query = mysqli_query($koneksi, $sql);
                                    while ($kolom = mysqli_fetch_array($query)) {
                                    ?>
                                     <tr>
                                         <td><?= $kolom['id_pinjaman']; ?></td>
                                         <td><?= $kolom['napel']; ?></td>
                                         <td><?= $kolom['tanggal_awal_kontrak']; ?> (<?= $kolom['durasi_kontrak_bulan']; ?> Bulan)</td>
                                         <td align="right"><?= number_format($kolom['jumlah_pinjaman']); ?></td>
                                         <td align="right"><?= number_format($kolom['saldo_terakhir']); ?></td>
                                         <td><?= $kolom['status_pinjaman']; ?></td>
                                         <td>
                                             <a href="index.php?p=pinjaman-mutasi&id=<?= $kolom['id_pinjaman']; ?>">
                                                 <button type="button" class="btn btn-link"><i class="fas fa-folder-open"></i></button>
                                             </a>
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
     <div class="modal-dialog modal-md">
         <div class="modal-content">
             <div class="modal-header">
                 <h5 class="modal-title" id="editModalLabel">Pilih Metode Cicilan Pinjaman</h5>
                 <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
             </div>
             <div class="modal-body">
                 
                 <div class="row">
                     <div class="col-6">
                         <a href="index.php?p=pinjaman-tambah"><button type="button" class="btn btn-warning btn-block mb-2"><i class="fas fa-file-invoice"></i> Cicilan Menurun</button></a>
                     </div>
                     <div class="col-6">
                         <a href="index.php?p=pinjaman-tambah-cicilan-tetap"><button type="button" class="btn btn-warning btn-block mb-2"><i class="fas fa-file-invoice"></i> Cicilan Tetap</button></a>
                     </div>
                 </div>
             </div>
             <div class="modal-footer">
                 <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>

                 </form>
             </div>
         </div>
     </div>
 </div>