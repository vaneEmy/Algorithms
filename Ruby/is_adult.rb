#
# Problem:
# Given the age of a person and the adulthood age in a particular country, 
# determine if the person is considered an adult in that country. 
# Note that people whose age is the same as the adulthood age are considered adult.

def isAdult(age, adulthoodAge)
    age >= adulthoodAge 
end

puts(isAdult(18, 21)) # Expected output: false
puts(isAdult(1, 18)) # Expected output: false
puts(isAdult(20, 20)) # Expected output: true
puts(isAdult(19, 20)) # Expected output: false
puts(isAdult(21, 20)) # Expected output: true