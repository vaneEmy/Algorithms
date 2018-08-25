# The function must return the sum of the array elements.

def simpleArraySum(ar)
    if ar.size > 0
        sum = 0
        ar.each { |num| sum += num }
        sum
    else
        ar
    end
end

array_one = [1, 2, 3, 4, 10, 11]
puts "The result is: ", simpleArraySum(array_one)