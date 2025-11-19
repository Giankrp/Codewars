List<String> solution(String s) {
  List<String> result = [];

  for (int i = 0; i < s.length; i += 2) {
    if (i + 1 < s.length) {
      result.add(s.substring(i, i + 2));
    } else {
      result.add(s[i] + '_'); 
    }
  }

  return result;
}
