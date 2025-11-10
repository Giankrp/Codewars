void main(List<String> args) {
  
}

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