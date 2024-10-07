bool isPalindrome(String s) {
  // Check if the length of the string is less than 3
  if (s.length < 3) {
    return false;
  }
  
  // Reverse the string and compare it with the original
  String reversed = s.split('').reversed.join('');
  return s == reversed;
}
