# Given three integers k, l and r return the number of integers between l and r inclusive that have exactly k divisors.
# It is guaranteed that l ≤ r.

def divNumber(k, l, r)
    numbers = (l..r)
    count_div = 1
    count_div_numbers = 0

    for num in numbers
        for div in (2..num) 
           if num % div == 0
                count_div += 1

                if count_div == k && num == div
                    count_div_numbers += 1
                    break
                elsif count_div > k
                    break
                end
            end
        end
        count_div = 1
    end

    count_div_numbers
end

puts(divNumber(3, 2, 49)) # Expected output: 4
puts(divNumber(4, 23, 75)) # Expected output: 16
