/// Ejemplo: calcula la raíz digital recursiva de un número positivo.
/// Devuelve 0 para entradas negativas.
void main() {
  print(digitalRoot(99));
}

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