<?php
session_start();
include '../../koneksi.php';
// setlocale (LC_ALL, 'Indonesian');
// setlocale (LC_TIME, 'id_ID');
setlocale (LC_TIME, 'id_ID');
//============================================================+
// File name   : example_006.php
// Begin       : 2008-03-04
// Last Update : 2013-05-14
//
// Description : Example 006 for TCPDF class
//               WriteHTML and RTL support
//
// Author: Nicola Asuni
//
// (c) Copyright:
//               Nicola Asuni
//               Tecnick.com LTD
//               www.tecnick.com
//               info@tecnick.com
//============================================================+

/**
 * Creates an example PDF TEST document using TCPDF
 * @package com.tecnick.tcpdf
 * @abstract TCPDF - Example: WriteHTML and RTL support
 * @author Nicola Asuni
 * @since 2008-03-04
 */

// Include the main TCPDF library (search for installation path).
require_once('tcpdf_include.php');

// create new PDF document
$pdf = new TCPDF('P', PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);

// set document information
$pdf->SetCreator(PDF_CREATOR);
$pdf->SetAuthor('Agus Ariyanto');
$pdf->SetTitle('Laporan Mutasi Simpanan');
$pdf->SetSubject('Laporan Mutasi Simpanan');
$pdf->SetKeywords('Laporan Mutasi Simpanan');

// set default header data
$pdf->SetHeaderData(PDF_HEADER_LOGO, PDF_HEADER_LOGO_WIDTH, PDF_HEADER_TITLE, PDF_HEADER_STRING);

// set header and footer fonts
$pdf->setHeaderFont(array(PDF_FONT_NAME_MAIN, '', PDF_FONT_SIZE_MAIN));
$pdf->setFooterFont(array(PDF_FONT_NAME_DATA, '', PDF_FONT_SIZE_DATA));

// set default monospaced font
$pdf->SetDefaultMonospacedFont(PDF_FONT_MONOSPACED);

// set margins
$pdf->SetMargins(PDF_MARGIN_LEFT, PDF_MARGIN_TOP, PDF_MARGIN_RIGHT);
$pdf->SetHeaderMargin(PDF_MARGIN_HEADER);
$pdf->SetFooterMargin(PDF_MARGIN_FOOTER);

// set auto page breaks
$pdf->SetAutoPageBreak(TRUE, PDF_MARGIN_BOTTOM);

// set image scale factor
$pdf->setImageScale(PDF_IMAGE_SCALE_RATIO);

// set some language-dependent strings (optional)
if (@file_exists(dirname(__FILE__) . '/lang/eng.php')) {
    require_once(dirname(__FILE__) . '/lang/eng.php');
    $pdf->setLanguageArray($l);
}

// ---------------------------------------------------------

// set font
$pdf->SetFont('dejavusans', '', 10);

// add a page
$pdf->AddPage();
$tanggal_awal = $_GET['tanggal_awal'];
$tanggal_akhir = $_GET['tanggal_akhir'];
$id_simpanan = $_GET['id_simpanan'];

$sql00 = "SELECT simpanan.*,anggota.nama as napel,user.nama as petugas,simpanan_jenis.jenis_simpanan,simpanan_jenis.kode from simpanan,anggota,user,simpanan_jenis where simpanan.id_anggota=anggota.id_anggota and simpanan.id_user=user.id_user and simpanan.id_simpanan_jenis=simpanan_jenis.id_simpanan_jenis AND simpanan.id_simpanan=$id_simpanan";
$query00 = mysqli_query($koneksi, $sql00);
$info_umum = mysqli_fetch_array($query00);
// writeHTML($html, $ln=true, $fill=false, $reseth=false, $cell=false, $align='')
// writeHTMLCell($w, $h, $x, $y, $html='', $border=0, $ln=0, $fill=0, $reseth=true, $align='', $autopadding=true)

// create some HTML content
$html = '<p style="text-align: center;"><strong>Laporan Mutasi Simpanan</strong></p>
<table style="width:100%; border-collapse: collapse;" border="1">
    <tr>
        <td style="width:50%;">
        &nbsp;<br>
         #'.$info_umum['id_simpanan'].'-'. $info_umum['kode'].' ('.$info_umum['jenis_simpanan'].')<br>
         '.$info_umum['napel'].'<br>
        </td>
        <td style="width:50%;">
            &nbsp;<br>
            -- Cetak Mutasi Periode --<br>
            ' . date("d-F-Y", strtotime($tanggal_awal)) . ' S/D ' . date("d-F-Y", strtotime($tanggal_akhir)) . '
        </td>
    </tr>
</table>

<br><br>
<table style="width:100%; border-collapse: collapse;" border="1">
    <tr>      
      <th align="center" style="width:5%;">#</th>
      <th align="center" style="width:15%;">Tanggal Transaksi</th>
      <th align="center" style="width:15%;">Jenis Transaksi</th>
      <th align="center" style="width:35%;">Keterangan Transaksi</th>
      <th align="center" style="width:15%;">Jumlah</th>
      <th align="center" style="width:15%;">Saldo</th>
    </tr>

<tbody>';

// Mencari Nilai Saldo Awal
$sql2="SELECT sum(jumlah) AS total_awal from simpanan_mutasi where id_simpanan=$id_simpanan AND (tanggal_transaksi < '$tanggal_awal')";
$query2=mysqli_query($koneksi,$sql2);
$kolom2=mysqli_fetch_array($query2);
$total_awal=$kolom2['total_awal'];
$grandtotal = $total_awal;
$html.='
    <tr>
        <td>1</td>
        <td>' .  date("d-m-Y", strtotime($tanggal_awal)) . '</td>
        <td>Saldo Awal</td>
        <td>-</td>
        <td align="right">' . number_format($grandtotal) . '</td>
        <td align="right">' . number_format($grandtotal) . '</td>
    </tr>
';

//$sql1 = "select jual.*,nama from jual,anggota where jual.id_anggota=anggota.id_anggota and (tanggal_transaksi BETWEEN '$tanggal_awal' and '$tanggal_akhir')";
$sql1 = "SELECT * from simpanan_mutasi where id_simpanan=$id_simpanan AND (tanggal_transaksi BETWEEN '$tanggal_awal' and '$tanggal_akhir') ORDER BY tanggal_transaksi";
$query1 = mysqli_query($koneksi, $sql1);

$no = 1;

while ($kolom1 = mysqli_fetch_array($query1)) {
    $no++;
    $grandtotal = $grandtotal + $kolom1['jumlah'];
    $html .= '
        <tr>
            <td>' . $no . '</td>
            <td>' . date("d-m-Y", strtotime($kolom1['tanggal_transaksi'])) . '</td>
            <td>' . $kolom1['jenis_transaksi'] . '</td>
            <td>' . $kolom1['keterangan'] . '</td>
            <td align="right">' . number_format($kolom1['jumlah']) . '</td>
            <td align="right">' . number_format($grandtotal) . '</td>
        </tr>
        ';
}

$html .= '<tr><td align="center" colspan="5">Saldo Akhir</td>
        <td align="right">' . number_format($grandtotal) . '</td></tr>
</tbody>
</table>
<br><br>
<i>-- Dicetak Pada : ' . date('Y-m-d H:i:s') . ' --</i>
<p>&nbsp;</p>';

// output the HTML content
$pdf->writeHTML($html, true, false, true, false, '');

//Close and output PDF document
$nama_file="laporan_mutasi_simpanan_".date('Y_m_d_H_i_s').".pdf";
$pdf->Output($nama_file, 'I');

//============================================================+
// END OF FILE
//============================================================+
