# The function must return the sum of the array elements.

def simple_array_sum(ar)
    if !ar.empty?
        sum = 0
        ar.each { |num| sum += num }
        sum
   end
end

array_one = [1, 2, 3, 4, 10, 11]
puts "The result is: ", simple_array_sum(array_one)