/// Utilidad para romper (por fuerza bruta) un PIN de 5 dígitos a partir
/// de su hash MD5. Recorre `00000` a `99999` y compara el MD5 de cada PIN
/// con el hash objetivo.
///
/// Dependencias:
/// - `dart:convert` para `utf8.encode`
/// - `package:crypto/crypto.dart` para `md5`
import 'dart:convert';
import 'package:crypto/crypto.dart';

/// Busca el PIN original de 5 dígitos cuyo MD5 coincide con `hash`.
///
/// Parámetros:
/// - `hash`: cadena hexadecimal de 32 caracteres con el MD5 objetivo.
///
/// Retorno:
/// - PIN en texto (`"00000"` a `"99999"`) si se encuentra; `""` si no.
///
/// Flujo:
/// - Genera todos los PIN posibles con `padLeft(5, '0')`.
/// - Calcula `md5` de cada PIN y compara con `hash`.
///
/// Consideraciones:
/// - Complejidad O(100000). Apta para PIN de 5 dígitos, no para espacios mayores.
/// - Si `hash` no es un MD5 válido, jamás coincidirá y retornará `""`.
/// - MD5 no es seguro para usos criptográficos; aquí es solo para kata.
///
/// Ejemplo:
/// ```dart
/// final h = md5.convert(utf8.encode('04213')).toString();
/// final pin = crack(h); // => "04213"
/// ```
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

  // No encontrado: posible `hash` inválido o fuera del espacio de búsqueda
  return "";
}
