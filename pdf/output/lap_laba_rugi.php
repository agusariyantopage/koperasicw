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
$pdf->SetTitle('Laporan Laba Rugi');
$pdf->SetSubject('Laporan Laba Rugi');
$pdf->SetKeywords('Laporan Laba Rugi');

// set default header data
$pdf->SetHeaderData(PDF_HEADER_LOGO, PDF_HEADER_LOGO_WIDTH, PDF_HEADER_TITLE, PDF_HEADER_STRING);

// set header and footer fonts
$pdf->setHeaderFont(Array(PDF_FONT_NAME_MAIN, '', PDF_FONT_SIZE_MAIN));
$pdf->setFooterFont(Array(PDF_FONT_NAME_DATA, '', PDF_FONT_SIZE_DATA));

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
if (@file_exists(dirname(__FILE__).'/lang/eng.php')) {
	require_once(dirname(__FILE__).'/lang/eng.php');
	$pdf->setLanguageArray($l);
}

// ---------------------------------------------------------

// set font
$pdf->SetFont('dejavusans', '', 10);

// add a page
$pdf->AddPage();

// writeHTML($html, $ln=true, $fill=false, $reseth=false, $cell=false, $align='')
// writeHTMLCell($w, $h, $x, $y, $html='', $border=0, $ln=0, $fill=0, $reseth=true, $align='', $autopadding=true)

// create some HTML content
$html = '<p style="text-align: center;"><strong>Laporan Laba Rugi Toko</strong></p>
<table style="width:100%;">    
    <tr>
        <td>Periode</td>
        <td>: Keseluruhan </td>
        <td>Metode Bayar</td>
        <td>: Semua Metode Bayar</td>
    </tr>
</table>
<br><br>
';

$sql="select sum(hpp*jumlah) as total_hpp,sum(harga_jual*jumlah) as total_jual from jual_detail";
$query=mysqli_query($koneksi,$sql);
$data=mysqli_fetch_array($query);
$total_hpp=$data['total_hpp'];
$total_jual=$data['total_jual'];
$laba=$total_jual-$total_hpp;


$html.='
<table>
    <tr>
        <td colspan="3">PENDAPATAN</td>
    </tr>
    <tr>
        <td></td>
        <td>Pendapatan Penjualan Toko</td>
        <td align="right"> Rp. '.number_format($total_jual).'</td>
    </tr>
    <tr>
        <td></td>
        <td>Pendapatan Lain Lain</td>
        <td align="right"> Rp. 0</td>
    </tr>   
    <tr>
        <td></td>
        <td style="border-top: 1px solid #000;">Total</td>
        <td style="border-top: 1px solid #000;" align="right"> Rp. '.number_format($total_jual).'</td>
    </tr>

    <tr>
        <td colspan="3">BEBAN / BIAYA</td>
    </tr>
    <tr>
        <td></td>
        <td>Harga Pokok Penjualan</td>
        <td align="right"> Rp. '.number_format($total_hpp).'</td>
    </tr>
    <tr>
        <td></td>
        <td>Beban Gaji Karyawan</td>
        <td align="right"> Rp. 0</td>
    </tr>
    <tr>
        <td></td>
        <td>Beban Tagihan Listrik dan Air</td>
        <td align="right"> Rp. 0</td>
    </tr>
    <tr>
        <td></td>
        <td style="border-top: 1px solid #000;">Total</td>
        <td style="border-top: 1px solid #000;" align="right"> Rp. '.number_format($total_hpp).'</td>
    </tr>
    <tr>
        <td></td>
    </tr>
    <tr>
        <td style="border-top: 1px solid #000;"  colspan="2"><b>LABA / RUGI</b></td>
        <td style="border-top: 1px solid #000;" align="right"> Rp. '.number_format($total_jual-$total_hpp).'</td>
    </tr>
</table>
';

// output the HTML content
$pdf->writeHTML($html, true, false, true, false, '');

//Close and output PDF document
$pdf->Output('lap_pemjualan_umum.pdf', 'I');

//============================================================+
// END OF FILE
//============================================================+