import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

double calcularSubtotal(
  double precio,
  int cantidad,
) {
  // Add your function code here!
  return precio * cantidad;
}

double totalList(List<double> subTotal) {
  {
    // get the total value
    double total = 0.0;
    for (double add in subTotal) {
      total += add;
    }
    return total;
  }
}

double sumarSubtotal(
  double valorSubtotal,
  double precio,
) {
  // Add your function code here!
  valorSubtotal = valorSubtotal + precio;
  return valorSubtotal;
}

double restarSubtotal(
  double valorSubtotal,
  double precio,
) {
  // Add your function code here!

  if (valorSubtotal > 0) {
    valorSubtotal = valorSubtotal - precio;
  }
  return valorSubtotal;
}

String resultadopresion(
  int parametro01,
  int parametro02,
) {
  String resultado;
  // Add your function code here!
  if (parametro01 <= 99 && parametro02 <= 59) {
    resultado = 'Baja';
  } else if (parametro01 <= 130 && parametro02 <= 85) {
    resultado = 'Normal';
  } else if (parametro01 <= 140 && parametro02 <= 90) {
    resultado = 'Pre-hipertensión';
  } else if (parametro01 <= 160 && parametro02 <= 100) {
    resultado = 'Descontrol leve';
  } else if (parametro01 <= 180 && parametro02 <= 110) {
    resultado = 'Descontrol moderado';
  } else if (parametro01 > 180 && parametro02 > 110) {
    resultado = 'Descontrol severo';
  } else {
    resultado = 'No valido';
  }
  return resultado;
}
