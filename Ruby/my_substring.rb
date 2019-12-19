#
# Problem description:
# Implement an algorithm that can output the substring of the given string within specified bounds.

def mySubstring(inputString, l, r)
    inputString[l..r]
end

puts(mySubstring("abcde", 2, 3)) # Expected output: "cd" 
puts(mySubstring("abcdef", 0, 2)) # Expected output: "abc" 