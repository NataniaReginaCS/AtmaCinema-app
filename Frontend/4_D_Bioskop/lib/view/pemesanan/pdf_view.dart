import 'package:flutter/material.dart';
import 'package:main/view/entity/movie.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'preview_screen.dart';
import 'package:barcode/barcode.dart';

void generatePdf(BuildContext context, Movie movie) {
  final pdf = pw.Document();

  final qrCode = Barcode.qrCode();

  pdf.addPage(
    pw.Page(
      build: (pw.Context context) {
        return pw.Container(
          padding: const pw.EdgeInsets.all(10.0),
          decoration: pw.BoxDecoration(
            color: PdfColor.fromInt(0xFFBDC6AD),
            borderRadius: pw.BorderRadius.circular(8),
          ),
          alignment: pw.Alignment.center,
          child: pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.center,
            mainAxisAlignment: pw.MainAxisAlignment.center,
            children: [
              pw.Container(
                padding: const pw.EdgeInsets.all(8),
                color: PdfColors.white,
                child: pw.BarcodeWidget(
                  barcode: qrCode,
                  data: 'Id tiket dan id user',
                  width: 200,
                  height: 200,
                ),
              ),
              pw.SizedBox(height: 20),
              pw.Text(
                movie.name,
                style: pw.TextStyle(
                  color: PdfColor.fromInt(0xFF213D29),
                  fontWeight: pw.FontWeight.bold,
                  fontSize: 22,
                ),
              ),
              pw.Divider(color: PdfColors.grey),
              pw.Text(
                'ATMA CINEMA, TIPE STUDIO, NOMOR STUDIO',
                style: pw.TextStyle(
                  color: PdfColor.fromInt(0xFF213D29),
                  fontSize: 13,
                ),
              ),
              pw.Text(
                'Senin, 09 November 2024, 18:50',
                style: pw.TextStyle(
                  color: PdfColor.fromInt(0xFF213D29),
                  fontSize: 13,
                  fontWeight: pw.FontWeight.bold,
                ),
              ),
              pw.Divider(color: PdfColors.grey),
              pw.Row(
                children: [
                  pw.Column(
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      pw.Text('KODE BOOKING'),
                      pw.Text('PASS KEY'),
                      pw.Text('(JUMLAH) TIKET'),
                    ],
                  ),
                  pw.SizedBox(width: 30),
                  pw.Column(
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      pw.Text('XXXXXXXXXXX'),
                      pw.Text('XXXXX'),
                      pw.Text(
                        'E11, E12',
                        style: pw.TextStyle(fontWeight: pw.FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
              pw.Divider(color: PdfColors.grey),
              pw.Row(
                children: [
                  pw.Column(
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      pw.Text('NOMOR ORDER'),
                      pw.SizedBox(height: 15),
                      pw.Text('KURSI REGULER'),
                      pw.Text('BIAYA LAYANAN'),
                      pw.Text('METODE PEMBAYARAN'),
                    ],
                  ),
                  pw.Spacer(),
                  pw.Column(
                    crossAxisAlignment: pw.CrossAxisAlignment.end,
                    children: [
                      pw.Text(
                        'XXXXXXXXXXXXXXX',
                        style: pw.TextStyle(fontWeight: pw.FontWeight.bold),
                      ),
                      pw.SizedBox(height: 15),
                      pw.Text(
                        'Rp30.000 X 5',
                        style: pw.TextStyle(fontWeight: pw.FontWeight.bold),
                      ),
                      pw.Text(
                        'Rp4.000 X 5',
                        style: pw.TextStyle(fontWeight: pw.FontWeight.bold),
                      ),
                      pw.Text(
                        'DANA Balance',
                        style: pw.TextStyle(fontWeight: pw.FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
              pw.Divider(color: PdfColors.grey),
              pw.Row(
                children: [
                  pw.Text('TOTAL PEMBAYARAN'),
                  pw.Spacer(),
                  pw.Text(
                    'Rp170.000',
                    style: pw.TextStyle(fontWeight: pw.FontWeight.bold),
                  ),
                ],
              ),
              pw.SizedBox(height: 12),
            ],
          ),
        );
      },
    ),
  );

  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => PreviewScreen(doc: pdf),
    ),
  );
}
