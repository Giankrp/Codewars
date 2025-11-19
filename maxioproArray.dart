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
