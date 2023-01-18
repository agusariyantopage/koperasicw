 <?php
    if (!empty($_GET['poin'])) {
        $poin = $_GET['poin'];
        $tanggal_awal = $_GET['tanggal_awal'];
        $tanggal_akhir = $_GET['tanggal_akhir'];
    } else {
        $poin = 0;
        $tanggal_awal = 0;
        $tanggal_akhir = 0;
    }
    ?>
 <!-- Content Wrapper. Contains page content -->
 <div class="content-wrapper">
     <!-- Content Header (Page header) -->
     <div class="content-header">
         <div class="container-fluid">
             <div class="row mb-2">
                 <div class="col-sm-6">
                     <h1 class="m-0">Poin Anggota</h1>
                 </div><!-- /.col -->
                 <div class="col-sm-6">
                     <ol class="breadcrumb float-sm-right">
                         <li class="breadcrumb-item"><a href="#">Keuangan</a></li>
                         <li class="breadcrumb-item active"> Poin Belanja Anggota</li>

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
                             <h3>Data Poin Anggota</h3>
                         </div>
                         <div class="card-body">
                             <div class="col-12">
                                 <form action="index.php">
                                     <input type="hidden" name="p" value="anggota-poin">
                                     <div class="row mb-2">
                                         <div class="col-3">
                                             <label for="tanggal_awal">Tanggal Awal</label>
                                             <input type="date" value="<?= $tanggal_awal; ?>" name="tanggal_awal" class="form-control" required>
                                         </div>
                                         <div class="col-3">
                                             <label for="tanggal_akhir">Tanggal Akhir</label>
                                             <input type="date" value="<?= $tanggal_akhir; ?>" name="tanggal_akhir" class="form-control" required>
                                         </div>
                                         <div class="col-3">
                                             <label for="poin">Per 1 Poin Untuk Belanja</label>
                                             <input type="number" value="<?= $poin; ?>" name="poin" class="form-control" required>
                                         </div>

                                         <div class="col-3 align-self-end">
                                             <button type="submit" class="btn btn-info btn-block"><i class="fa fa-search"></i> Cari</button>
                                         </div>
                                 </form>
                             </div>

                             <table id="example1" class="table table-bordered table-striped">
                                 <!-- Kepala Tabel -->
                                 <thead>
                                     <tr>
                                         <td>ID</td>
                                         <td>Nama</td>
                                         <td>Alamat</td>
                                         <td>Poin</td>
                                     </tr>
                                 </thead>
                                 <!-- Isi Tabel -->
                                 <?php


                                    $sql = "select jual.id_anggota,nama,alamat,is_individual,sum(total) as kontribusi from jual,anggota where is_individual=1 and jual.id_anggota=anggota.id_anggota and (tanggal_transaksi BETWEEN '$tanggal_awal' and '$tanggal_akhir') group by jual.id_anggota";
                                    $query = mysqli_query($koneksi, $sql);
                                    while ($kolom = mysqli_fetch_array($query)) {
                                    ?>
                                     <tr>
                                         <td><?= $kolom['id_anggota']; ?></td>
                                         <td><?= $kolom['nama']; ?></td>
                                         <td><?= $kolom['alamat']; ?></td>
                                         <td><?= number_format($kolom['kontribusi'] / $poin); ?></td>
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