import "dart:core";

/// Cuenta el número de vocales en minúscula en `inputStr`.
///
/// Parámetros:
/// - `inputStr`: texto de entrada.
///
/// Retorno:
/// - Entero con el conteo de vocales `a,e,i,o,u` en minúscula.
///
/// Consideraciones:
/// - Mayúsculas no se cuentan; para incluirlas, normalizar con `toLowerCase()`.

int getCount(String inputStr) {
  int count = 0;
  String vowels = "aeiou";

  for (var c in inputStr.split('')) {
    if (vowels.contains(c)) {
      count++;
    }
  }
  return count;
}
