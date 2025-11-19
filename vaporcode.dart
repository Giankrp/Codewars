/// Convierte `s` a "VAPORCODE": mayúsculas, sin espacios, con dos espacios
/// entre cada carácter.
///
/// Consideraciones:
/// - Solo elimina espacios normales (`' '`), no otros whitespace.
String vaporCode(String s){
  // 1. Convertir a mayúsculas
  // 2. Eliminar espacios
  // 3. Insertar dos espacios entre cada carácter
  return s
      .toUpperCase()
      .replaceAll(" ", "")
      .split("")
      .join("  ");
}
