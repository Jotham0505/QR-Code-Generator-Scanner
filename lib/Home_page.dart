import 'package:flutter/material.dart';
import 'package:qrcode/Generate_page.dart';
import 'package:qrcode/Scan_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'QR code Scanner and Generator',
        ),
        backgroundColor: Colors.lightBlue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){
                setState(() {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => ScanQRcode(),));
                });
              },
              child: Text(
                'Scan QR code'
              ),
            ),
            SizedBox(
              height: 48,
            ),
            ElevatedButton(
              onPressed: (){
                setState(() {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => GenerateQRcode(),));
                });
              },
              child: Text('Generate QR code'),
            ),
          ],
        ),
      ),
    );
  }
}