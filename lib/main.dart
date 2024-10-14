import 'package:flutter/material.dart';
import 'package:utilities/generate_qr_code.dart';
import 'package:utilities/language_translation.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Utilities',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: const Text('Utilities',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),backgroundColor:const Color.fromARGB(255, 34, 116, 224),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              setState(() {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const LanguageTranslationPage()));
              });
            },
            child: const Text('Translator')),
            const SizedBox(height: 5,),
            ElevatedButton(onPressed: (){
              setState(() {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const GenerateQrCode()));
              });
            },
            child: const Text('Generate QR Codes')),
          ],
        ),
      ),
    );
  }
}