/// Invocado desde main: invierte cada palabra en una cadena.
/// Ejemplo: "hola soy tu" -> "aloh yos ut"
void main() {
  print(reverseWords("hola soy tu"));
}

/// Invierte cada palabra en `text` manteniendo el orden de las palabras.
String reverseWords(String text) {
  String melo = "";
  List<String> papas = text.split(" ");
  // Mostrar lista de palabras para facilitar depuración.
  print(papas);
  for (var element in papas) {
    for (var i = element.length - 1; i >= 0; i--) {
      melo += element[i];
    }
    melo += " ";
  }
  return melo.trim();
}
