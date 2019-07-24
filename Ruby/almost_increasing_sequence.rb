def almost_increasing_sequence(sequence)
    count, prev  = 0, 0
    min = sequence.first
    max= min
    i = 1
    
    while i < sequence.size
        item = sequence[i]
        
        # In the first case, check it the current number is not consecutive
        # in the second one, check if after removing one element, the current can increase the sequence E.J: [40, 50, 60, 20, 30] 
        # in the third, check if there are numbers that are repeated E.J: [1,2,1,2]
        if (item <= min && item <= max) || (item < max && item < prev  && prev != 0) ||  (item == max && item > prev && min <= prev)                
            max = min
            count += 1
        else
            max = item
            prev = min
        end
        
        if count >= 2
            return false
        end
        
        i += 1
        min = item
    end

    return true
end



#sequence = [1, 2, 1, 2]
#sequence = [1, 1, 2, 3, 4, 4]
#sequence = [40, 50, 60, 10, 20, 30]

#sequence = [1, 2, 5, 3, 5]
#sequence = [0, -2, 5, 6]
sequence = [1, 2, 3, 4, 99, 5, 6]
#sequence = [1, 3, 2]
#sequence = [10, 1, 2, 3, 4, 5]
#sequence = [123, -17, -5, 1, 2, 3, 12, 43, 45]
puts almost_increasing_sequence(sequence)