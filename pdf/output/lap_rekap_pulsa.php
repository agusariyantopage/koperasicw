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
$pdf = new TCPDF('L', PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);

// set document information
$pdf->SetCreator(PDF_CREATOR);
$pdf->SetAuthor('Agus Ariyanto');
$pdf->SetTitle('Laporan Pendapatan Pulsa');
$pdf->SetSubject('Laporan Pendapatan Pulsa');
$pdf->SetKeywords('Laporan Pendapatan Pulsa');

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
$thn=$_GET['tahun'];


for ($i=1;$i<=12;$i++) {
    $pdf->AddPage();
    if($i==1){
        $bulan="Januari";
    }
    else if($i==2){
        $bulan="Februari";
    }
    else if($i==3){
        $bulan="Maret";
    }
    else if($i==4){
        $bulan="April";
    }
    else if($i==5){
        $bulan="Mei";
    }
    else if($i==6){
        $bulan="Juni";
    }
    else if($i==7){
        $bulan="Juli";
    }
    else if($i==8){
        $bulan="Agustus";
    }
    else if($i==9){
        $bulan="September";
    }
    else if($i==10){
        $bulan="Oktober";
    }
    else if($i==11){
        $bulan="November";
    }
    else if($i==12){
        $bulan="Desember";
    }


    // writeHTML($html, $ln=true, $fill=false, $reseth=false, $cell=false, $align='')
    // writeHTMLCell($w, $h, $x, $y, $html='', $border=0, $ln=0, $fill=0, $reseth=true, $align='', $autopadding=true)

    // create some HTML content
    $html = '<p style="text-align: center;"><strong>Rekapitulasi Pendapatan Pulsa & Token
    <br>'.$bulan.' '.$thn.'</strong></p>
    <br><br>

    <table style=" border-collapse: collapse;" border="1">
    <tr>      
      <th align="center" style="width:5%;">#</th>
      <th align="center" style="width:35%;">Keterangan</th>
      <th align="center" style="width:10%;">Tanggal Trx</th>
      <th align="center" style="width:10%;">Harga Beli</th>
      <th align="center" style="width:10%;">Harga Jual</th>
      <th align="center" style="width:10%;">Jumlah</th>
      <th align="center" style="width:10%;">Subtotal</th>
      <th align="center" style="width:10%;">Profit</th>
    </tr>

    <tbody>';
    
    if(strlen($i)==1){
        $bln='0'.$i;
    } else {
        $bln=$i;
    }
    $tanggal_awal=$thn.'-'.$bln.'-01';
    $tanggal_akhir=$thn.'-'.$bln.'-31';
    $sql2 = "SELECT jual_detail.*,produk.nama,jual.id_anggota,jual.tanggal_transaksi from jual_detail,produk,jual,produk_kategori where jual_detail.id_produk=produk.id_produk and jual_detail.id_jual=jual.id_jual and produk.id_produk_kategori=produk_kategori.id_produk_kategori and produk.id_produk_kategori=27 and (tanggal_transaksi BETWEEN '$tanggal_awal' and '$tanggal_akhir') ORDER BY tanggal_transaksi";
    $query2 = mysqli_query($koneksi, $sql2);
    $no = 0;
    $grandtotal = 0;
    $jumlah_total = 0;
    $total_profit=0;
    while ($kolom2 = mysqli_fetch_array($query2)) {
        $no++;
        $harga = number_format($kolom2['harga_jual']);
        $jumlah = number_format($kolom2['jumlah']);
        $subtotal = number_format($kolom2['jumlah'] * $kolom2['harga_jual']);
        $profit = $kolom2['harga_jual'] - $kolom2['hpp'];
        $total_profit=$total_profit+$profit;
        $grandtotal = $grandtotal + ($kolom2['jumlah'] * $kolom2['harga_jual']);
        $jumlah_total = $jumlah_total+$kolom2['jumlah'];
        $html .= '
            <tr>
            <td>' . $no . '</td>
            <td>' . $kolom2['nama'] . ' #'.$kolom2['id_jual'].'</td>
            <td align="center">' . date('d-m-Y',strtotime($kolom2['tanggal_transaksi'])) . '</td>
            <td align="right">' . number_format($kolom2['hpp']) . '</td>
            <td align="right">' . $harga . '</td>
            <td align="right">' . $jumlah . '</td>
            <td align="right">' . $subtotal . '</td>
            <td align="right">' . number_format($profit) . '</td>
            </tr>
            ';
    }

    $html .= '<tr><td align="center" colspan="5">GRANDTOTAL</td>
            
            <td align="right">' . number_format($jumlah_total) . '</td>
            <td align="right">' . number_format($grandtotal) . '</td>
            <td align="right">' . number_format($total_profit) . '</td></tr>
    </tbody>
    </table>
    <br><br>
    <i>
    -- Dicetak Pada : ' . date('Y-m-d H:i:s') . ' --</i>
    <p>&nbsp;</p>';

    // output the HTML content
    $pdf->writeHTML($html, true, false, true, false, '');
}
//Close and output PDF document
$nama_file = "laporan_pendapatan_pulsa_" . date('Y_m_d_H_i_s') . ".pdf";
$pdf->Output($nama_file, 'I');


//============================================================+
// END OF FILE
//============================================================+
