void main(List<String> args) {
  // espacio para pruebas
}

/// Suma los elementos del array excluyendo el mayor y el menor.
/// Si el array es nulo o tiene longitud <= 2 devuelve 0.
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