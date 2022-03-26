// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
import 'dart:math' as math;

Future<List<dynamic>> jsonCopy() async {
// Import json to local State
  var x = <dynamic>[
    {
      //put your json here
      [
        {"Nombre": "Jorge", "Edad": "29", "Cargo": "Developer"},
        {"Nombre": "Christhian", "Edad": "34", "Cargo": "Developer"},
        {"Nombre": "Byron", "Edad": "35", "Cargo": "Designer"}
      ]
    }
  ];
  return x;
}
