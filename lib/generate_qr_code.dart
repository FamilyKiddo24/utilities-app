import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class GenerateQrCode extends StatefulWidget {
  const GenerateQrCode({super.key});

  @override
  State<GenerateQrCode> createState() => _GenerateQrCodeState();
}

class _GenerateQrCodeState extends State<GenerateQrCode> {
  TextEditingController urlController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Generate QR Code'),),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if(urlController.text.isNotEmpty)
                QrImageView(data: urlController.text, size: 200,),
              const SizedBox(height: 10,),
              Container(
                padding: const EdgeInsets.only(left: 10,right: 10),
                child: TextField(
                  controller: urlController,
                  decoration: InputDecoration(
                    hintText: 'Enter the url',
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                    labelText: 'Enter the url'
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              ElevatedButton(onPressed: (){setState(() {
                
              });}, child: const Text('Generate QR Code')),
            ],
          ),
        ),
      ),
    );
  }
}