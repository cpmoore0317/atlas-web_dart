String longestUniqueSubstring(String str) {
  int maxLength = 0;
  int start = 0; // Start index of current substring
  String longestSubstring = '';
  Map<String, int> charIndexMap = {}; // To store the last index of each character

  for (int end = 0; end < str.length; end++) {
    String currentChar = str[end];

    // If the character is already in the map, update the start position
    if (charIndexMap.containsKey(currentChar)) {
      start = charIndexMap[currentChar]! + 1; // Move the start to the right of the last occurrence
    }

    charIndexMap[currentChar] = end; // Update the last index of the current character
    int currentLength = end - start + 1; // Calculate current length of the substring

    // Update the longest substring if the current one is longer
    if (currentLength > maxLength) {
      maxLength = currentLength;
      longestSubstring = str.substring(start, end + 1); // Update the longest substring
    }
  }

  return longestSubstring;
}
