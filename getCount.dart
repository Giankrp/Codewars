import "dart:core";

int getCount(String inputStr) {
  int count = 0;
  String vowels = "aeiou";

  for (var c in inputStr.split('')) {
    if (vowels.contains(c)) {
      count++;
    }
  }
  return count;
}
