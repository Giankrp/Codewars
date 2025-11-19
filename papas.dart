/// Ejemplo de uso de `reverseWords`: invierte cada palabra de una cadena.
/// Ejemplo: "hola soy tu" -> "aloh yos ut"
void main() {
  print(reverseWords("hola soy tu"));
}

/// Invierte cada palabra en `text` manteniendo el orden de las palabras.
///
/// Parámetros:
/// - `text`: cadena con palabras separadas por espacio simple.
///
/// Flujo:
/// - Divide por espacios.
/// - Recorre cada palabra y acumula sus caracteres en orden inverso.
/// - Añade espacios y recorta al final.
///
/// Consideraciones:
/// - `print(papas)` sirve para depurar; en producción podría eliminarse.
/// - Múltiples espacios consecutivos se tratan como separadores simples.
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
