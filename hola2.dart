void main() {
  // espacio para pruebas
}

/// Devuelve el trimestre (1-4) del mes dado.
/// Si el mes es inválido (<1) retorna 1 como fallback.
///
/// Parámetros:
/// - `month`: entero del 1 al 12.
///
/// Consideraciones:
/// - `month <= 0` retorna 1.
/// - Meses > 12 retornan 4 por el último `return`.
/// - La lógica agrupa [1-3]=Q1, [4-6]=Q2, [7-9]=Q3, [10-12]=Q4.
int quarter(int month) {
  if (month < 0) {
    return 1;
  }

  if (month >= 1 && month < 4) {
    return 1;
  } else if (month <= 6) {
    return 2;
  } else if (month <= 9) {
    return 3;
  }

  return 4;
}