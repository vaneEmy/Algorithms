# Given an array a that contains only numbers in the range from 1 to a.length, 
# find the first duplicate number for which the second occurrence has the minimal index. 
# In other words, if there are more than 1 duplicated numbers, 
# return the number for which the second occurrence has a smaller index than the second occurrence of the other number does.
# If there are no such elements, return -1.

def firstDuplicate(a)
    numbers = a.clone
    indexes = []
    count_number = 0
    search_numbers = []
    min_index = 0
    count = 0

    a.each do |num|
        count_number = numbers.count(num)
        if count_number > 1
            search_numbers.push(num)
            numbers.delete(num)
        end
    
        
    end

    if search_numbers.empty?
        return -1
    end
    for search in search_numbers
        #puts "#{search} and indexes are: #{indexes}"
        a.each_with_index  do |num, index|
            if num == search 
                count += 1
                
                min_index = index

                #puts "The index to add is #{index} and min_index is: #{min_index}"
                if count > 1
                 #   puts "count is: #{count}"
                    indexes.push(min_index)
                end    
                
            end
            #indexes << index if num 
        end
        count = 0
    end
    
    #puts "Indixes are: #{indexes}"
    #puts "#{a[indexes.min]}"
    return a[indexes.min]
    
    
end


puts(firstDuplicate([2, 1, 3, 5, 3, 2]))                # Expected output:  3
puts(firstDuplicate([2, 2]))                            # Expected output:  2
puts(firstDuplicate([2, 4, 3, 5, 1]))                   # Expected output: -1
puts(firstDuplicate([1]))                               # Expected output: -1
puts(firstDuplicate([5, 5, 5, 5, 5]))                   # Expected output:  5
puts(firstDuplicate([2, 1]))                            # Expected output: -1
puts(firstDuplicate([2, 1, 3]))                         # Expected output: -1
puts(firstDuplicate([2, 3, 3]))                         # Expected output:  3
puts(firstDuplicate([3, 3, 3]))                         # Expected output:  3
puts(firstDuplicate([8, 4, 6, 2, 6, 4, 7, 9, 5, 8]))    # Expected output:  6
puts(firstDuplicate([10, 6, 8, 4, 9, 1, 7, 2, 5, 3]))   # Expected output: -1
puts(firstDuplicate([1, 1, 2, 2, 1]))                   # Expected output:  1