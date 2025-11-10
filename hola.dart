void main() {
print(arrayPlusArray([1, 2, 3], [4, 5, 6]));
}
int arrayPlusArray(List<int> arr1, List<int> arr2) {
  if (arr1.isEmpty && arr2.isEmpty) {
    return 0;
  }
  var suma = arr1.reduce((a, b) => a + b) + arr2.reduce((a, b) => a + b);

  return suma;
}