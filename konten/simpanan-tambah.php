
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Transaksi Simpanan Baru</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Simpan Pinjam</a></li>
              <li class="breadcrumb-item"><a href="index.php?p=simpanan">Simpanan</a></li>
              <li class="breadcrumb-item active">Input Simpanan</li>
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
              <h3>Input Transaksi Simpanan</h3>
            </div> 
            <div class="card-body">              

              <form action="#" method="get">
                <input type="hidden" name="p" value="simpanan-tambah">
                <div class="form-row">
                  <div class="form-group col-sm-4">
                    <label for="jenis_simpanan">Jenis Simpanan</label>
                    <select class="form-control" name="jenis_simpanan" id="" required>
                      <option>TAHARA (Tabungan Hari Raya)</option>
                      <option>SIDIDIK</option>
                    </select>
                  </div>
                  <div class="form-group col-sm-4">
                    <label for="tanggal_awal_kontrak">Tanggal Awal Kontrak</label>
                    <input class="form-control" type="date"  name="tanggal_awal_kontrak" required>
                  </div>                                   
                  <div class="form-group col-sm-4">
                    <label for="durasi_kontrak_bulan">Durasi Simpanan (Bulan)</label>
                    <input class="form-control" type="number"  name="durasi_kontrak_bulan" required>
                  </div>                                   
                </div>
                <div class="form-row">
                  <div class="form-group col-sm-4">
                    <label for="bunga_tahunan">Bunga Per Tahun</label>
                    <input class="form-control" type="number"  name="bunga_tahunan" required>
                  </div>
                  <div class="form-group col-sm-4">
                    <label for="jumlah_simpanan">Simpanan Per Bulan</label>
                    <input class="form-control" type="number"  name="jumlah_simpanan" required>
                  </div>                                   
                  <div class="form-group col-sm-4 align-self-end">
                    <button type="submit" class="btn btn-warning btn-block"><i class="fas fa-calculator"></i> Proses</button>
                  </div>                                   
                </div>
              </form>
              <table class="table table-bordered table-striped table-sm" style="width:100%;">
                  <thead class="thead-dark">
                      <tr>                        
                        <th scope="col">#</th>
                        <th scope="col">Tanggal Jatuh Tempo</th>
                        <th scope="col">Pokok</th>
                        <th scope="col">Bunga(%)</th>
                        <th scope="col">Bunga</th>
                        <th scope="col">Jumlah</th>
                      </tr>
                  </thead>
                  <tbody>
<?php
                  $id_user=$_SESSION['backend_user_id'];
                  $no=0;
                  $grandtotal=0;
                  
                 // buat for
                  if(!empty($_GET['durasi_kontrak_bulan'])){
                    $tanggal_awal=$_GET['tanggal_awal_kontrak'];
                    $pokok=$_GET['jumlah_simpanan'];
                    $durasi=$_GET['durasi_kontrak_bulan'];
                    $bunga_persen=$_GET['bunga_tahunan']/12;
                    
                   
                    for($i=1;$i<=$durasi;$i++){
                      $no++;
                      $tahunTransaksi=substr($tanggal_awal,0,4);
                      $bulanTransaksi=substr($tanggal_awal,5,2);
                      $hariTransaksi=substr($tanggal_awal,8,2);
                      $bulanTransaksi=(int)$bulanTransaksi+($i-1);
                      if ($bulanTransaksi>12){
                        //$tahun_inc=round($bulanTransaksi/12,0,PHP_ROUND_HALF_DOWN);
                        $tahun_inc=floor($bulanTransaksi/12);
                        $tahunTransaksi=$tahunTransaksi+$tahun_inc;
                        $bulanTransaksi=$bulanTransaksi-(12*$tahun_inc);
                        if($bulanTransaksi==0){
                          $bulanTransaksi=12;
                          $tahunTransaksi=$tahunTransaksi-1;
                        }                        
                      }
                      $bulanTransaksi="".$bulanTransaksi;
                      if(strlen($bulanTransaksi)==1){
                        $bulanTransaksi="0".$bulanTransaksi;
                      } else {
                        $bulanTransaksi=$bulanTransaksi;
                      }
                      $tanggal_jatuh_tempo=$tahunTransaksi."-".$bulanTransaksi."-".$hariTransaksi;

                      $bunga_nominal=$bunga_persen/100*$grandtotal;
                      $grandtotal_row=$grandtotal+$pokok+$bunga_nominal;
                      echo "
                        <tr>
                          <td>$no</td>
                          <td>$tanggal_jatuh_tempo</td>
                          <td align='right'>".number_format($pokok)."</td>
                          <td align='right'>".number_format($bunga_persen,2)."</td>
                          <td align='right'>".number_format($bunga_nominal)."</td>
                          <td align='right'>".number_format($grandtotal_row)."</td>                          
                        </tr>
                      ";
                      $grandtotal=$grandtotal+$bunga_nominal+$pokok;
                    }
                  }
                  
                  
?>

                  </tbody>
                  <tfoot>
                    <td align='center' colspan="2">GRANDTOTAL</td>
                    <td align='right'><p><?= number_format($pokok*$durasi); ?></p></td>
                    <td></td>
                    <td></td>
                    <td align='right'><p><?= number_format($grandtotal); ?></p></td>
                  </tfoot>
                  </table>                

            </div> 
          </div>
          <?php
            if(1>10){
              echo "Pilih Metode Pembayaran : ";
              echo "<div class='row'>";
              echo "<div class='col-sm-4 mb-1'>";
              echo "<button type='button' class='btn btn-success btn-block' data-toggle='modal' data-target='#simpanJualModalKas'><i class='fas fa-money-bill-alt'></i> Pembayaran Kas </button>";
              echo "</div>";
              echo "<div class='col-sm-4 mb-1'>";              
              echo "<button type='button' class='btn btn-success btn-block' data-toggle='modal' data-target='#simpanJualModal'><i class='fas fa-address-book'></i> Potong Saldo Anggota </button>"; 
              echo "</div>";
              echo "<div class='col-sm-4 mb-1'>";  
              echo "<button type='button' class='btn btn-success btn-block' data-toggle='modal' data-target='#simpanJualModalCicil'><i class='fas fa-credit-card'></i> Cicil Bayar </button>";   
              echo "</div>";
              echo "</div>";
            }
          ?>
        </div>
        <br><br>
           
      </row>
      
        
      </div><!-- /.container-fluid -->
      
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

 
