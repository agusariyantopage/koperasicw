 <!-- Content Wrapper. Contains page content -->
 <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Periode Pembukuan</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Keuangan</a></li>
              <li class="breadcrumb-item active"> Periode Pembukuan</li>
              
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
              <h3>Data Periode Pembukuan</h3>
            </div> 
            <div class="card-body">
              
              
              <table id="finditem" class="table table-bordered table-striped">
                <!-- Kepala Tabel -->
                <thead>
                  <tr>
                    <td>Kode</td>                    
                    <td>Tahun</td>
                    <td>Bulan</td>
                    <td>Tanggal Awal</td>                    
                    <td>Tanggal Akhir</td>                    
                    <td>Aksi</td>
                  </tr>
                </thead>
                <!-- Isi Tabel -->
<?php
  $sql="select * from periode_pembukuan order by tanggal_mulai";
  $query=mysqli_query($koneksi,$sql);
  while($kolom=mysqli_fetch_array($query)){  
?>                
                <tr>
                  <td><?= $kolom['kode']; ?></td>                  
                  <td><?= $kolom['tahun']; ?></td>
                  <td><?= $kolom['bulan']; ?></td>
                  <td><?= $kolom['tanggal_mulai']; ?></td>                 
                  <td><?= $kolom['tanggal_selesai']; ?></td>                  
                  <td>
                  <button type="button" class="btn btn-link" data-toggle="modal" data-target="#editModal<?= $kolom['id_periode']; ?>"><i class="fas fa-edit"></i></button>
                  </td>
                </tr>
<!-- Modal Edit -->
<div class="modal fade" id="editModal<?= $kolom['id_periode']; ?>" tabindex="-1" aria-labelledby="editModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="editModalLabel">Ubah Periode Pembukuan</h5>
        <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
      <form method="post" enctype="multipart/form-data" action="aksi/periode.php">
        <input type="hidden" name="aksi" value="ubah">
        <div>
          <label for="id_periode">ID Periode</label>  
          <input type="text" class="form-control" readonly name="id_periode" value="<?= $kolom['id_periode']; ?>">
        </div>
        <div>
          <label for="kode">Kode</label>
          <input type="text" name="kode" readonly class="form-control" value="<?= $kolom['kode']; ?>">
        </div>
        <div>
          <label for="tahun">Tahun</label>
          <input type="text" name="tahun" readonly class="form-control" value="<?= $kolom['tahun']; ?>">
        </div>
        <div>
          <label for="bulan">Bulan</label>
          <input type="text" name="bulan" readonly class="form-control" value="<?= $kolom['bulan']; ?>">
        </div>
        <div>
          <label for="tanggal_mulai">Tanggal Mulai</label>
          <input type="date" name="tanggal_mulai" class="form-control" value="<?= $kolom['tanggal_mulai']; ?>">
        </div>
        <div>
          <label for="tanggal_selesai">Tanggal Selesai</label>
          <input type="date" name="tanggal_selesai" class="form-control" value="<?= $kolom['tanggal_selesai']; ?>">
        </div>               
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>
        <button type="submit" class="btn btn-primary">Ubah</button>
        </form>
      </div>
    </div>
  </div>
</div>                
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

    
