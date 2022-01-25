 <!-- Content Wrapper. Contains page content -->
 <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Pembelian</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
           <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Toko</a></li>
              <li class="breadcrumb-item active">Pembelian</li>
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
          <div class="btn-group mb-3" role="group" aria-label="Basic example">
            <a href="index.php?p=daftar-pembelian&filter=hari"><button type="button" class="btn btn-secondary mr-1">Hari Ini</button></a>
            <a href="index.php?p=daftar-pembelian&filter=bulan"><button type="button" class="btn btn-secondary mr-1">Bulan Ini</button></a>
            <a href="index.php?p=daftar-pembelian&filter=tahun"><button type="button" class="btn btn-secondary mr-1">Tahun Ini</button></a>
            <a href="index.php?p=daftar-pembelian&filter=semua"><button type="button" class="btn btn-secondary mr-1">Semua Transaksi</button></a>
          </div>
          
          <div class="card">
            <div class="card-header">
              <h3>Data Pembelian</h3>
            </div> 
            <div class="card-body">
              <a href="index.php?p=pembelian"><button type="button" class="btn btn-primary mb-2">
              <i class="fas fa-plus"></i> Tambah Transaksi Baru</button></a>
              
              <table id="noorder" class="table table-bordered table-striped">
                <!-- Kepala Tabel -->
                <thead>
                  <tr>
                    <td>#</td>
                    <td>Anggota</td>
                    <td>Tanggal Transaksi</td>
                    <td>Metode Pembayaran</td>
                    <td>Total Belanja</td>
                    <td>Petugas</td>
                    <td>Waktu Input</td>
                    <td>Aksi</td>
                  </tr>
                </thead>
                <!-- Isi Tabel -->
<?php
  if(empty($_GET['filter'])){
    $sql="select beli.*,pemasok.nama as napem,user.nama as petugas from beli,pemasok,user where beli.id_pemasok=pemasok.id_pemasok and beli.id_user=user.id_user and tanggal_transaksi=DATE(NOW()) order by beli.id_beli desc";
  } else {
    if($_GET['filter']=='hari'){      
      $sql="select beli.*,pemasok.nama as napem,user.nama as petugas from beli,pemasok,user where beli.id_pemasok=pemasok.id_pemasok and beli.id_user=user.id_user and tanggal_transaksi=DATE(NOW()) order by beli.id_beli desc";
    }
    if($_GET['filter']=='bulan'){      
      $sql="select beli.*,pemasok.nama as napem,user.nama as petugas from beli,pemasok,user where beli.id_pemasok=pemasok.id_pemasok and beli.id_user=user.id_user and MONTH(tanggal_transaksi)=MONTH(NOW()) order by beli.id_beli desc";
    }
    if($_GET['filter']=='tahun'){      
      $sql="select beli.*,pemasok.nama as napem,user.nama as petugas from beli,pemasok,user where beli.id_pemasok=pemasok.id_pemasok and beli.id_user=user.id_user and YEAR(tanggal_transaksi)=YEAR(NOW()) order by beli.id_beli desc";
    }
    if($_GET['filter']=='semua'){      
      $sql="select beli.*,pemasok.nama as napem,user.nama as petugas from beli,pemasok,user where beli.id_pemasok=pemasok.id_pemasok and beli.id_user=user.id_user order by beli.id_beli desc";
    }
  }
  
  $query=mysqli_query($koneksi,$sql);
  while($kolom=mysqli_fetch_array($query)){  
?>                
                <tr>
                  <td><?= $kolom['id_beli']; ?></td>
                  <td><?= $kolom['napem']; ?></td>
                  <td><?= $kolom['tanggal_transaksi']; ?></td>
                  <td><?= $kolom['metode_bayar']; ?></td>
                  <td><?= number_format($kolom['total']); ?></td>
                  <td><?= $kolom['petugas']; ?></td>                  
                  <td><?= $kolom['dibuat_pada']; ?></td>
                  <td>
                  <a target="blank" href="index.php?p=pembelian-info&token=<?= md5($kolom['id_beli']); ?>"><button type="button" class="btn btn-link"><i class="fas fa-info"></i></button></a>                    
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
      <form method="post" enctype="multipart/form-data" action="aksi/pemasok.php">
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
