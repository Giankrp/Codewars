String isSortedAndHow(List<int> arr) {
  bool ascending = true;
  bool descending = true;

  for (int i = 1; i < arr.length; i++) {
    if (arr[i] < arr[i - 1]) ascending = false;
    if (arr[i] > arr[i - 1]) descending = false;
  }

  if (ascending) return "yes, ascending";
  if (descending) return "yes, descending";
  return "no";
}
