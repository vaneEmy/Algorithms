# Given a number, get all prime numbers in that range

def all_prime_numbers(number)
    numbers = (1..number)
    i, prime_numbers = 0, []
    num_max = numbers.size
     current_item = 2
    prime_numbers = is_not_prime_number(current_item, numbers)
    result = []
    
    while (current_item + 1 < num_max)
        result = is_not_prime_number(current_item + 1, prime_numbers)
        prime_numbers = result
        num_max = result.size
        current_item+=1
    end

   
    for i in prime_numbers
        puts i
    end
end

def is_not_prime_number(current_number, prime_numbers_array)
    prime_numbers_array.select do |num|
        ((num == current_number || num % current_number != 0) && num !=  1)
    end
end


number = 13
puts "Getting all prime numbers thtat are in the range of 1 to #{number}" 
all_prime_numbers(number)
