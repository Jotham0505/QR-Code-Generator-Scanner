import 'package:flutter/material.dart';
import 'package:qrcode/qr_scanner.dart';
import 'package:qrcode/result_screen.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QR Code Generator and Scanner',
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(useMaterial3: true).copyWith(),
      home: QRScanner(),
      );
  }
}





