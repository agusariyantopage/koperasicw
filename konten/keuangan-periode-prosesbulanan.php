 <?php
  $token_id=$_GET['token'];
  $sql1="select * from periode_pembukuan where md5(id_periode)='$token_id'";
  $query1=mysqli_query($koneksi,$sql1);
  $kolom1=mysqli_fetch_array($query1);
  $tahun=$kolom1['tahun'];
  $bulan=$kolom1['bulan'];
  $kode=$kolom1['kode'];
  $tanggal_mulai=$kolom1['tanggal_mulai'];
  $tanggal_selesai=$kolom1['tanggal_selesai'];

 ?>
 <!-- Content Wrapper. Contains page content -->
 <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Proses Keuangan Bulanan (Tahun : <?= $tahun; ?> Bulan : <?= $bulan; ?>)</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Keuangan</a></li>
              <li class="breadcrumb-item"><a href="index.php?p=keuangan-periode">Periode Pembukuan</a></li>
              <li class="breadcrumb-item active"> Proses Keuangan Bulanan</li>
              
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
              <h3>Data Proses Keuangan Bulanan</h3>
            </div> 
            <div class="card-body">
              
              
              <table id="example1" class="table table-bordered table-striped table-sm">
                <!-- Kepala Tabel -->
                <thead>
                  <tr>
                    <td>Nama</td>                    
                    <td>Alamat</td>
                    <td>ID</td>
                    <td>Saldo Awal Belanja</td>                    
                    <td>Belanja Wajib Bulanan</td>                    
                    <td>Belanja Toko</td>
                    <td>Sisa Saldo Belanja</td>                    
                    <td>Total Potongan Koperasi</td>
                  </tr>
                </thead>
                <!-- Isi Tabel -->
<?php
  $sql="select id_anggota as ida,nama,alamat,is_individual,saldo,belanja_wajib,(select sum(total) from jual where id_anggota=ida and metode_bayar='POTONG SALDO ANGGOTA' and (tanggal_transaksi>='$tanggal_mulai' and tanggal_transaksi<='$tanggal_selesai')) as total_belanja,(select SUM(jual_cicil.jumlah_tagihan) from jual_cicil,jual where jual_cicil.id_jual=jual.id_jual and jual.id_anggota=ida and (tanggal_jatuh_tempo>='$tanggal_mulai' and tanggal_jatuh_tempo<='$tanggal_selesai')) as total_belanja_cicil from anggota where is_individual=1 and id_anggota!=1 order by nama";
  //echo $sql;
  $query=mysqli_query($koneksi,$sql);
  while($kolom=mysqli_fetch_array($query)){  
    $belanja_wajib=$kolom['belanja_wajib'];    
    $total_belanja=$kolom['total_belanja']+$kolom['total_belanja_cicil'];
    $saldo_awal=$kolom['saldo']+$total_belanja;
    $sisa_saldo_belanja=$saldo_awal+$belanja_wajib-$total_belanja;    
    if($sisa_saldo_belanja>=0){
      $potongan_toko=$kolom['belanja_wajib'];
    } else {
      $potongan_toko=(-1*$sisa_saldo_belanja)+$kolom['belanja_wajib'];
    }
    
    $total_potongan=$potongan_toko;

?>                
                <tr>
                  <td><?= $kolom['nama']; ?></td>                  
                  <td><?= $kolom['alamat']; ?></td>
                  <td><?= $kolom['ida']; ?></td>
                  <td align="right"><?= number_format($saldo_awal); ?></td>                 
                  <td align="right"><?= number_format($kolom['belanja_wajib']); ?></td>                 
                  <td align="right"><?= number_format($total_belanja); ?></td>
                  <td align="right"><?= number_format($sisa_saldo_belanja); ?></td>                 
                  <td align="right"><?= number_format($total_potongan); ?></td>
                </tr>
            
<?php
  }
?>                
              </table>
              <form method='post' action="aksi/periode.php">
                <input type="hidden" name="aksi" value="proses-keuangan-bulanan">  
                <input type="hidden" name="tanggal_mulai" value="<?= $tanggal_mulai; ?>">  
                <input type="hidden" name="tanggal_selesai" value="<?= $tanggal_selesai; ?>">  
                <input type="hidden" name="kode" value="<?= $kode; ?>">
                <button type="submit" class="btn btn-warning"><i class="fas fa-save"></i> Proses Data</button>   
              </form>
            </div> 
          </div>
        </div>
        
      </row>
          
        
      </div><!-- /.container-fluid -->
      
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

    
