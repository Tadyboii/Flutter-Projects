import 'package:flutter/material.dart';
import 'package:ceasar_cipher/pages/home.dart';
import 'package:ceasar_cipher/pages/pToC.dart';
import 'package:ceasar_cipher/pages/cToP.dart';

void main() => runApp(MaterialApp(
    initialRoute: '/home',
    routes: {
        '/home': (context) => Home(),
        '/encode': (context) => PToC(),
        '/decode': (context) => CToP(),
    },
));


