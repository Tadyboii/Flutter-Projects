import 'package:flutter/material.dart';

class Converter {
  String key;
  String input;
  late String result;
  late List<int> toCode = input.codeUnits;

  Converter({required this.input, required this.key});

  String toC() {
    try {
      List<int> shiftedCode = toCode.map((e){
        if(e == 32){
          return e;
        }
        else if(e + int.parse(key) > 122){
          e = e + int.parse(key) - 26;
          while(e>122){
            e = e - 26;
          }
          return e;
        }
        return e + int.parse(key);
      }).toList();

      result = String.fromCharCodes(shiftedCode);
      return result;
    }catch(e){
      return "Lacking Key";
    }
  }

  String toP() {
    try {
      List<int> shiftedCode = toCode.map((e){
        if(e == 32){
          return e;
        }
        else if(e - int.parse(key) < 97){
          e = e - int.parse(key) + 26;
          while(e<97){
            e = e + 26;
          }
          return e;
        }
        return e - int.parse(key);
      }).toList();

      result = String.fromCharCodes(shiftedCode);
      return result;
    }catch(e){
      return "Lacking Key";
    }
  }
}
