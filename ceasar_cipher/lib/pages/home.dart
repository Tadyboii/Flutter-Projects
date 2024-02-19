import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final p = TextEditingController();

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
            TextButton(
              onPressed: (){
                Navigator.pushNamed(context, '/encode');
              },
              child: Text(
                "Encode",
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.white,
                ),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
              ),
            ),
            SizedBox(height: 40,),
            TextButton(
              onPressed: (){
                Navigator.pushNamed(context, '/decode');
              },
              child: Text(
                "Decode",
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.white,
                ),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
              ),
            ),
          ],
        ),
      ),
    );
  }
}