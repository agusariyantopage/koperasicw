 <?php
  // Hitung Nilai Umum 

  // Jumlah dan Total Transaksi
  $sql1="select count(id_jual) as jumlah_transaksi,sum(total) as total_transaksi from jual";
  $query1=mysqli_query($koneksi,$sql1);
  $data1=mysqli_fetch_array($query1);
  $jumlah_transaksi=$data1['jumlah_transaksi'];
  $total_transaksi=$data1['total_transaksi'];

  $sql2="select count(id_anggota) as jumlah_anggota from anggota where is_individual=1 and id_anggota!=0";
  $query2=mysqli_query($koneksi,$sql2);
  $data2=mysqli_fetch_array($query2);
  $jumlah_anggota=$data2['jumlah_anggota'];
 
  $sql3="select count(id_pemasok) as jumlah_pemasok from pemasok";
  $query3=mysqli_query($koneksi,$sql3);
  $data3=mysqli_fetch_array($query3);
  $jumlah_pemasok=$data3['jumlah_pemasok'];
  
  $sql4="select count(id_produk) as jumlah_produk,sum(hpp*qty) as nilai_inventaris_toko from produk";
  $query4=mysqli_query($koneksi,$sql4);
  $data4=mysqli_fetch_array($query4);
  $jumlah_produk=$data4['jumlah_produk'];
  $nilai_inventaris_toko=$data4['nilai_inventaris_toko'];

  $sql5="select sum(saldo_terakhir) as total_simpanan from simpanan";
  $query5=mysqli_query($koneksi,$sql5);
  $data5=mysqli_fetch_array($query5);
  $total_simpanan=$data5['total_simpanan'];


  $total_kredit=0;

 ?>
 <!-- Content Wrapper. Contains page content -->
 <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Dashboard</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item active"><a href="#">Home</a></li>
              
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <!-- Small boxes (Stat box) -->
        <div class="row">
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-info">
              <div class="inner">
                <h3><?= number_format($jumlah_transaksi); ?></h3>

                <p>Transaksi Toko</p>
              </div>
              <div class="icon">
                <i class="ion ion-bag"></i>
              </div>
              <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-success">
              <div class="inner">
                <h3><?= number_format($total_transaksi); ?></sup></h3>

                <p>Total Penjualan</p>
              </div>
              <div class="icon">
                <i class="ion ion-stats-bars"></i>
              </div>
              <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-warning">
              <div class="inner">
                <h3><?= number_format($jumlah_anggota); ?></h3>

                <p>Anggota Koperasi</p>
              </div>
              <div class="icon">
                <i class="ion ion-person-add"></i>
              </div>
              <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-danger">
              <div class="inner">
                <h3><?= number_format($jumlah_pemasok); ?></h3>

                <p>Pemasok</p>
              </div>
              <div class="icon">
                <i class="ion ion-person-add"></i>
              </div>
              <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
        </div>
        <!-- /.row -->        
        <!-- Small boxes (Stat box) -->
        <div class="row">
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-info">
              <div class="inner">
                <h3><?= number_format($jumlah_produk); ?></h3>

                <p>Produk Toko</p>
              </div>
              <div class="icon">
                <i class="ion ion-bag"></i>
              </div>
              <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-success">
              <div class="inner">
                <h3><?= number_format($nilai_inventaris_toko); ?></sup></h3>

                <p>Total Nilai Inventaris Toko</p>
              </div>
              <div class="icon">
                <i class="ion ion-stats-bars"></i>
              </div>
              <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-warning">
              <div class="inner">
                <h3><?= number_format($total_simpanan); ?></h3>

                <p>Total Simpanan Anggota</p>
              </div>
              <div class="icon">
                <i class="ion ion-stats-bars"></i>
              </div>
              <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-danger">
              <div class="inner">
                <h3><?= number_format($total_kredit); ?></h3>

                <p>Total Penyaluran Kredit</p>
              </div>
              <div class="icon">
                <i class="ion ion-stats-bars"></i>
              </div>
              <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
        </div>
        <!-- /.row -->        
        
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->