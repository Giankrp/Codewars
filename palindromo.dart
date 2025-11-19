bool isPalindrome(String x) {
  x = x.toLowerCase();
  return x == x.split('').reversed.join();
}
