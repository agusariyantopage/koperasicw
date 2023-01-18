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
                         <li class="breadcrumb-item"><a href="index.php?p=simpanan">Simpanan</a></li>
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

                             <table id="noorder-nopaging" class="table table-bordered table-striped table-sm">
                                 <!-- Kepala Tabel -->
                                 <thead>
                                     <tr>
                                         <td>#</td>
                                         <td>Jatuh Tempo</td>
                                         <td>Tanggal Bayar</td>
                                         <td>Terbayar</td>
                                         <td>Saldo Akumulatif</td>
                                         <td>Bunga</td>
                                         <td>Saldo Akhir</td>
                                         <td>Aksi</td>
                                     </tr>
                                 </thead>
                                 <!-- Isi Tabel -->
                                 <?php
                                    $id = $_GET['id'];
                                    $sql = "select * from simpanan_detail where id_simpanan=$id";
                                    $query = mysqli_query($koneksi, $sql);
                                    while ($kolom = mysqli_fetch_array($query)) {
                                    ?>
                                     <tr>
                                         <td><?= $kolom['urut']; ?></td>
                                         <td><?= $kolom['tanggal_jatuh_tempo']; ?></td>
                                         <td><?= $kolom['tanggal_realisasi_bayar']; ?></td>
                                         <td><?= number_format($kolom['realisasi_pembayaran']); ?></td>
                                         <td><?= number_format($kolom['anggaran_pembayaran']*$kolom['urut']); ?></td>
                                         <td><?= number_format($kolom['bunga_nominal']); ?></td>
                                         <td><?= number_format($kolom['anggaran_saldo_akhir']); ?></td>
                                         <td>
                                             <button type="button" class="btn btn-link simpanan_input_bayar" title="Input Pembayaran" data-toggle="modal" data-target="#inputPembayaran" data-id="<?= $kolom['id_simpanan_detail']; ?>"  data-id2="<?= $kolom['id_simpanan']; ?>"><i class="fas fa-cash-register"></i></button>
                                             <button type="button" class="btn btn-link infopembelian" title="Edit Pembayaran" data-toggle="modal" data-target="#infoPembelianModal" data-id="<?= $kolom['id_simpanan_detail']; ?>"><i class="fas fa-edit"></i></button>
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

 <!-- Modal Untuk Input Pembayaran -->
 <div class="modal fade" id="inputPembayaran" tabindex="-1" aria-labelledby="editModalLabel" aria-hidden="true">
     <div class="modal-dialog modal-md">
         <div class="modal-content">
             <div class="modal-header">
                 <h5 class="modal-title" id="editModalLabel">Input Pembayaran Simpanan</h5>
                 <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
             </div>
             <div class="modal-body">

             </div>
             <div class="modal-footer">
                 <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>


             </div>
         </div>
     </div>
 </div>
 <!-- Modal Untuk Input Pembayaran -->
 <div class="modal fade" id="infoPembelianModal" tabindex="-1" aria-labelledby="editModalLabel" aria-hidden="true">
     <div class="modal-dialog modal-lg">
         <div class="modal-content">
             <div class="modal-header">
                 <h5 class="modal-title" id="editModalLabel">Informasi Transaksi Pembelian</h5>
                 <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
             </div>
             <div class="modal-body">

             </div>
             <div class="modal-footer">
                 <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>


             </div>
         </div>
     </div>
 </div>