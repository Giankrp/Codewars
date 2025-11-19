void main() {
  print(arrayPlusArray([1, 2, 3], [4, 5, 6]));
}

/// Suma todos los elementos de dos arrays y devuelve el total.
/// Si ambos arrays están vacíos devuelve 0.
///
/// Parámetros:
/// - `arr1`, `arr2`: listas de enteros.
///
/// Consideraciones:
/// - `List.reduce` lanza excepción en listas vacías. Aquí se asume que
///   ambas listas no están vacías salvo el caso especial cuando ambas lo están.

///
/// Ejemplo:
/// ```dart
/// arrayPlusArray([1,2], [3]) // => 6
/// ```
int arrayPlusArray(List<int> arr1, List<int> arr2) {
  if (arr1.isEmpty && arr2.isEmpty) {
    return 0;
  }
  var suma = arr1.reduce((a, b) => a + b) + arr2.reduce((a, b) => a + b);

  return suma;
}
