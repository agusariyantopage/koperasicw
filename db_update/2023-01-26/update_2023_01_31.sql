CREATE TABLE pinjaman_mutasi (
  id_pinjaman_mutasi int(10) NOT NULL,
  id_pinjaman int(10) NOT NULL,
  tanggal_transaksi date NOT NULL,
  jenis_transaksi enum('Setoran','Tarikan','Bunga','Biaya') NOT NULL,
  jumlah decimal(17,2) NOT NULL,
  saldo decimal(17,2) NOT NULL DEFAULT 0.00,
  keterangan text NOT NULL,
  id_user int(11) NOT NULL,
  dibuat_pada datetime NOT NULL DEFAULT current_timestamp(),
  diubah_pada datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;