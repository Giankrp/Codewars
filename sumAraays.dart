void main(List<String> args) {
  // espacio para pruebas
}

/// Suma los elementos del array excluyendo el mayor y el menor.
/// Si el array es nulo o tiene longitud <= 2 devuelve 0.
///
/// Flujo:
/// - Copia el array para no mutar el original.
/// - Ordena ascendente y toma el subarray sin extremos.
/// - Acumula la suma de los elementos intermedios.
///
/// Consideraciones:
/// - Si hay varios mínimos/máximos, se excluye uno de cada.
int sumArray(List<int>? array) {
  // your code here
  if (array == null || array.length <= 2) return 0;
  final copy = List<int>.from(array);
  copy.sort((a, b) => a.compareTo(b));
  final middle = copy.sublist(1, copy.length - 1);
  int suma = 0;
  for (var element in middle) {
    suma += element;
  }
  return suma;
}