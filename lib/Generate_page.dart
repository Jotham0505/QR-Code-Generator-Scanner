import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class GenerateQRcode extends StatefulWidget {
  const GenerateQRcode({super.key});

  @override
  State<GenerateQRcode> createState() => _GenerateQRcodeState();
}

class _GenerateQRcodeState extends State<GenerateQRcode> {
  TextEditingController urlController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Generate QR code'
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if(urlController.text.isNotEmpty)
              QrImageView(data: urlController.text, size: 200,),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: TextField(
                  controller: urlController,
                  decoration: InputDecoration(
                    hintText: 'Enter your data',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)
                    ),
                    labelText: 'Enter your data'
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: (){
                  setState(() {
                    
                  });
                },
                child: Text(
                  'Generate QR code'
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}