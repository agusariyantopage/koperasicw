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
              
              
              <table id="finditem" class="table table-bordered table-striped table-sm">
                <!-- Kepala Tabel -->
                <thead>
                  <tr>
                    <td>Nama</td>                    
                    <td>Alamat</td>
                    <td>Tipe</td>
                    <td>Saldo Awal Belanja</td>                    
                    <td>Belanja Wajib Bulanan</td>                    
                    <td>Belanja Toko</td>
                    <td>Sisa Saldo Belanja</td>
                    <td>Simpanan Wajib Bulanan</td>                    
                    <td>Potongan Simpanan / Pinjaman</td>                    
                    <td>Total Potongan Koperasi</td>
                  </tr>
                </thead>
                <!-- Isi Tabel -->
<?php
  $sql="select id_anggota as ida,nama,alamat,is_individual,(select sum(total) from jual where id_anggota=ida and metode_bayar='POTONG SALDO ANGGOTA' and (tanggal_transaksi>='$tanggal_mulai' and tanggal_transaksi<='$tanggal_selesai')) as total_belanja,(select SUM(jual_cicil.jumlah_tagihan) from jual_cicil,jual where jual_cicil.id_jual=jual.id_jual and jual.id_anggota=ida and (tanggal_jatuh_tempo>='$tanggal_mulai' and tanggal_jatuh_tempo<='$tanggal_selesai')) as total_belanja_cicil from anggota where is_individual=1 order by nama";
  echo $sql;
  $query=mysqli_query($koneksi,$sql);
  while($kolom=mysqli_fetch_array($query)){  
    $belanja_wajib=50000;
    $simpanan_wajib=15000;
    $total_belanja=$kolom['total_belanja']+$kolom['total_belanja_cicil'];
    $sisa_saldo_belanja=$belanja_wajib-$total_belanja;
    $potongan_simpan_pinjam=0;
    if($belanja_wajib>$total_belanja){
      $potongan_toko=$belanja_wajib;
    } else {
      $potongan_toko=$belanja_wajib+($total_belanja-$belanja_wajib);
    }
    
    $total_potongan=$simpanan_wajib+$potongan_simpan_pinjam+$potongan_toko;

?>                
                <tr>
                  <td><?= $kolom['nama']; ?></td>                  
                  <td><?= $kolom['alamat']; ?></td>
                  <td><?= $kolom['is_individual']; ?></td>
                  <td align="right">0</td>                 
                  <td align="right">50,000</td>                 
                  <td align="right"><?= number_format($total_belanja); ?></td>
                  <td align="right"><?= number_format($sisa_saldo_belanja); ?></td>                 
                  <td align="right">15,000</td>                 
                  <td align="right">0</td>                  
                  <td align="right"><?= number_format($total_potongan); ?></td>
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

    
