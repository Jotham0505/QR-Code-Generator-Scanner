import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:qr_flutter/qr_flutter.dart';

class ScannerController {
  get mounted => null;
  
  set qrResult(String qrResult) {}

  

  
  
  scanQR() async{
    try{
      final qrCode = await FlutterBarcodeScanner.scanBarcode(
        '#ff6666',
        'Cancel',
        true,
        ScanMode.QR,
      );
      if(mounted!) return;
      setState(){
        this.qrResult = qrCode.toString();
      }


    } on PlatformException{
      var qrResult =  'Fail to read the Qr code';
    }
  }
}