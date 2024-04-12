import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:qr_flutter/qr_flutter.dart';

class ResultScreen extends StatelessWidget {

  final String code;
  final Function() closeScreen; 
  const ResultScreen({super.key, required this.code, required this.closeScreen});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            closeScreen();
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: Colors.white,),
        ),
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
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            QrImageView(
              data: code,
              size: 150,
              version: QrVersions.auto,
            ),
            Text(
              'Scanned Result',
              style: TextStyle(
                fontSize: 16,
                  color: Colors.white38,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '$code',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                  color: Colors.white70,
                  letterSpacing: 1),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width-100,
              height: 48,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                ),
                onPressed: (){
                  Clipboard.setData(ClipboardData(text: code));
                },
                child: Center(
                  child: Text(
                    'Copy',
                    style: TextStyle(
                        fontSize: 16, color: Colors.white70, letterSpacing: 1),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}