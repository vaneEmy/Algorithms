# Given a number, get all prime numbers in that range

def all_prime_numbers(number)
    numbers = (1..number)
    current_item, prime_numbers = 2, []
    num_max = numbers.size
    
    while (current_item < num_max)
        prime_numbers = prime_number(current_item, numbers)
        numbers = prime_numbers
        num_max = prime_numbers.size
        current_item += 1
    end

    for i in prime_numbers
        puts i
    end
end

def prime_number(current_number, prime_numbers_array)
    prime_numbers_array.select do |num|
        ((num == current_number || num % current_number != 0) && num !=  1)
    end
end


number = 10
puts "Getting all prime numbers thtat are in the range of 1 to #{number}" 
all_prime_numbers(number)
