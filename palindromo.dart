/// Determina si `x` es palíndromo ignorando mayúsculas/minúsculas.
///
/// Flujo:
/// - Normaliza a minúsculas.
/// - Compara con su reverso.
///
/// Consideraciones:
/// - Espacios y puntuación se consideran parte de la cadena.

bool isPalindrome(String x) {
  x = x.toLowerCase();
  return x == x.split('').reversed.join();
}
