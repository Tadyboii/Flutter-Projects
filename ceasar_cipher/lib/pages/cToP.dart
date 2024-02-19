import 'package:ceasar_cipher/services/converter.dart';
import 'package:flutter/material.dart';

class CToP extends StatefulWidget {
  const CToP({super.key});

  @override
  State<CToP> createState() => _HomeState();
}

class _HomeState extends State<CToP> {

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
                labelText: 'Enter something to be Decoded',
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
              child: Text("Decode"),
            ),
            SizedBox(height: 30),
            Text(
              "Decoded Text",
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 12,
              ),
            ),
            SelectableText(
              Converter(input: p.text, key: key.text).toP(),
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