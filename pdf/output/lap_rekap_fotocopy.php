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
$pdf->SetTitle('Laporan Tahunan Fotocopy');
$pdf->SetSubject('Laporan Tahunan Fotocopy');
$pdf->SetKeywords('Laporan Tahunan Fotocopy');

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
    $html = '<p style="text-align: center;"><strong>Rekapitulasi Fotokopi Lembaga
    <br>'.$bulan.' '.$thn.'</strong></p>
    <br><br>

    <table style=" border-collapse: collapse;" border="1">
    <tr>      
      <th align="center" style="width:5%;">#</th>
      <th align="center" style="width:55%;">Departement</th>      
      <th align="center" style="width:15%;">Harga (*)</th>
      <th align="center" style="width:10%;">Jumlah</th>
      <th align="center" style="width:15%;">Subtotal (**)</th>
    </tr>

    <tbody>';
    
    if(strlen($i)==1){
        $bln='0'.$i;
    } else {
        $bln=$i;
    }
    $tanggal_awal=$thn.'-'.$bln.'-01';
    $tanggal_akhir=$thn.'-'.$bln.'-31';
    $sql2 = "SELECT anggota.*,SUM(jual_detail.jumlah) AS jumlah,jual_detail.harga_jual,SUM(jual_detail.jumlah*jual_detail.harga_jual) AS total from anggota,jual,jual_detail where anggota.id_anggota=jual.id_anggota AND jual.id_jual=jual_detail.id_jual AND jual_detail.id_produk=542 AND anggota.is_individual=0 AND (tanggal_transaksi BETWEEN '$tanggal_awal' and '$tanggal_akhir') GROUP BY anggota.nama";
    $query2 = mysqli_query($koneksi, $sql2);
    $no = 0;
    $grandtotal = 0;
    $jumlah_total = 0;
    while ($kolom2 = mysqli_fetch_array($query2)) {
        $no++;
        $harga = number_format($kolom2['harga_jual']);
        $jumlah = number_format($kolom2['jumlah']);
        $subtotal = number_format($kolom2['total']);
        $grandtotal = $grandtotal + ($kolom2['total']);
        $jumlah_total = $jumlah_total+$kolom2['jumlah'];
        $html .= '
            <tr>
                <td>' . $no . '</td>
                <td>' . $kolom2['nama'].'</td>                
                <td align="right">' . $harga . '</td>
                <td align="right">' . $jumlah . '</td>
                <td align="right">' . $subtotal . '</td>
            </tr>
            ';
    }

    $html .= '<tr><td align="center" colspan="3">GRANDTOTAL</td>
            <td align="right">' . number_format($jumlah_total) . '</td>
            <td align="right">' . number_format($grandtotal) . '</td></tr>
    </tbody>
    </table>
    <br><br>
    <i>(*) Harga yang ditampilkan adalah harga mayoritas pada transaksi yang tercatat<br>
    (**) Subtotal yang ditampilkan adalah harga x jumlah riil pada transaksi yang tercatat<br>
    -- Dicetak Pada : ' . date('Y-m-d H:i:s') . ' --</i>
    <p>&nbsp;</p>';

    // output the HTML content
    $pdf->writeHTML($html, true, false, true, false, '');
}
//Close and output PDF document
$nama_file = "laporan_fotokopi_lembaga_" . date('Y_m_d_H_i_s') . ".pdf";
$pdf->Output($nama_file, 'I');


//============================================================+
// END OF FILE
//============================================================+
