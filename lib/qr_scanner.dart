import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:qrcode/result_screen.dart';
import 'package:qr_scanner_overlay/qr_scanner_overlay.dart';


const bgColor = Color(0xFF121212);

class QRScanner extends StatefulWidget {
  const QRScanner({super.key});

  @override
  State<QRScanner> createState() => _QRScannerState();
}

class _QRScannerState extends State<QRScanner> {

  bool isScanCompleted = false;
  bool isFlashon = false;
  bool isfrontCamera = false;

  void closeScreen(){
    isScanCompleted = false;
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'QR Scanner',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              letterSpacing: 1),
        ),
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Place the QR Code in the area',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Scan will start automatically',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16
                    ),
                  )
                ],
              )
            ),
            Expanded(
              flex: 4,
              child: Stack(
                children: [
                  MobileScanner(
                    onDetect: (barcodes, args) {
                      if (!isScanCompleted) {
                        String code = barcodes.rawValue ?? '---';
                        isScanCompleted = true;
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ResultScreen(
                              code: code,
                              closeScreen: closeScreen,
                            ),
                          ),
                        );
                      }
                    },
                  ),
                  QRScannerOverlay(
                    overlayColor: bgColor,
                    borderColor: Colors.blue,
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: Text(
                    'Developed by Jotham',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      letterSpacing: 1
                    ),
                  ),
              )
            ),
          ],
        ),
      ),
    );
  }
}