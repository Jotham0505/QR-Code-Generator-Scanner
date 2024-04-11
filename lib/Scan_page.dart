import 'package:flutter/material.dart';
import 'package:qrcode/controller/Scanner_controller.dart';

class ScanQRcode extends StatefulWidget {
  const ScanQRcode({super.key});

  @override
  State<ScanQRcode> createState() => _ScanQRcodeState();
}

class _ScanQRcodeState extends State<ScanQRcode> {

  String qrResult = 'Scanned Data will appear here';
  ScannerController scannerController = ScannerController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'QR code scanner',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              qrResult,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: scannerController.scanQR(),
              child: Text(
                'Scan'
              ),
            ),
          ],
        ),
      ),
    );
  }
}