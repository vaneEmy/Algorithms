# 
# Problem:
# Given a positive integer n, calculate the following sum: n + n/2 + n/4 + n/8 + .... All divisions are integer.

def halvingSum(n)
    div = 1
    sum = (n/div).round
    res = sum

    while(res != 1)
        div *= 2
        res = (n / div).round
        sum += res
    end
    
    sum
end

puts(halvingSum(25)) # Expected output: 47
puts(halvingSum(127)) # Expected output: 247
puts(halvingSum(1000)) # Expected output: 1994
puts(halvingSum(1)) # Expected output: 1
puts(halvingSum(100)) # Expected output: 197
puts(halvingSum(512)) # Expected output: 1023