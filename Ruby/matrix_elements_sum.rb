# After becoming famous, the CodeBots decided to move into a new building together. 
# Each of the rooms has a different cost, and some of them are free, but there's a rumour that all the free rooms are haunted! 
# Since the CodeBots are quite superstitious, they refuse to stay in any of the free rooms, or any of the rooms below any of the free rooms.

# Given matrix, a rectangular matrix of integers, where each value represents the cost of the room, 
# your task is to return the total sum of all rooms that are suitable for the CodeBots (ie: add up all the values that don't appear below a 0).

def matrixElementsSum(matrix)
    sum_elements = 0 
    matrix.transpose.each { |row| row.each { |column| column == 0 ? break : sum_elements += column } }
    sum_elements
end

puts(matrixElementsSum([
                    [0,1,1,2], 
                    [0,5,0,0], 
                    [2,0,3,3]
                ])) # Expected output: 9

puts(matrixElementsSum([
                    [1,1,1,0], 
                    [0,5,0,1], 
                    [2,1,3,10]
                ])) # Expected output: 9


puts(matrixElementsSum([
                    [1,1,1], 
                    [2,2,2], 
                    [3,3,3]
                ])) # Expected output: 18

puts(matrixElementsSum([[0]])) # Expected output: 0

puts(matrixElementsSum([
                    [1,0,3], 
                    [0,2,1], 
                    [1,2,0]
                ])) # Expected output: 5

puts(matrixElementsSum([
                    [1], 
                    [5], 
                    [0], 
                    [2]
                ])) # Expected output: 6


puts(matrixElementsSum([[1,2,3,4,5]])) # Expected output: 15

puts(matrixElementsSum([
                    [2], 
                    [5], 
                    [10]
                ])) # Expected output: 17


puts(matrixElementsSum([
                    [4,0,1], 
                    [10,7,0], 
                    [0,0,0], 
                    [9,1,2]
                ])) # Expected output: 15

puts(matrixElementsSum([[1]])) # Expected output: 1
