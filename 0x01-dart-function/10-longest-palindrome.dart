bool isPalindrome(String s) {
  if (s.length < 3) return false; // A palindrome must have at least 3 characters
  String reversed = s.split('').reversed.join('');
  return s == reversed;
}

String longestPalindrome(String s) {
  if (s.length < 3) return "none"; // If the string is too short, return "none"

  String longest = ""; // Initialize longest as empty string

  for (int i = 0; i < s.length; i++) {
    for (int j = i + 1; j <= s.length; j++) { // Adjusted j to start at i + 1
      String substring = s.substring(i, j);
      if (isPalindrome(substring) && substring.length > longest.length) {
        longest = substring; // Update longest if current palindrome is longer
      }
    }
  }

  return longest.isNotEmpty ? longest : "none"; // Return "none" if no palindrome found
}
