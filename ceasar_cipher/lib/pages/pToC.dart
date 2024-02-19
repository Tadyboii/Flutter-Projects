import 'package:ceasar_cipher/services/converter.dart';
import 'package:flutter/material.dart';

class PToC extends StatefulWidget {
  const PToC({super.key});

  @override
  State<PToC> createState() => _HomeState();
}

class _HomeState extends State<PToC> {

  final p = TextEditingController();
  final key = TextEditingController();

  @override
  void dispose() {
    p.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Ceasar Cipher Encryption",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.green[900],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 40),
        child: ListView(
          children: <Widget>[
            TextFormField(
              controller: p,
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Enter something to be encrypted',
              ),
            ),
            SizedBox(height: 30),
            TextFormField(
              controller: key,
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Key',
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: (){
                setState(() {});
              },
              child: Text("Encrpyt"),
            ),
            SizedBox(height: 30),
            Text(
              "Encrypted Text",
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 12,
              ),
            ),
            SelectableText(
              Converter(input: p.text, key: key.text).toC(),
              style: TextStyle(
                fontSize: 17,
              ),
            ),
            Divider(
              color: Colors.grey[700],
            ),
          ],
        ),
      ),
    );
  }
}