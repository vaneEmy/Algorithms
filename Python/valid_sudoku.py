## Solved problem of codesignal

def solution(grid):
    # Check 3 x 3 sub grids
    for i in range(0, 9, 3):
        for j in range(0, 9, 3):
            one_row = grid[i][j:j+3]
            second_row = grid[i+1][j:j+3]
            third_row = grid[i+2][j:j+3]
            
            square3x3 = one_row + second_row + third_row
            
            if is_duplicated(square3x3):
                return False
    
    # Check horizontal 
    for i in grid:
        if is_duplicated(i):
            return False
    
    # Rotate grid to check vertical 
    rotated_sudoku = []
    
    for i in range(9):
        rotate_row = []
        for j in grid:
            rotate_row.append(j[i])    
        rotated_sudoku.append(rotate_row)
    
    # Check vertical 
    for i in rotated_sudoku:
        if is_duplicated(i):
            return False
    return True
    
    
## Return True if there are two equals numbers in the list
def is_duplicated(row):
    numbers = set()
    
    for i in row:
        if i != '.' and i in numbers:
            return True
        else:
            numbers.add(i) 
          
    return False

sudoku = [[".",".",".","1","4",".",".","2","."], 
 [".",".","6",".",".",".",".",".","."], 
 [".",".",".",".",".",".",".",".","."], 
 [".",".","1",".",".",".",".",".","."], 
 [".","6","7",".",".",".",".",".","9"], 
 [".",".",".",".",".",".","8","1","."], 
 [".","3",".",".",".",".",".",".","6"], 
 [".",".",".",".",".","7",".",".","."], 
 [".",".",".","5",".",".",".","7","."]]

invalid_sudoku = [[".",".","4",".",".",".","6","3","."], 
 [".",".",".",".",".",".",".",".","."], 
 ["5",".",".",".",".",".",".","9","."], 
 [".",".",".","5","6",".",".",".","."], 
 ["4",".","3",".",".",".",".",".","1"], 
 [".",".",".","7",".",".",".",".","."], 
 [".",".",".","5",".",".",".",".","."], 
 [".",".",".",".",".",".",".",".","."], 
 [".",".",".",".",".",".",".",".","."]]

is_sudoku_valid =  solution(invalid_sudoku)
print(is_sudoku_valid)
