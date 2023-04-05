 <!-- Content Wrapper. Contains page content -->
 <div class="content-wrapper">
   <!-- Content Header (Page header) -->
   <div class="content-header">
     <div class="container-fluid">
       <div class="row mb-2">
         <div class="col-sm-6">
           <h1 class="m-0">Proses Autopay Simpanan</h1>
         </div><!-- /.col -->
         <div class="col-sm-6">
           <ol class="breadcrumb float-sm-right">
             <li class="breadcrumb-item"><a href="#">Simpan Pinjam</a></li>
             <li class="breadcrumb-item"><a href="index.php?p=simpanan">Simpanan</a></li>
             <li class="breadcrumb-item active">Potongan Simpanan</li>
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
               <h3>Data Pembayaran Simpanan</h3>
             </div>
             <div class="card-body">

               <button type="button" class="btn btn-block btn-warning mb-2" data-toggle="modal" data-target="#exampleModal">
                 <i class="fas fa-tasks"></i> Proses Pembayaran Simpanan Dengan Pemotongan Gaji</button>


               <table id="example1" class="table table-bordered table-striped table-sm">
                 <!-- Kepala Tabel -->
                 <thead>
                   <tr>
                     <td>#</td>
                     <td>Anggota</td>
                     <td>Jenis Simpanan</td>
                     <td>Tanggal Jatuh Tempo</td>
                     <td>Jumlah Tagihan</td>
                     <td>Potong Gaji</td>
                   </tr>
                 </thead>
                 <!-- Isi Tabel -->
                 <?php
                  $sql = "SELECT simpanan_detail.*,simpanan.id_simpanan_jenis,simpanan.potong_otomatis,anggota.nama,simpanan_jenis.jenis_simpanan FROM simpanan_detail,simpanan,anggota,simpanan_jenis WHERE simpanan_detail.id_simpanan=simpanan.id_simpanan AND simpanan.id_anggota=anggota.id_anggota AND simpanan.id_simpanan_jenis=simpanan_jenis.id_simpanan_jenis AND simpanan_detail.tanggal_jatuh_tempo BETWEEN '$periode_mulai' AND '$periode_selesai' AND simpanan_detail.tanggal_realisasi_bayar IS NULL AND simpanan.potong_otomatis=1";
                  $query = mysqli_query($koneksi, $sql);
                  while ($kolom = mysqli_fetch_array($query)) {
                  ?>
                   <tr>
                     <td><?= $kolom['id_simpanan']; ?></td>
                     <td><?= $kolom['nama']; ?></td>
                     <td>[<?= $kolom['id_simpanan_jenis']; ?>] <?= $kolom['jenis_simpanan']; ?></td>
                     <td><?= $kolom['tanggal_jatuh_tempo']; ?></td>
                     <td><?= number_format($kolom['anggaran_pembayaran']); ?></td>
                     <td><?php if ($kolom['potong_otomatis'] == 1) {
                            echo "Ya";
                          } else {
                            echo "Tidak";
                          } ?></td>
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
   <div class="modal-dialog modal-md">
     <div class="modal-content">
       <div class="modal-header">
         <h5 class="modal-title" id="editModalLabel">Konfirmasi Proses Autopay</h5>
         <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
       </div>
       <div class="modal-body">
         Sebelum menjalankan proses ini pastikan semua data pemotongan gaji anggota sudah dicek, Apakah anda yakin seluruh data yang ada sudah benar??
         <form action="aksi/simpanan.php" method="post">
          <label for="tanggal_transaksi">Tanggal Transaksi</label>
          <input type="date" name="tanggal_transaksi" class="form-control" required>
           <div class="row mt-3">
             <input type="hidden" name="aksi" value="autopay">
             <input type="hidden" name="periode_mulai" value="<?= $periode_mulai; ?>">
             <input type="hidden" name="periode_selesai" value="<?= $periode_selesai; ?>">
             <button type="submit" class="btn btn-success col-5">Sudah</button>
             <div class="col-2"></div>
             <button data-dismiss="modal" class="btn btn-danger col-5">Belum</button>
         </form>
       </div>

     </div>
     <div class="modal-footer">


       </form>
     </div>
   </div>
 </div>
 </div>