import 'dart:convert';
import 'package:crypto/crypto.dart';

String crack(String hash) {
  // Recorremos todos los números de 00000 a 99999
  for (int i = 0; i <= 99999; i++) {
    // Convertimos el número en un string de 5 dígitos con ceros delante
    String pin = i.toString().padLeft(5, '0');

    // Generamos el md5 del PIN
    String hashedPin = md5.convert(utf8.encode(pin)).toString();

    // Comparamos con el hash objetivo
    if (hashedPin == hash) {
      return pin;
    }
  }

  return ""; // No debería pasar nunca
}
