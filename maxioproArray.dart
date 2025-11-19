/// Calcula el producto máximo tomando los `size` mayores elementos de `arr`.
///
/// Parámetros:
/// - `arr`: lista de enteros.
/// - `size`: cantidad de elementos a multiplicar.
///
/// Flujo:
/// - Ordena descendente y multiplica los primeros `size`.
///
/// Consideraciones:
/// - Si `size > arr.length` habrá error de índice.
/// - Números negativos pueden afectar el resultado esperado.
int maxProduct(List<int> arr, int size) {
  // Ordena el arreglo de mayor a menor
  arr.sort((a, b) => b.compareTo(a));
  
  // Toma los primeros `size` elementos y calcula su producto
  int product = 1;
  for (int i = 0; i < size; i++) {
    product *= arr[i];
  }
  
  return product;
}
