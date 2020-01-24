# 
# Description:
# Determine whether the given number n is a power of two.

def isPowerOfTwo2(n)
    return true if n == 1
    
    (1..Math.sqrt(n)).each do |num|
        power = 2**num
        if power == n
            return true
        elsif power > n
            return false
        end
    end
    false
end

#puts(isPowerOfTwo2(64)) # Expected output: true
#puts(isPowerOfTwo2(5)) # Expected output: false
#puts(isPowerOfTwo2(1)) # Expected output: true
#puts(isPowerOfTwo2(16)) # Expected output: true
#puts(isPowerOfTwo2(7)) # Expected output: false
#puts(isPowerOfTwo2(239)) # Expected output: false
puts(isPowerOfTwo2(137438953472)) # Expected output: true