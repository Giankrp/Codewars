/// Calcula la raíz digital (suma iterativa de dígitos) de un número positivo.
/// Devuelve 0 para entradas negativas.
void main() {
  print(digitalRoot(99));
}

/// Retorna la suma de los dígitos de `n` aplicada recursivamente hasta
/// obtener un solo dígito.
///
/// Flujo:
/// - Convierte `n` a cadena y suma sus dígitos.
/// - Si el resultado tiene más de un dígito, llama de nuevo a `digitalRoot`.
///
/// Consideraciones:
/// - Los `print` internos ayudan a depurar, pueden omitirse en producción.
/// - Para `n < 0` retorna 0 por definición aquí usada.
int digitalRoot(int n) {
  // Descomponemos el número en dígitos sumando cada carácter.
  var pa = n.toString().split("");
  var melo = 0;
  if (n < 0) {
    return 0;
  }

  for (var a in pa) {
    // imprime cada dígito (útil para debugging)
    print(a);
    melo += int.parse(a);
  }
  // Si el número tiene más de una cifra, aplicar recursión.
  if (n.toString().length > 1) {
    melo = digitalRoot(melo);
  }
  print(melo);
  return melo;
}