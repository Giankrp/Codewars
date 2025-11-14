void main() {
  print(likes(["hola", "melo", "papas", "si"]));
}

/// Formatea un mensaje de "likes" al estilo de kata de ejemplo.
/// Maneja 0, 1, 2, y 3+ nombres.
String likes(List<String> names) {
  String likes = "";

  if (names.isEmpty) {
    likes = "no one like this";
  }

  for (int i = 0; i < names.length; i++) {
    if (i == 2) {
      likes = names[0] +
          ", " +
          names[1] +
          " and " +
          (names.length - i).toString() +
          " others like this";
    }

    if (names.length < 2) {
      likes = names[0] + " likes this";
    }

    if (names.length == 2) {
      likes = names[0] + " and " + names[1] + " like this";
    }
  }
  return likes;
}
