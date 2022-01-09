<?php
    $id=$_GET['token'];
    $sql1="select * from anggota where md5(id_anggota)='$id'";
    $query1=mysqli_query($koneksi,$sql1);
    $kolom1=mysqli_fetch_array($query1);
    $nama=$kolom1['nama']." (".$kolom1['alamat'].")";

?>
<!-- Content Wrapper. Contains page content -->
 <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Saldo Individu Anggota </h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Keanggotaan</a></li>
              <li class="breadcrumb-item"><a href="index.php?p=anggota-saldo">Saldo Anggota</a></li>
              <li class="breadcrumb-item active">Saldo Individu Anggota </li>
              
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
              <h3><?= $nama; ?></h3>
            </div> 
            <div class="card-body">
                <form action="">
                    <input type="hidden" name="p" value="anggota-saldo-individu">
                    <input type="hidden" name="token" value="<?= $id; ?>">
                    <div class="row">
                        <div class="col-sm-4">
                            <label for="mulai">Tanggal Transaksi Awal</label>
                            <input type="date" value="<?php if(!empty($_GET['mulai'])){ echo $_GET['mulai'];} ?>" name="mulai" id="mulai" class="form-control" required>
                        </div>
                        <div class="col-sm-4">
                            <label for="selesai">Tanggal Transaksi Terakhir</label>
                            <input type="date" value="<?php if(!empty($_GET['selesai'])){ echo $_GET['selesai'];} ?>" name="selesai" id="selesai" class="form-control" required>
                        </div>
                        <div class="col-sm-4 align-self-end">
                            <button class="btn btn-success btn-block" type="submit"><i class="fas fa-search"></i> Terapkan</button>
                        </div>
                    </div>
                </form>
                <br>
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
              
              <table class="table table-bordered table-striped">
                <!-- Kepala Tabel -->
                <thead>
                  <tr>
                    <td>#</td>                    
                    <td>Tanggal Transaksi</td>
                    <td>Metode Bayar</td>
                    <td>Total Transaksi</td>
                  </tr>
                </thead>
                <!-- Isi Tabel -->
<?php
  if(empty($_GET['mulai'])){
    $sql="select * from jual where md5(id_anggota)='$id'";
  } else {
    $mulai=$_GET['mulai'];
    $selesai=$_GET['selesai'];
    $sql="select * from jual where md5(id_anggota)='$id' and (tanggal_transaksi>='$mulai' and tanggal_transaksi<='$selesai')";
  }  
  
  $query=mysqli_query($koneksi,$sql);
  $total=0;
  while($kolom=mysqli_fetch_array($query)){  
      $total=$total+$kolom['total'];
?>                
                <tr>
                  <td><?= $kolom['id_jual']; ?></td>                  
                  <td><?= $kolom['tanggal_transaksi']; ?></td>
                  <td><?= $kolom['metode_bayar']; ?></td>                                  
                  <td align="right"><?= number_format($kolom['total']); ?></td>  
                </tr>
              
<?php
  }
?>                
                <tr>
                    <td colspan="3"><b>TOTAL</b></td>
                    <td align="right"><b>Rp. <?= number_format($total); ?></b></td>
                </tr>
                </table>
            </div> 
          </div>
        </div>
      </row>
      <i>Catatan : Transaksi Kas Tidak Mempengaruhi Saldo Belanja</i>       
        
      </div><!-- /.container-fluid -->
      
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

    
