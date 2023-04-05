<?php
include "../koneksi.php";
$id_anggota = $_POST['id_anggota'];

$sql_anggota = "SELECT * FROM anggota WHERE id_anggota=$id_anggota";
$query_anggota = mysqli_query($koneksi, $sql_anggota);
$kolom = mysqli_fetch_array($query_anggota);


?>

<form method="post" enctype="multipart/form-data" action="aksi/anggota.php">
    <input type="hidden" name="aksi" value="ubah">
    <div>
        <label for="id_anggota">ID Anggota</label>
        <input type="text" class="form-control" readonly name="id_anggota" value="<?= $kolom['id_anggota']; ?>">
    </div>
    <div>
        <label for="no_identitas">Nomer Identitas</label>
        <input type="text" name="no_identitas" class="form-control" value="<?= $kolom['no_identitas']; ?>">
    </div>
    <div>
        <label for="tanggal_bergabung">Tanggal Bergabung</label>
        <input type="date" name="tanggal_bergabung" class="form-control" value="<?= $kolom['tanggal_bergabung']; ?>">
    </div>
    <div>
        <label for="nama">Nama</label>
        <input type="text" name="nama" class="form-control" value="<?= $kolom['nama']; ?>">
    </div>
    <div>
        <label for="alamat">Alamat</label>
        <textarea name="alamat" id="alamat" class="form-control" rows="3"><?= $kolom['alamat']; ?></textarea>
    </div>
    <div>
        <label for="telepon">Nomor Telepon</label>
        <input type="text" name="telepon" class="form-control" value="<?= $kolom['telepon']; ?>">
    </div>
    <div>
        <label for="email">Email</label>
        <input type="email" name="email" class="form-control" value="<?= $kolom['email']; ?>">
    </div>
    <div>
        <label for="is_individual">Tipe Keanggotaan</label>
        <select name="is_individual" class="form-control" required>
            <?php
            if ($kolom['is_individual'] == 1) {
                echo "
                  <option value='1'>Individual</option>
                  <option value='0'>Lembaga / Unit Kerja</option>
                ";
            } else {
                echo "
                  <option value='0'>Lembaga / Unit Kerja</option>
                  <option value='1'>Individual</option>
                 ";
            }

            ?>


        </select>
    </div>
    <div>
        <label for="belanja_wajib">Belanja Wajib</label>
        <input type="text" name="belanja_wajib" class="form-control" value="<?= $kolom['belanja_wajib']; ?>">
    </div>
    <div>
        <label for="potongan_simpanan_wajib">Potongan Simpanan Wajib</label>
        <input type="text" name="potongan_simpanan_wajib" class="form-control" value="<?= $kolom['potongan_simpanan_wajib']; ?>">
    </div>
    <div>
        <label for="potongan_simpanan_suka_rela">Potongan Simpanan Sukarela</label>
        <input type="text" name="potongan_simpanan_suka_rela" class="form-control" value="<?= $kolom['potongan_simpanan_suka_rela']; ?>">
    </div>
    <div>
        <label for="potongan_simpanan_penyertaan">Potongan Simpanan Penyertaan</label>
        <input type="text" name="potongan_simpanan_penyertaan" class="form-control" value="<?= $kolom['potongan_simpanan_penyertaan']; ?>">
    </div>
    <div>
        <label for="potongan_suka_duka">Potongan Simpanan Suka Duka</label>
        <input type="text" name="potongan_suka_duka" class="form-control" value="<?= $kolom['potongan_suka_duka']; ?>">
    </div>
    <button type="submit" class="btn btn-primary btn-block mt-2">Ubah</button>
</form>