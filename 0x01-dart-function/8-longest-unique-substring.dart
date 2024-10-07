String longestUniqueSubstring(String str) {
  int maxLength = 0;
  int start = 0;
  String longestSubstring = '';
  Map<Sting, int> charIndexMap = {};

  for (int end = 0; end < str.length; end++) {
    String currentChar = str[end];

    if (charIndexMap.containsKey(currentChar)) {
      start = charIndexMap[currentChar]! + 1;
    }

    charIndexMap[currentChar] = end;
    int currentLength = end - start + 1;

    if (currentLength > maxLength) {
      maxLength = currentLength;
      longestSubstring = str.substring(start, end + 1); // Update the longest substring
    }
  }

  return longestSubstring;
}