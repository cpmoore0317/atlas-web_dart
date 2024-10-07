bool isPalindrome(String s) {
  if (s.length < 3) return false; // A palindrome must have at least 3 characters
  String reversed = s.split('').reversed.join('');
  return s == reversed;
}

String longestPalindrome(String s) {
  if (s.length < 3) return "none"; // If the string is too short, return "none"

  String longest = "none"; // Default value if no palindrome found

  for (int i = 0; i < s.length; i++) {
    for (int j = i + 3; j <= s.length; j++) { // Start j at i+3 to ensure at least 3 characters
      String substring = s.substring(i, j);
      if (isPalindrome(substring) && substring.length > longest.length) {
        longest = substring; // Update longest if current is longer
      }
    }
  }

  return longest; // Return the longest palindrome found
}
