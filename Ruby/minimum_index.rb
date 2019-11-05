# Given array of integers, find the 0-based index of its minimal element.

def arrayMinimumIndex(inputArray)
    minimum = inputArray.first
    minimum_index = 0

    inputArray[1..inputArray.size].each_with_index do |value, key|
        if minimum > value 
            minimum = value
            minimum_index = key + 1
        end
    end

    minimum_index
end


puts (arrayMinimumIndex([19, 32, 11, 23]))
puts (arrayMinimumIndex([1, 4, 10, 3, 2]))
puts (arrayMinimumIndex([0, -2, 5, 6, -9]))
