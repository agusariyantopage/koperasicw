<?php
    if (!empty($_POST['id_simpanan_jenis'])) {
        $id_simpanan_jenis = $_POST['id_simpanan_jenis'];
    } else {
        $id_simpanan_jenis = '';
    }
    ?>
 <!-- Content Wrapper. Contains page content -->
 <div class="content-wrapper">
   <!-- Content Header (Page header) -->
   <div class="content-header">
     <div class="container-fluid">
       <div class="row mb-2">
         <div class="col-sm-6">
           <h1 class="m-0">Simpanan</h1>
         </div><!-- /.col -->
         <div class="col-sm-6">
           <ol class="breadcrumb float-sm-right">
             <li class="breadcrumb-item"><a href="#">Simpan Pinjam</a></li>
             <li class="breadcrumb-item active">Simpanan</li>
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
               <h3>Data Simpanan</h3>
             </div>
             <div class="card-body">

               <div class="row">
                 <div class="col">
                   <button type="button" class="btn btn-primary mb-2" data-toggle="modal" data-target="#exampleModal">
                     <i class="fas fa-plus"></i> Tambah Simpanan Baru</button>
                   <a href="index.php?p=simpanan-autopay"><button type="button" class="btn btn-success mb-2"><i class="fas fa-wallet"></i> Proses Potong Gaji</button></a>
                   <button type="button" class="btn btn-warning mb-2" data-toggle="modal" data-target="#imporModal">
                     <i class="fas fa-download"></i> Proses Data Migrasi</button>
                 </div>
               </div>

               <div class="row mb-2">
                 <div class="col">
                   <form action="" method="post">
                     <select class="form-control" name="id_simpanan_jenis">
                       <option value="">-- ALL --</option>
                       <?= call_option_selected($koneksi, "simpanan_jenis", "jenis_simpanan", "id_simpanan_jenis", "jenis_simpanan", $id_simpanan_jenis); ?>
                     </select>
                 </div>
                 <div class="col">
                   <button class="btn btn-info btn-block"> <i class="fas fa-table"></i> Terapkan Tampilan Sesuai Jenis </button>
                   </form>
                 </div>
               </div>


               <table id="example1" class="table table-bordered table-striped table-sm">
                 <!-- Kepala Tabel -->
                 <thead>
                   <tr>
                     <td>#</td>
                     <td>Anggota</td>
                     <td>Jenis Simpanan</td>
                     <td>Periode Kontrak</td>
                     <td>Saldo</td>
                     <td>Status</td>
                     <td>Aksi</td>
                   </tr>
                 </thead>
                 <!-- Isi Tabel -->
                 <?php
                 if (!empty($_POST['id_simpanan_jenis'])) {
                  $sql = "SELECT simpanan.*,anggota.nama as napel,user.nama as petugas,simpanan_jenis.jenis_simpanan,simpanan_jenis.kode from simpanan,anggota,user,simpanan_jenis where simpanan.id_anggota=anggota.id_anggota and simpanan.id_user=user.id_user and simpanan.id_simpanan_jenis=simpanan_jenis.id_simpanan_jenis and simpanan.id_simpanan_jenis=$id_simpanan_jenis  order by simpanan.id_simpanan desc";
                 } else {
                  $sql = "SELECT simpanan.*,anggota.nama as napel,user.nama as petugas,simpanan_jenis.jenis_simpanan,simpanan_jenis.kode from simpanan,anggota,user,simpanan_jenis where simpanan.id_anggota=anggota.id_anggota and simpanan.id_user=user.id_user and simpanan.id_simpanan_jenis=simpanan_jenis.id_simpanan_jenis  order by simpanan.id_simpanan desc";
                 }
                  $query = mysqli_query($koneksi, $sql);
                  while ($kolom = mysqli_fetch_array($query)) {
                  ?>
                   <tr>
                     <td><?= $kolom['id_simpanan']; ?></td>
                     <td><?= $kolom['napel']; ?></td>
                     <td><?= $kolom['kode']; ?> (<?= $kolom['jenis_simpanan']; ?>)</td>
                     <td><?= $kolom['tanggal_awal_kontrak']; ?> (<?= $kolom['durasi_kontrak_bulan']; ?> Bulan)</td>
                     <td><?= number_format($kolom['saldo_terakhir']); ?></td>
                     <td><?= $kolom['status_simpanan']; ?></td>
                     <td>
                       <a href="index.php?p=simpanan-mutasi&id=<?= $kolom['id_simpanan']; ?>">
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

 <!-- Modal Untuk Proses Data Tanpa Mutasi -->
 <div class="modal fade" id="imporModal" tabindex="-1" aria-labelledby="imporModalLabel" aria-hidden="true">
   <div class="modal-dialog">
     <div class="modal-content">
       <div class="modal-header">
         <h5 class="modal-title" id="imporModalLabel">Proses Data Tanpa Mutasi</h5>
         <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
       </div>
       <div class="modal-body">
         <?php
          $sql_no_mutasi = "SELECT simpanan.id_simpanan,simpanan_mutasi.id_simpanan_mutasi FROM simpanan LEFT JOIN simpanan_mutasi ON simpanan.id_simpanan=simpanan_mutasi.id_simpanan WHERE ISNULL(simpanan_mutasi.id_simpanan_mutasi)=1 ORDER BY simpanan_mutasi.id_simpanan_mutasi";
          $query_no_mutasi = mysqli_query($koneksi, $sql_no_mutasi);
          $jumlah_data = mysqli_num_rows($query_no_mutasi);
          // echo $jumlah_data;
          ?>
         <form action="aksi/simpanan.php" method='post'>
           <input type="hidden" name="aksi" value="tambah-mutasi-impor">
           <label for="">Hasil Pengecekan Data Terkait</label>
           <table class="table" style="width:100%;">
             <tr>
               <td>Data Transaksi Tanpa Mutasi</td>
               <td><?= number_format($jumlah_data); ?> Data</td>
             </tr>
           </table>
           <?php if ($jumlah_data <= 0) { ?>
             <div class="alert alert-success"><i>Keterangan : Semua Data Normal</i></div>
           <?php } else { ?>
             <button onclick="return confirm('Data mutasi transaksi akan ditambahkan sesuai dengan saldo terakhir,Apakah anda akan melanjutkan proses??')" type="submit" class="btn btn-warning mt-2 btn-block"><i class="fas fa-download"></i> Proses Data Transaksi [100]</button>
           <?php } ?>
         </form>
       </div>
       <div class="modal-footer">
         <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>

         </form>
       </div>
     </div>
   </div>
 </div>

 <!-- Modal Untuk Tambah Simpanan -->
 <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="editModalLabel" aria-hidden="true">
   <div class="modal-dialog modal-lg">
     <div class="modal-content">
       <div class="modal-header">
         <h5 class="modal-title" id="editModalLabel">Tambah Simpanan</h5>
         <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
       </div>
       <div class="modal-body">
         Pilih Jenis Produk Simpanan
         <table id="noorder" class="table table-bordered table-striped table-sm" style="width:100%;">
           <!-- Kepala Tabel -->
           <thead>
             <tr>
               <td align="center">#</td>
               <td align="center">Kode</td>
               <td align="center">Jenis Simpanan</td>
               <td align="center">Tempo Pembayaran</td>
               <td align="center">Pilih</td>
             </tr>
           </thead>
           <tbody>
             <!-- Isi Tabel -->
             <?php
              $sql = "SELECT * FROM simpanan_jenis ORDER BY jenis_simpanan";
              $query = mysqli_query($koneksi, $sql);
              while ($kolom = mysqli_fetch_array($query)) {
              ?>
               <tr>
                 <td><?= $kolom['id_simpanan_jenis']; ?></td>
                 <td><?= $kolom['kode']; ?></td>
                 <td><?= $kolom['jenis_simpanan']; ?></td>
                 <td><?= $kolom['tempo_pembayaran']; ?></td>
                 <td><a href="index.php?p=<?= $kolom['link']; ?>&id_simpanan_jenis=<?= $kolom['id_simpanan_jenis']; ?>">
                     <button type="button" class="btn btn-link"><i class="fas fa-plus"></i></button>
                   </a>
                 </td>
               </tr>

             <?php
              }
              ?>


           </tbody>
         </table>
       </div>
       <div class="modal-footer">
         <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>

         </form>
       </div>
     </div>
   </div>
 </div>