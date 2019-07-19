# Return if the given number is prime or not.

def is_prime_number(num)

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
puts is_prime_number(num)
