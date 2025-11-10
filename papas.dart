void main() {
  print(reverseWords("hola soy tu"));
}

String reverseWords(String text) {
  String melo = "";
  List<String> papas = text.split(" ");
  print(papas);
  for (var element in papas) {
    for (var i = element.length - 1; i >= 0; i--) {
      melo += element[i];
    }
    melo += " ";
  }
  return melo.trim();
}
