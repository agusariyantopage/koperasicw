<?php
session_start();
include '../../koneksi.php';

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
$pdf->SetTitle('Laporan Penjualan - Umum');
$pdf->SetSubject('Laporan Penjualan');
$pdf->SetKeywords('Laporan Penjualan');

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
// writeHTML($html, $ln=true, $fill=false, $reseth=false, $cell=false, $align='')
// writeHTMLCell($w, $h, $x, $y, $html='', $border=0, $ln=0, $fill=0, $reseth=true, $align='', $autopadding=true)

// create some HTML content
$html = '<p style="text-align: center;"><strong>Laporan Mutasi Kas Toko</strong></p>
<table style="width:100%;">    
    <tr>
        <td style="width:10%;">Periode</td>
        <td style="width:50%;">: ' . $tanggal_awal . ' S/D ' . $tanggal_akhir . ' </td>
        <td style="width:15%;">Metode Bayar</td>
        <td style="width:25%;">: KAS</td>
    </tr>
</table>
<br><br>
<table style=" border-collapse: collapse;" border="1">
    <tr>      
      <th align="center" style="width:5%;">#</th>
      <th align="center" style="width:10%;">ID Trx</th>
      <th align="center" style="width:15%;">Tanggal Transaksi</th>
      <th align="center" style="width:40%;">Keterangan Transaksi</th>
      <th align="center" style="width:15%;">Total</th>
      <th align="center" style="width:15%;">Saldo</th>
    </tr>

<tbody>';

// Mencari Nilai Saldo Awal
$sql2="select sum(jual.total) as total_awal,anggota.nama as napel,user.nama as petugas from jual,anggota,user where jual.id_anggota=anggota.id_anggota and jual.id_user=user.id_user and metode_bayar='KAS' and (tanggal_transaksi < '$tanggal_awal')";
$query2=mysqli_query($koneksi,$sql2);
$kolom2=mysqli_fetch_array($query2);
$total_awal=$kolom2['total_awal'];
$sql3="select sum(akun_mutasi.jumlah) as keluar_awal from akun_mutasi where akun='KAS' and (tanggal < '$tanggal_awal')";
$query3=mysqli_query($koneksi,$sql3);
$kolom3=mysqli_fetch_array($query3);
$keluar_awal=$kolom3['keluar_awal'];
$grandtotal = $total_awal+$keluar_awal;
$html.='
    <tr>
        <td>1</td>
        <td>AUTO</td>
        <td>' . $tanggal_awal . '</td>
        <td>SALDO AWAL PINDAHAN</td>
        <td align="right">' . number_format($grandtotal) . '</td>
        <td align="right">' . number_format($grandtotal) . '</td>
    </tr>
';

//$sql1 = "select jual.*,nama from jual,anggota where jual.id_anggota=anggota.id_anggota and (tanggal_transaksi BETWEEN '$tanggal_awal' and '$tanggal_akhir')";
$sql1 = "select jual.id_jual,jual.tanggal_transaksi,jual.metode_bayar,jual.total,anggota.nama as napel,user.nama as petugas from jual,anggota,user where jual.id_anggota=anggota.id_anggota and jual.id_user=user.id_user and metode_bayar='KAS' and (tanggal_transaksi BETWEEN '$tanggal_awal' and '$tanggal_akhir') UNION ALL select akun_mutasi.id_akun_mutasi,akun_mutasi.tanggal,akun_mutasi.akun,akun_mutasi.jumlah,akun_mutasi.keterangan,akun_mutasi.dibuat_pada from akun_mutasi where akun='KAS' and (tanggal BETWEEN '$tanggal_awal' and '$tanggal_akhir') order by tanggal_transaksi;";
$query1 = mysqli_query($koneksi, $sql1);

$no = 1;

while ($kolom1 = mysqli_fetch_array($query1)) {
    $no++;
    $grandtotal = $grandtotal + $kolom1['total'];
    $html .= '
        <tr>
            <td>' . $no . '</td>
            <td>' . $kolom1['id_jual'] . '</td>
            <td>' . $kolom1['tanggal_transaksi'] . '</td>
            <td>' . $kolom1['napel'] . '</td>
            <td align="right">' . number_format($kolom1['total']) . '</td>
            <td align="right">' . number_format($grandtotal) . '</td>
        </tr>
        ';
}

$html .= '<tr><td align="center" colspan="5">SALDO AKHIR KAS</td>
        <td align="right">' . number_format($grandtotal) . '</td></tr>
</tbody>
</table>
<br><br>
<i>-- Dicetak Pada : ' . date('Y-m-d H:i:s') . ' --</i>
<p>&nbsp;</p>';

// output the HTML content
$pdf->writeHTML($html, true, false, true, false, '');

//Close and output PDF document
$nama_file="laporan_penjualan_umum_".date('Y_m_d_H_i_s').".pdf";
$pdf->Output($nama_file, 'I');

//============================================================+
// END OF FILE
//============================================================+
