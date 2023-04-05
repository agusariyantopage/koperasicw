 <?php
  $token_id = $_GET['token'];
  $sql1 = "select * from periode_pembukuan where md5(id_periode)='$token_id'";
  $query1 = mysqli_query($koneksi, $sql1);
  $kolom1 = mysqli_fetch_array($query1);
  $tahun = $kolom1['tahun'];
  $bulan = $kolom1['bulan'];
  $kode = $kolom1['kode'];
  $tanggal_mulai = $kolom1['tanggal_mulai'];
  $tanggal_selesai = $kolom1['tanggal_selesai'];

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

               <div class="table-responsive">
                 <table id="polos" class="table table-bordered table-striped table-sm">
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
                       <td>Pot. S. Wajib</td>
                       <td>Pot. S. Penyertaan</td>
                       <td>Pot. Kredit</td>
                       <td>Pot. Sididik</td>
                       <td>Pot. TAHARA</td>
                       <td>Pot. Sukarela</td>
                       <td>Pot. Sukaduka</td>
                       <td>Pot. Lain-Lain</td>
                       <td>Pot. Kasbon</td>
                       <td>Total Potongan Koperasi</td>
                     </tr>
                   </thead>
                   <!-- Isi Tabel -->
                   <?php
                    $sql = "SELECT id_anggota as ida,nama,alamat,is_individual,saldo,belanja_wajib,potongan_simpanan_wajib,potongan_simpanan_suka_rela,potongan_simpanan_penyertaan,potongan_suka_duka,
                    (select sum(total) from jual where id_anggota=ida and metode_bayar='POTONG SALDO ANGGOTA' and (tanggal_transaksi>='$tanggal_mulai' and tanggal_transaksi<='$tanggal_selesai')) as total_belanja,
                    (select SUM(jual_cicil.jumlah_tagihan) from jual_cicil,jual where jual_cicil.id_jual=jual.id_jual and jual.id_anggota=ida and (tanggal_jatuh_tempo>='$tanggal_mulai' and tanggal_jatuh_tempo<='$tanggal_selesai')) as total_belanja_cicil,
                    (SELECT SUM(pinjaman_detail.realisasi_pembayaran+pinjaman_detail.bunga_nominal) FROM pinjaman_detail,pinjaman WHERE pinjaman_detail.tanggal_jatuh_tempo <= '$tanggal_selesai' AND pinjaman_detail.id_pinjaman=pinjaman.id_pinjaman AND pinjaman_detail.auto_pay=1 AND pinjaman_detail.proses_auto_pay=0 AND pinjaman.id_anggota=ida) AS potongan_kredit,
                    (SELECT SUM(simpanan_detail.realisasi_pembayaran) FROM simpanan_detail,simpanan WHERE simpanan_detail.tanggal_jatuh_tempo <= '$tanggal_selesai' AND simpanan_detail.id_simpanan=simpanan.id_simpanan AND simpanan_detail.auto_pay=1 AND simpanan_detail.proses_auto_pay=0 AND simpanan.id_simpanan_jenis=1 AND simpanan.id_anggota=ida) AS potongan_sididik,
                    (SELECT SUM(simpanan_detail.realisasi_pembayaran) FROM simpanan_detail,simpanan WHERE simpanan_detail.tanggal_jatuh_tempo <= '$tanggal_selesai' AND simpanan_detail.id_simpanan=simpanan.id_simpanan AND simpanan_detail.auto_pay=1 AND simpanan_detail.proses_auto_pay=0 AND simpanan.id_simpanan_jenis=2 AND simpanan.id_anggota=ida) AS potongan_tahara,
                    (SELECT SUM(jumlah) FROM potongan_lain_lain WHERE id_anggota=ida AND tanggal_transaksi BETWEEN '$tanggal_mulai' AND '$tanggal_selesai') AS potongan_lain_lain,
                    (SELECT SUM(jumlah) FROM potongan_kasbon WHERE id_anggota=ida AND tanggal_transaksi BETWEEN '$tanggal_mulai' AND '$tanggal_selesai') AS potongan_kasbon  
                    from anggota where is_individual=1 and id_anggota!=1 order by nama";
                    //echo $sql;
                    $query = mysqli_query($koneksi, $sql);
                    while ($kolom = mysqli_fetch_array($query)) {
                      $potongan_simpanan_wajib= $kolom['potongan_simpanan_wajib'];
                      $potongan_simpanan_suka_rela= $kolom['potongan_simpanan_suka_rela'];
                      $potongan_simpanan_penyertaan= $kolom['potongan_simpanan_penyertaan'];
                      $potongan_suka_duka= $kolom['potongan_suka_duka'];
                      $potongan_kredit = $kolom['potongan_kredit'];
                      $potongan_sididik = $kolom['potongan_sididik'];
                      $potongan_tahara = $kolom['potongan_tahara'];
                      $potongan_lain_lain = $kolom['potongan_lain_lain'];
                      $potongan_kasbon = $kolom['potongan_kasbon'];
                      $belanja_wajib = $kolom['belanja_wajib'];
                      $total_belanja = $kolom['total_belanja'] + $kolom['total_belanja_cicil'];
                      //$saldo_awal=$kolom['saldo']+$total_belanja;
                      $saldo_awal = $kolom['saldo'] + $kolom['total_belanja'];
                      $sisa_saldo_belanja = $saldo_awal + $belanja_wajib - $total_belanja;
                      if ($sisa_saldo_belanja >= 0) {
                        $potongan_toko = $kolom['belanja_wajib'];
                      } else {
                        $potongan_toko = (-1 * $sisa_saldo_belanja) + $kolom['belanja_wajib'];
                      }

                      // $total_potongan = $potongan_toko;
                      $total_potongan = $potongan_toko+$potongan_simpanan_wajib+$potongan_simpanan_suka_rela+$potongan_simpanan_penyertaan+$potongan_suka_duka+$potongan_kredit+$potongan_sididik+$potongan_tahara+$potongan_lain_lain+$potongan_kasbon;

                    ?>
                     <tr>
                       <td><?= $kolom['nama']; ?></td>
                       <td><?= $kolom['alamat']; ?></td>
                       <td><?= $kolom['ida']; ?></td>
                       <td align="right"><?= number_format($saldo_awal); ?></td>
                       <td align="right"><?= number_format($kolom['belanja_wajib']); ?></td>
                       <td align="right"><?= number_format($total_belanja); ?></td>
                       <td align="right"><?= number_format($sisa_saldo_belanja); ?></td>                       
                       <td align="right"><?= number_format($potongan_simpanan_wajib); ?></td>
                       <td align="right"><?= number_format($potongan_simpanan_penyertaan); ?></td>
                       <td align="right"><?= number_format($potongan_kredit); ?></td>
                       <td align="right"><?= number_format($potongan_sididik); ?></td>
                       <td align="right"><?= number_format($potongan_tahara); ?></td>                       
                       <td align="right"><?= number_format($potongan_simpanan_suka_rela); ?></td>
                       <td align="right"><?= number_format($potongan_suka_duka); ?></td>
                       <td align="right"><?= number_format($potongan_lain_lain); ?></td>
                       <td align="right"><?= number_format($potongan_kasbon); ?></td>
                       <td align="right"><?= number_format($total_potongan); ?></td>
                     </tr>

                   <?php
                    }
                    ?>
                 </table>
               </div>
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