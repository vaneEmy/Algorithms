def remove_smallest(numbers)
  if numbers.size > 0
    smallest_number = numbers[0]
    new_array = []
    count = 0

    numbers.each do |number|
      smallest_number = number if smallest_number > number
    end

    numbers.each do |num|
      num == smallest_number && count == 0 ? count += 1: new_array << num
    end
    new_array

  else
    numbers
  end
end

new_array = [1, 2, 3, 4, 5]
new_array2 = [5, 3, 2,4]
empty_array = []
new_array3 = [2,2, 1,2,1]

puts "El resultado es:", remove_smallest(new_array3)
