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
              <a href="index.php?p=simpanan-tambah"><button type="button" class="btn btn-primary mb-2">
              <i class="fas fa-plus"></i> Tambah Transaksi Baru</button></a>
              
              <table id="noorder" class="table table-bordered table-striped table-sm">
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
  $sql="SELECT simpanan.*,anggota.nama as napel,user.nama as petugas,simpanan_jenis.jenis_simpanan,simpanan_jenis.kode from simpanan,anggota,user,simpanan_jenis where simpanan.id_anggota=anggota.id_anggota and simpanan.id_user=user.id_user and simpanan.id_simpanan_jenis=simpanan_jenis.id_simpanan_jenis  order by simpanan.id_simpanan desc";  
  $query=mysqli_query($koneksi,$sql);
  while($kolom=mysqli_fetch_array($query)){  
?>                
                <tr>
                  <td><?= $kolom['id_simpanan']; ?></td>
                  <td><?= $kolom['napel']; ?></td>
                  <td><?= $kolom['kode']; ?> (<?= $kolom['jenis_simpanan']; ?>)</td>
                  <td><?= $kolom['tanggal_awal_kontrak']; ?> (<?= $kolom['durasi_kontrak_bulan']; ?> Bulan)</td>
                  <td><?= number_format($kolom['saldo_terakhir']); ?></td>                  
                  <td><?= $kolom['status_simpanan']; ?></td>
                  <td>
                    <a target="blank" href="index.php?p=simpanan-detail&id=<?= $kolom['id_simpanan']; ?>">
                    <button type="button" class="btn btn-link"><i class="fas fa-info"></i></button>                    
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

  <!-- Modal Untuk Tambah Anggota -->
  <!-- Modal Edit -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="editModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="editModalLabel">Tambah Anggota</h5>
        <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
      <form method="post" enctype="multipart/form-data" action="aksi/anggota.php">
        <input type="hidden" name="aksi" value="tambah">
        
        <div>
          <label for="no_identitas">Nomer Identitas</label>
          <input type="text" name="no_identitas" class="form-control">
        </div>
        <div>
          <label for="tanggal_bergabung">Tanggal Bergabung</label>
          <input type="date" name="tanggal_bergabung" class="form-control">
        </div>
        <div>
          <label for="nama">Nama</label>
          <input type="text" name="nama" class="form-control">
        </div>
        <div>
          <label for="alamat">Alamat</label>
          <textarea name="alamat" id="alamat" class="form-control" rows="3"></textarea>
        </div>
        <div>
          <label for="telepon">Nomor Telepon</label>
          <input type="text" name="telepon" class="form-control">
        </div>  
        <div>
          <label for="email">Email</label>
          <input type="email" name="email" class="form-control">
        </div>        
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>
        <button type="submit" class="btn btn-primary">Tambah</button>
        </form>
      </div>
    </div>
  </div>
</div>   
