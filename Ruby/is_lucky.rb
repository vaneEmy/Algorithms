# Ticket numbers usually consist of an even number of digits.
# A ticket number is considered lucky if the sum of the first half of the digits is equal to the sum of the second half.

# Given a ticket number n, determine if it's lucky or not.

def isLucky(n)
    sum, sum2 = 0, 0
    arr = n.to_s.split("")
    
    first_half = arr.take(arr.size / 2) 
    second_half = arr.drop((arr.size / 2))
    first_half.each { |x| sum += x.to_i }
    second_half.each {|x| sum2 += x.to_i}
    
    sum == sum2
end

puts(isLucky(1230))   # Expected output: true
puts(isLucky(239017)) # Expected output: false
puts(isLucky(134008)) # Expected output: true
puts(isLucky(10))     # Expected output: false
puts(isLucky(11))     # Expected output: false
