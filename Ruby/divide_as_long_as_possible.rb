#
# Problem description: 
# Given integers n and d, divide n by d as long as the result is integer and return the resul
def divideAsLongAsPossible(n, d)
    res = n
    while res%d == 0
        res = res/d
    end
    res
end

puts(divideAsLongAsPossible(36, 3)) # Expected output: 4
puts(divideAsLongAsPossible(20, 2)) # Expected output: 5 
puts(divideAsLongAsPossible(64, 4)) # Expected output: 1
