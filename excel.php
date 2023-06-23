<?php
session_start();
require 'vendor/autoload.php';
include '../sinven-dhyana/koneksi.php';

use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

$spreadsheet = new Spreadsheet();
$sheet = $spreadsheet->getActiveSheet();
$sheet->setCellValue('A1', 'NERACA ASET');
$sheet->getStyle('A1')->getFont()->setBold(true);
$sheet->mergeCells('A1:B1');

$sheet->setCellValue('A2', '');
$waktu_unduh = date('Y-m-d H:i:s');
$waktu_unduh = str_replace(".", "", $waktu_unduh);
$sheet->setCellValue('A3', 'Unit Kerja');
$sheet->setCellValue('B3', ': Semua Unit');
$sheet->setCellValue('A4', 'Waktu Unduh');
$sheet->setCellValue('B4', ': '.$waktu_unduh);
$sheet->setCellValue('A5', '');


// Menampilkan Kategori
$grandtotal=0;
$sql="SELECT * from kategori order by kategori";
$perintah=mysqli_query($koneksi,$sql);
$nextRow = 6;
while ($kolom=mysqli_fetch_array($perintah)) { 
    $sheet->setCellValue('A'.$nextRow, $kolom['kategori']);
    $sheet->mergeCells('A'.$nextRow.':'.'B'.$nextRow);
    $sheet->getStyle('A'.$nextRow)->getFont()->setBold(true);
    $nextRow++;
    $id_kategori=$kolom['id_kategori'];
    $sql2="SELECT * from subkategori where id_kategori=$id_kategori";
    $perintah2=mysqli_query($koneksi,$sql2);
    while ($kolom2=mysqli_fetch_array($perintah2)) {
        $id_subkategori=$kolom2['id_subkategori'];
        // if(empty($_SESSION['level'])) {
            $sql3="SELECT sum(nilai_perolehan) as total from barang_detail,barang where barang_detail.id_barang=barang.id_barang and id_subkategori=$id_subkategori";
        // } else {
        //     $id_unit= $_SESSION['idunit'];
        //     $sql3="SELECT sum(nilai_perolehan) as total from barang_detail,barang where barang_detail.id_barang=barang.id_barang and id_subkategori=$id_subkategori and barang_detail.id_unitkerja=$id_unit";
        // }
        $perintah3=mysqli_query($koneksi,$sql3);
        $r3=mysqli_fetch_array($perintah3);
        $total_subkategori=$r3['total'];
        if(is_null($total_subkategori)){
            $total_subkategori=0;
        }
        $grandtotal=$grandtotal+$total_subkategori;

        $sheet->setCellValue('A'.$nextRow, $kolom2['subkategori']);
        $sheet->setCellValue('B'.$nextRow, $total_subkategori);
        $sheet->getStyle('B'.$nextRow)->getAlignment()->setHorizontal('right');
        $sheet->getStyle('B'.$nextRow)->getNumberFormat()->setFormatCode('#,##0.00');
        $nextRow++;
    }
    

}

$sheet->setCellValue('A'.$nextRow, 'GRANDTOTAL');
$sheet->setCellValue('B'.$nextRow, $grandtotal);
$sheet->getStyle('A'.$nextRow)->getFont()->setBold(true);
$sheet->getStyle('B'.$nextRow)->getFont()->setBold(true);
$sheet->getStyle('B'.$nextRow)->getAlignment()->setHorizontal('right');
$sheet->getStyle('B'.$nextRow)->getNumberFormat()->setFormatCode('#,##0.00');

// SET AUTOWIDTH COLOUMN
$sheet->getColumnDimension('A')->setAutoSize(true);
$sheet->getColumnDimension('B')->setAutoSize(true);

// FILENAME
$date = date('Y_m_d_H_i_s');
$date = str_replace(".", "", $date);
$filename = "neraca_".$date.".xlsx";

try {    
    $writer = new Xlsx($spreadsheet);
    $writer->save($filename);
    $content = file_get_contents($filename);
} catch(Exception $e) {
    exit($e->getMessage());
}

header("Content-Disposition: attachment; filename=".$filename);

unlink($filename);
exit($content);
