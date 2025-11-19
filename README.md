# Codewars Utilities (Dart & Go)

Colección de utilidades y katas rápidas en Dart y Go, organizadas por archivo. Todas las funciones están documentadas en el código para facilitar su mantenimiento.

## Estructura del proyecto

- Dart
  - `cripto.dart` — fuerza bruta de PIN de 5 dígitos a partir de hash MD5 (`crack`).
  - `examen.dart` — conteo de errores de impresión respecto a rango `a..m` (`printerError`).
  - `getCount.dart` — conteo de vocales minúsculas (`getCount`).
  - `hola.dart` — suma elementos de dos listas (`arrayPlusArray`).
  - `hola2.dart` — trimestre del mes 1–12 (`quarter`).
  - `likes.dart` — mensaje de "likes" según cantidad de nombres (`likes`).
  - `maxioproArray.dart` — producto de los `size` mayores en una lista (`maxProduct`).
  - `n-1.dart` — resultado del reto de la última silla (`lastChair`).
  - `nega.dart` — opuesto de un número (`opposite`).
  - `palindromo.dart` — verificación de palíndromo (`isPalindrome`).
  - `papas.dart` — invertir cada palabra manteniendo orden (`reverseWords`).
  - `pludig.dart` — raíz digital recursiva (`digitalRoot`).
  - `sorted.dart` — estado de orden: asc/desc/no (`isSortedAndHow`).
  - `spliStrings.dart` — separar en pares con relleno `_` si impar (`solution`).
  - `sumAraays.dart` — suma sin extremos (min y max) (`sumArray`).
  - `vaporcode.dart` — formato VAPORCODE (mayúsculas, sin espacios, doble espacio) (`vaporCode`).
- Go
  - `papas.go` — utilidades varias:
    - `GetCount` — cuenta vocales minúsculas.
    - `SortNumbers` — orden ascendente (O(n log n)).
    - `Solution` — pares de caracteres con `_` si impar.
    - `Digitize` — dígitos en orden inverso.
    - `Vaporcode` — mayúsculas y separación por espacios.
    - `CamelCase` — convierte frase a CamelCase por palabra.
    - `DecodeMorse` — decodificación morse (A–Z) con separación: letra `" "`, palabra `"   "`.

## Requisitos y dependencias

- Dart
  - SDK Dart instalado.
  - Para `cripto.dart` se necesita el paquete `crypto`:
    - Añadir al proyecto Dart: `dart pub add crypto`
    - Importado como `package:crypto/crypto.dart`.
- Go
  - Go 1.20+ (recomendado) instalado.

## Uso rápido

- Dart
  - Ejecutar un archivo: `dart run <archivo>.dart`
  - Ejemplos:
    - `dart run pludig.dart`
    - `dart run papas.dart`
    - `dart run cripto.dart` (dentro de un proyecto con `crypto` instalado)
- Go
  - Ejecutar: `go run papas.go`

## API/Funciones principales

- Dart
  - `String crack(String hash)` — devuelve el PIN (`"00000"`–`"99999"`) cuyo MD5 coincide con `hash`.
  - `String printerError(String s)` — retorna `"errores/total"` según rango permitido `a..m`.
  - `int getCount(String inputStr)` — número de vocales minúsculas en la cadena.
  - `int arrayPlusArray(List<int> arr1, List<int> arr2)` — suma elementos de dos listas.
  - `int quarter(int month)` — trimestre del mes (1–4).
  - `String likes(List<String> names)` — mensaje de like acorde a la cantidad de nombres.
  - `int maxProduct(List<int> arr, int size)` — producto de los `size` mayores.
  - `int lastChair(int n)` — devuelve `n-1` según reto.
  - `num opposite(num n)` — opuesto del número.
  - `bool isPalindrome(String x)` — verifica palíndromo (ignora mayúsculas/minúsculas).
  - `String reverseWords(String text)` — invierte cada palabra.
  - `int digitalRoot(int n)` — raíz digital recursiva.
  - `String isSortedAndHow(List<int> arr)` — estado de orden del array.
  - `List<String> solution(String s)` — pares de caracteres (`c_` si impar).
  - `int sumArray(List<int>? array)` — suma excluyendo extremos.
  - `String vaporCode(String s)` — VAPORCODE en mayúsculas con doble espacio.
- Go (`papas.go`)
  - `GetCount(str string) int` — vocales minúsculas.
  - `SortNumbers(numbers []int) []int` — orden ascendente.
  - `Solution(str string) []string` — pares con `_`.
  - `Digitize(n int) []int` — dígitos inversos.
  - `Vaporcode(s string) string` — mayúsculas y separación.
  - `CamelCase(s string) string` — a CamelCase.
  - `DecodeMorse(morse string) string` — decodifica morse A–Z.

## Consideraciones técnicas

- Algunas funciones incluyen `print` para depuración (por ejemplo, `digitalRoot`, `papas.dart`). En producción, se pueden eliminar.
- `likes.dart` puede simplificarse reemplazando el bucle por condición directa de casos (0, 1, 2, >=3).
- `maxioproArray.dart`: validar `size <= arr.length` para evitar índices fuera de rango.
- `cripto.dart`: la búsqueda es O(100000). MD5 se usa por compatibilidad en katas; no es apto para seguridad.

## Licencia

Este repositorio es de uso educativo y de práctica de katas. Ajusta y reutiliza libremente según tus necesidades.