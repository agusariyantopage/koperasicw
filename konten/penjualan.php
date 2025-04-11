<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0">Point Of Sales</h1>
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="#">Toko</a></li>
            <li class="breadcrumb-item"><a href="index.php?p=daftar-penjualan">Penjualan</a></li>
            <li class="breadcrumb-item active">Input Penjualan</li>
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
          <?php
          if (!empty($_GET['last'])) {
            echo "
                      <button type='button' class='btn btn-warning mb-2' data-toggle='modal' data-target='#cetakNota'>
                      <i class='fas fa-print'></i> Cetak Nota Terakhir</button>
                ";
          }
          ?>

          <div class="card">
            <div class="card-header">
              <h3>Input Transaksi Penjualan</h3>
            </div>
            <div class="card-body">

              <form action="aksi/penjualan.php" method="post">
                <input type="hidden" name="aksi" value="keranjang-tambah">
                <div class="form-row">
                  <div class="form-group col-sm-2">
                    <!-- <label for="jumlah">Jumlah Barang</label>-->
                    <input class="form-control" type="number" placeholder="Jumlah . . ." name="jumlah" value=1>
                  </div>
                  <div class="form-group col-sm-6">
                    <!-- <label for="jumlah">Barcode</label>-->
                    <input class="form-control" type="text" autofocus placeholder="Barcode . . ." name="barcode" required>
                  </div>
                  <div class="form-group col-sm-2">
                    <button type="submit" class="btn btn-primary btn-block"><i class="fas fa-plus"></i> Tambah</button>
                  </div>
                  <div class="form-group col-sm-2">
                    <button type="button" class="btn btn-warning btn-block" data-toggle="modal" data-target="#exampleModal" data-toggle='tooltip' data-placement='top' title='Klik Untuk Pencarian Produk Lanjutan . . .'><i class="fas fa-search"></i> Cari</button>
                  </div>
                </div>
              </form>
              <table class="table table-bordered table-striped" style="width:100%;">
                <thead class="thead-dark">
                  <tr>
                    <th scope="col">Hps</th>
                    <th scope="col">#</th>
                    <th scope="col">Produk</th>
                    <th scope="col">Harga</th>
                    <th scope="col">Jumlah</th>
                    <th scope="col">Subtotal</th>
                  </tr>
                </thead>
                <tbody>
                  <?php
                  $id_user = $_SESSION['backend_user_id'];
                  $sql2 = "SELECT keranjang.*,produk.nama from keranjang,produk where keranjang.id_produk=produk.id_produk and id_user=$id_user";
                  // $sql2 = "SELECT keranjang.*,produk.nama from keranjang,produk where keranjang.id_produk=produk.id_produk and id_user=$id_user and jenis='penjualan'";
                  $query2 = mysqli_query($koneksi, $sql2);
                  $no = 0;
                  $grandtotal = 0;
                  while ($kolom2 = mysqli_fetch_array($query2)) {
                    $no++;
                    $harga = number_format($kolom2['harga']);
                    $jumlah = number_format($kolom2['jumlah']);
                    $subtotal = number_format($kolom2['jumlah'] * $kolom2['harga']);
                    $grandtotal = $grandtotal + ($kolom2['jumlah'] * $kolom2['harga']);
                    $token = md5($kolom2['id_keranjang']);
                    echo "
                    <tr>
                      <td><a href='aksi/penjualan.php?aksi=keranjang-hapus&token=$token'><i class='fas fa-trash'></a></i></td>
                      <td>$no</td>
                      <td>$kolom2[nama]</td>
                      <td align=right>$harga</td>
                      <td align=right style='width:150px;'>                      
                        <form action='aksi/penjualan.php' method='post'>
                        <input type='hidden' name='aksi' value='keranjang-ubah'> 
                        <input type='hidden' name='id' value='$kolom2[id_keranjang]'> 
                        <div class='form-row'>
                              <div class='col'>
                                  <input type='number' name='qty' class='form-control form-control-sm mb-2' value='$kolom2[jumlah]'>
                              </div>
                              <div class='col'>
                                  <button class='btn btn-sm btn-warning' type='submit' data-toggle='tooltip' data-placement='top' title='Klik Untuk Mengubah Jumlah . . .'><i class='fas fa-edit'></i></button>
                              </div>
                        </div>
                        </form>
                      </td>
                      <td align=right>$subtotal</td>
                    </tr>
                    ";
                  }
                  ?>

                </tbody>
                <tfoot>
                  <td align='center' colspan="5">GRANDTOTAL</td>
                  <td align='right'>
                    <p><?= number_format($grandtotal); ?></p>
                  </td>
                </tfoot>
              </table>

            </div>
          </div>
          <?php
          if ($grandtotal > 0) {
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

<!-- Modal Cari Produk -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Pencarian Produk</h5>
        <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <table id="finditem" class="table table-bordered table-striped" style="width:100%;">
          <!-- Kepala Tabel -->
          <thead>
            <tr>
              <td>Nama Produk</td>
              <td>Barcode</td>
              <td>Harga Jual</td>
              <td>Satuan</td>
              <td>Stok</td>
              <td>Aksi</td>
            </tr>
          </thead>
          <!-- Isi Tabel -->
          <?php
          $sql = "select produk.*,produk_kategori from produk,produk_kategori where produk.id_produk_kategori=produk_kategori.id_produk_kategori order by nama";
          $query = mysqli_query($koneksi, $sql);
          while ($kolom = mysqli_fetch_array($query)) {
          ?>
            <tr>
              <td><?= $kolom['nama']; ?></td>
              <td><?= $kolom['barcode']; ?></td>
              <td><?= number_format($kolom['harga_jual']); ?></td>
              <td><?= $kolom['satuan']; ?></td>
              <td><?= $kolom['qty']; ?></td>
              <td>
                <button type="button" class="btn btn-link"><a href="aksi/penjualan.php?aksi=keranjang-tambah&token=<?= md5($kolom['id_produk']); ?>"><i class="fas fa-check"></i></a></button>
              </td>
            </tr>

          <?php
          }
          ?>
        </table>


      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>
      </div>
    </div>
  </div>
</div>

<!-- Modal Simpan Jual Kas -->
<div class="modal fade" id="simpanJualModalKas" tabindex="-1" aria-labelledby="simpanJualModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="simpanJualModalLabel">Simpan Transaksi Penjualan (Pembayaran Kas)</h5>
        <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form action="aksi/penjualan.php" method="post">
          <input type="hidden" name="aksi" value="simpan-penjualan">
          <input type="hidden" id="grandtotal" name="total" value="<?= $grandtotal; ?>">
          <input type="hidden" name="metode_bayar" value="KAS">
          <div class="form-row">
            <div class="form-group col-sm-6">
              <label for="id_anggota">Anggota</label>
              <select name="id_anggota" id="id_anggota1" class="select2bs4 form-control" required>
                <option value="">-- Pilih Anggota Koperasi --</option>
                <?php
                $sql1 = "select * from anggota order by nama";
                $query1 = mysqli_query($koneksi, $sql1);
                while ($kolom1 = mysqli_fetch_array($query1)) {
                  echo "<option value='$kolom1[id_anggota]'>$kolom1[nama]</option>";
                }

                ?>
              </select>
            </div>
            <div class="form-group col-sm-6">
              <label for="tanggal_transaksi">Tanggal Transaksi</label>
              <input type="date" name="tanggal_transaksi" value="<?php echo date('Y-m-d'); ?>" class="form-control" required>
            </div>
          </div>
          <table class="table">
            <tr>
              <td>GRANDTOTAL</td>
              <td>:</td>
              <td align="right">Rp. <?= $grandtotal; ?></td>
            </tr>
            <tr>
              <td>KUPON BELANJA</td>
              <td>:</td>
              <td align="right"><select name="kupon_belanja" id="kupon_belanja" required class="form-control">
                  <option value="0">-- Tanpa Kupon --</option>
                  <option value="100000">-- Kupon Rp. 100,000 --</option>
                </select></td>
            </tr>
            <tr>
              <td>PEMBAYARAN</td>
              <td>:</td>
              <td align="right"><input id="bayar" type="number" class="form-control text-right"></td>
            </tr>
            <tr>
              <td>KEMBALI</td>
              <td>:</td>
              <td align="right">
                <p id="kembali"></p>
              </td>
            </tr>
          </table>
      </div>
      <div class="modal-footer">
        <button type="submit" onclick="return confirm('Yakin akan diproses??');" class="btn btn-primary">Simpan</button>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>
        </form>
      </div>
    </div>
  </div>
</div>
<!-- Modal Simpan Jual Cicil -->
<div class="modal fade" id="simpanJualModalCicil" tabindex="-1" aria-labelledby="simpanJualModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="simpanJualModalLabel">Simpan Transaksi Penjualan (Pembayaran Mencicil)</h5>
        <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form action="aksi/penjualan.php" method="post">
          <input type="hidden" name="aksi" value="simpan-penjualan">
          <input type="hidden" id="grandtotal" name="total" value="<?= $grandtotal; ?>">
          <input type="hidden" name="metode_bayar" value="CICIL BAYAR">
          <div class="form-row">
            <div class="form-group col-sm-4">
              <label for="id_anggota">Anggota</label>
              <select name="id_anggota" id="id_anggota" class="select2bs4 form-control" required>
                <option value="">-- Pilih Anggota Koperasi --</option>
                <?php
                $sql1 = "select * from anggota where id_anggota!=0 order by nama";
                $query1 = mysqli_query($koneksi, $sql1);
                while ($kolom1 = mysqli_fetch_array($query1)) {
                  echo "<option value='$kolom1[id_anggota]'>$kolom1[nama]</option>";
                }

                ?>
              </select>
            </div>
            <div class="form-group col-sm-4">
              <label for="tanggal_transaksi">Tanggal Transaksi</label>
              <input type="date" id="tanggal_transaksi" name="tanggal_transaksi" value="<?php echo date('Y-m-d'); ?>" class="form-control">
            </div>
            <div class="form-group col-sm-4">
              <label for="jumlah_cicil">Jumlah Cicilan (Max 5 Bulan)</label>
              <input type="number" id="jumlah_cicil" name="jumlah_cicil" value="0" min="2" max="5" class="form-control">
            </div>
          </div>
          <table class="table" id="tabel_cicil">
            <tbody>
              <tr>
                <td>GRANDTOTAL</td>
                <td>:</td>
                <td align="right">Rp. <?= $grandtotal; ?></td>
              </tr>
              <tr>
                <td id="tanggal_bayar1">Pembayaran ke - 1 (2021-12-22)</td>
                <td>:</td>
                <td align="right"><input id="jumlah_bayar1" name="jumlah_bayar1" type="number" class="form-control text-right"></td>
                <input type="hidden" id="tanggal_jatuh_tempo[0]" name="tanggal_jatuh_tempo[0]">
                <input type="hidden" id="tanggal_jatuh_tempo[1]" name="tanggal_jatuh_tempo[1]">
                <input type="hidden" id="tanggal_jatuh_tempo[2]" name="tanggal_jatuh_tempo[2]">
                <input type="hidden" id="tanggal_jatuh_tempo[3]" name="tanggal_jatuh_tempo[3]">
                <input type="hidden" id="tanggal_jatuh_tempo[4]" name="tanggal_jatuh_tempo[4]">
              </tr>
              <tr>
                <td id="tanggal_bayar2">Pembayaran ke - 2 (2021-12-22)</td>
                <td>:</td>
                <td align="right"><input id="jumlah_bayar2" name="jumlah_bayar2" type="number" class="form-control text-right"></td>

              </tr>
              <tr>
                <td id="tanggal_bayar3">Pembayaran ke - 3 (2021-12-22)</td>
                <td>:</td>
                <td align="right"><input id="jumlah_bayar3" name="jumlah_bayar3" type="number" class="form-control text-right"></td>
              </tr>
              <tr>
                <td id="tanggal_bayar4">Pembayaran ke - 4 (2021-12-22)</td>
                <td>:</td>
                <td align="right"><input id="jumlah_bayar4" name="jumlah_bayar4" type="number" class="form-control text-right"></td>
              </tr>
              <tr>
                <td id="tanggal_bayar5">Pembayaran ke - 5 (2021-12-22)</td>
                <td>:</td>
                <td align="right"><input id="jumlah_bayar5" name="jumlah_bayar5" type="number" class="form-control text-right"></td>
              </tr>
            </tbody>
          </table>
      </div>
      <div class="modal-footer">
        <button type="submit" onclick="return confirm('Yakin akan diproses??');" class="btn btn-primary">Simpan</button>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>
        </form>
      </div>
    </div>
  </div>
</div>
<!-- Modal Simpan Jual Potong Saldo Anggota -->
<div class="modal fade" id="simpanJualModal" tabindex="-1" aria-labelledby="simpanJualModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="simpanJualModalLabel">Simpan Transaksi Penjualan</h5>
        <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form action="aksi/penjualan.php" method="post">
          <input type="hidden" name="aksi" value="simpan-penjualan">
          <input type="hidden" name="total" value="<?= $grandtotal; ?>">
          <input type="hidden" name="metode_bayar" value="POTONG SALDO ANGGOTA">
          <div class="form-row">

            <div class="form-group col-sm-6">
              <label for="id_anggota">Anggota</label>
              <select name="id_anggota" id="id_anggota2" class="select2bs4 form-control" required>
                <option value="">-- Pilih Anggota Koperasi --</option>
                <?php
                $sql1 = "select * from anggota where id_anggota!=0 order by nama";
                $query1 = mysqli_query($koneksi, $sql1);
                while ($kolom1 = mysqli_fetch_array($query1)) {
                  echo "<option value='$kolom1[id_anggota]'>$kolom1[nama]</option>";
                }

                ?>
              </select>
            </div>
            <div class="form-group col-sm-6">
              <label for="tanggal_transaksi">Tanggal Transaksi</label>
              <input type="date" name="tanggal_transaksi" value="<?php echo date('Y-m-d'); ?>" class="form-control">
            </div>
          </div>
          <?php if ($grandtotal >= 100000) { ?>
            <div class="form-row">
              <div class="form-group col-sm-12">
                <label for="">Kupon Belanja</label>
                <select name="kupon_belanja" id="kupon_belanja" required class="form-control">
                  <option value="0">-- Tanpa Kupon --</option>
                  <option value="100000">-- Kupon Rp. 100,000 --</option>
                </select>
              </div>
            </div>
          <?php } else { ?>
            <input type="hidden" name="kupon_belanja" value="0">
          <?php } ?>

      </div>
      <div class="modal-footer">
        <button type="submit" onclick="return confirm('Yakin akan diproses??');" class="btn btn-primary">Simpan</button>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>
        </form>
      </div>
    </div>
  </div>
</div>
<!-- Modal Cetak Nota -->
<div class="modal fade" id="cetakNota" tabindex="-1" aria-labelledby="cetakNotaLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="cetakNotaLabel">Cetak Nota Transaksi</h5>
        <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <?php
        if (!empty($_GET['last'])) {
          $url_struk = $BASE_URL . "pdf/output/struk.php?token=" . $_GET['last'];
        }
        ?>
        <div class="embed-responsive embed-responsive-1by1">
          <iframe src="<?= $url_struk; ?>" class="embed-responsive-item"></iframe>
        </div>

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>
      </div>
    </div>
  </div>
</div>