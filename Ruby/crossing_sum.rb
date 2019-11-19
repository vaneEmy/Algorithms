# Given a rectangular matrix and integers a and b, 
# consider the union of the ath row and the bth (both 0-based) column of the matrix 
# (i.e. all cells that belong either to the ath row or to the bth column, or to both). 
# Return sum of all elements of that union.

def crossingSum(matrix, a, b) 
    sum = 0;
    matrix.each_with_index do |row, index|
        if a == index
            row.each { |x| sum += x}
            break
        end
    end

    matrix.transpose.each_with_index do |row, index|
        
        if b == index
            
            row.each_with_index do |column, index|
                if a != index
                    sum += column
                end
            end
        end
    end
    sum
end


puts(crossingSum([
                [1,1,1,1], 
                [2,2,2,2], 
                [3,3,3,3]
            ],1, 0))                       #Expected output: 12 

puts(crossingSum([[1,1], [1,1]],0, 0))     #Expected output: 3

puts(crossingSum([
                [1,1], 
                [3,3], 
                [1,1], 
                [2,2]
            ],3, 0))                       #Expected output: 9

puts(crossingSum([[100]],0, 0))           #Expected output: 100

puts(crossingSum([
                [1, 2],
                [3, 4]
            ],1, 1))                      #Expected output: 9

puts(crossingSum([[1,2,3,4]],0, 3))       #Expected output: 10