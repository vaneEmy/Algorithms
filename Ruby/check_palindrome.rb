# Given the string, check if it is a palindrome.

def checkPalindrome(inputString)
    inputString == inputString.reverse
end

puts(checkPalindrome("aabaa")) # Expected output: true
puts(checkPalindrome("abac")) # Expected output: false
puts(checkPalindrome("a")) # Expected output: true
puts(checkPalindrome("az")) # Expected output: false
puts(checkPalindrome("abacaba")) # Expected output: true 