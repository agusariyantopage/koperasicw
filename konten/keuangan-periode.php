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
                    <a href=""><i class="fas fa-chart-line"></i></a>
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

    
