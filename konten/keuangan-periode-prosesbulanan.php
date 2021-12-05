 <!-- Content Wrapper. Contains page content -->
 <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Proses Keuangan Bulanan</h1>
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
  $sql="select id_anggota as ida,nama,alamat,is_individual,(select sum(total) from jual where id_anggota=ida and metode_bayar='POTONG SALDO ANGGOTA') as total_belanja from anggota where is_individual=1 order by nama";
  $query=mysqli_query($koneksi,$sql);
  while($kolom=mysqli_fetch_array($query)){  
    $belanja_wajib=50000;
    $simpanan_wajib=15000;
    $total_belanja=$kolom['total_belanja'];
    $potongan_simpan_pinjam=0;
    if($belanja_wajib>$total_belanja){
      $potongan_toko=$belanja_wajib-$total_belanja;
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
                  <td align="right"><?= number_format($kolom['total_belanja']); ?></td>
                  <td align="right">0</td>                 
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

    
