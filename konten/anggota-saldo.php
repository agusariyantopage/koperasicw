 <!-- Content Wrapper. Contains page content -->
 <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Saldo Anggota</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Keuangan</a></li>
              <li class="breadcrumb-item active"> Saldo Belanja Anggota</li>
              
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
              <h3>Data Saldo Anggota</h3>
            </div> 
            <div class="card-body">
              <!-- <button type="button" class="btn btn-primary mb-2" data-toggle="modal" data-target="#exampleModal">
              <i class="fas fa-plus"></i> Tambah Saldo Bulanan</button>
              <button type="button" class="btn btn-success mb-2" data-toggle="modal" data-target="#exampleModal">
              <i class="fas fa-file-excel"></i> Impor</button>
              <a href="aksi/anggota.php?aksi=buang-spasi"><button type="button" class="btn btn-warning mb-2">
              <i class="fas fa-cut"></i> Buang Spasi</button></a>
              <a href="aksi/anggota.php?aksi=set-kapital"><button type="button" class="btn btn-info mb-2">
              <i class="fas fa-font"></i> Kapital</button></a>
              <a href="aksi/anggota.php?aksi=set-proper"><button type="button" class="btn btn-danger mb-2">
              <i class="fas fa-text-height"></i> Proper</button></a> -->
              
              <table id="finditem" class="table table-bordered table-striped">
                <!-- Kepala Tabel -->
                <thead>
                  <tr>
                    <td>ID</td>                    
                    <td>Nama</td>
                    <td>Alamat</td>
                    <td>No Telepon</td>                    
                    <td>Saldo</td>                    
                    <td>Aksi</td>
                  </tr>
                </thead>
                <!-- Isi Tabel -->
<?php
  $sql="select a.* from anggota a where is_individual=1";
//   $sql="SELECT a.* from anggota a WHERE a.saldo!=(SELECT COALESCE(SUM(anggota_mutasi_saldo.jumlah),0) FROM anggota_mutasi_saldo WHERE anggota_mutasi_saldo.id_anggota=a.id_anggota) - 
// (SELECT COALESCE(SUM(jual.total),0) FROM jual WHERE jual.id_anggota=a.id_anggota AND jual.metode_bayar='POTONG SALDO ANGGOTA') - (SELECT COALESCE(SUM(jual_cicil.jumlah_tagihan),0) FROM jual_cicil,jual WHERE jual_cicil.id_jual=jual.id_jual AND jual_cicil.is_terbayar=1 AND jual.id_anggota=a.id_anggota) AND a.is_individual=1 ORDER BY `a`.`nama` ASC";
  $query=mysqli_query($koneksi,$sql);
  while($kolom=mysqli_fetch_array($query)){  
?>                
                <tr>
                  <td><?= $kolom['id_anggota']; ?></td>                  
                  <td><?= $kolom['nama']; ?></td>
                  <td><?= $kolom['alamat']; ?></td>
                  <td><?= $kolom['telepon']; ?></td>                 
                  <td><?= number_format($kolom['saldo']); ?></td>                  
                  <td>
                    <a href="index.php?p=anggota-saldo-individu&token=<?= md5($kolom['id_anggota']); ?>"><i class="fas fa-chart-line"></i></a>
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

    
