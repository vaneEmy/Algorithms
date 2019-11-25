# Triangular Numbers are positive integers that can be represented as a sum of all integers from 1 up to some n. 
# Determine if the given number is Triangular.

def isSum(value)
    (1..value+1).inject do |sum, n|
        if sum == value
            return true
        elsif value < sum
            return false
        end
        sum + n
    end
end

#puts(isSum(10))   # Expected output: true
#puts(isSum(11))   # Expected output: false
#puts(isSum(100))  # Expected output: false
#puts(isSum(42))  # Expected output: false
#puts(isSum(110))  # Expected output: false
#puts(isSum(45))  # Expected output: true
puts(isSum(1))  # Expected output: true
puts(isSum(2))  # Expected output: false
puts(isSum(3))  # Expected output: true

