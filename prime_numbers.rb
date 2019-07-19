# Return if the given number is prime or not.

def isPrimeNumber(num)

    if num <= 1
        return false
    end
    
    for i in (2..Math.sqrt(num).round)
        if num % i == 0
            return false
        end
    end

    return true
end

num = 19
puts isPrimeNumber(num)
