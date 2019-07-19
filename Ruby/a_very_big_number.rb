# Problem: Calculate and print the sum of the elements in an array
def aVeryBigSum(ar)
    sum = 0
    ar.each { |element| sum += element}
    sum
end

array = [1000000001, 1000000002, 1000000003, 1000000004, 1000000005]
puts "The output is: ", aVeryBigSum(array)
