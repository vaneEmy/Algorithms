# Sudoku is a number-placement puzzle. 
# The objective is to fill a 9 × 9 grid with numbers in such a way that each column, each row, 
# and each of the nine 3 × 3 sub-grids that compose the grid all contain all of the numbers from 1 to 9 one time.

# Implement an algorithm that will check whether the given grid of numbers represents a valid Sudoku puzzle according to the layout rules described above. 
# Note that the puzzle represented by grid does not have to be solvable.

require 'set'

def sudoku2(grid)
    sudoku = Array.new(9) { Array.new(9) }

    grid.each_with_index do |row, index|
        numbers = Set.new
        
        row.each_with_index do |column, column_index|
            sudoku[column_index][index] = column.to_i
            if numbers.include?(column.to_i) && column.to_i != 0
                return false
            else
                numbers.add(column.to_i)   
            end
        end
    end
    
    sudoku.each do |row|
        numbers = Set.new
        row.each do |column|
            if numbers.include?(column.to_i) && column.to_i != 0
                return false
            else
                numbers.add(column.to_i)   
            end
        end
    end

    true
end

puts(sudoku2([
                [".","9",".",".","4",".",".",".","."], 
                ["1",".",".",".",".",".","6",".","."], 
                [".",".","3",".",".",".",".",".","."], 
                [".",".",".",".",".",".",".",".","."], 
                [".",".",".","7",".",".",".",".","."], 
                ["3",".",".",".","5",".",".",".","."], 
                [".",".","7",".",".","4",".",".","."], 
                [".",".",".",".",".",".",".",".","."], 
                [".",".",".",".","7",".",".",".","."]
            ])) # Expected output: true

puts(sudoku2([
                [".",".",".",".","2",".",".","9","."], 
                [".",".",".",".","6",".",".",".","."], 
                ["7","1",".",".","7","5",".",".","."], 
                [".","7",".",".",".",".",".",".","."], 
                [".",".",".",".","8","3",".",".","."], 
                [".",".","8",".",".","7",".","6","."], 
                [".",".",".",".",".","2",".",".","."], 
                [".","1",".","2",".",".",".",".","."], 
                [".","2",".",".","3",".",".",".","."]
            ])) # Expected output: false

puts(sudoku2([
                [".",".","4",".",".",".","6","3","."], 
                [".",".",".",".",".",".",".",".","."], 
                ["5",".",".",".",".",".",".","9","."], 
                [".",".",".","5","6",".",".",".","."], 
                ["4",".","3",".",".",".",".",".","1"], 
                [".",".",".","7",".",".",".",".","."], 
                [".",".",".","5",".",".",".",".","."], 
                [".",".",".",".",".",".",".",".","."], 
                [".",".",".",".",".",".",".",".","."]
            ])) # Expected output: false

puts(sudoku2([
               ["7",".",".",".","4",".",".",".","."], 
               [".",".",".","8","6","5",".",".","."], 
               [".","1",".","2",".",".",".",".","."], 
               [".",".",".",".",".","9",".",".","."], 
               [".",".",".",".","5",".","5",".","."], 
               [".",".",".",".",".",".",".",".","."], 
               [".",".",".",".",".",".","2",".","."], 
               [".",".",".",".",".",".",".",".","."], 
               [".",".",".",".",".",".",".",".","."]
            ])) #Expected output: false