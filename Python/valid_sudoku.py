## Solved problem of codesignal: sudoku2

def is_duplicated(row):
    numbers = set()
    
    for i in row:
        if i != '.' and i in numbers:
            return True
        else:
            numbers.add(i) 
          
    return False

def solution(grid):
    # Check horizontal and vertical
    for i in range(9):
        vertical = []
        horizontal = []
        for j in range(9):
            horizontal.append(grid[i][j])
            vertical.append(grid[j][i])
                    
        if is_duplicated(horizontal) or is_duplicated(vertical):
            return False    
    
    # Check 3 x 3 sub grids
    for i in range(0, 9, 3):
        for j in range(0, 9, 3):
            one_row = grid[i][j:j+3]
            second_row = grid[i+1][j:j+3]
            third_row = grid[i+2][j:j+3]
            
            square = one_row + second_row + third_row
            
            if is_duplicated(square):
                return False

    return True

sudoku = [
 [".",".",".","1","4",".",".","2","."], 
 [".",".","6",".",".",".",".",".","."], 
 [".",".",".",".",".",".",".",".","."], 
 [".",".","1",".",".",".",".",".","."], 
 [".","6","7",".",".",".",".",".","9"], 
 [".",".",".",".",".",".","8","1","."], 
 [".","3",".",".",".",".",".",".","6"], 
 [".",".",".",".",".","7",".",".","."], 
 [".",".",".","5",".",".",".","7","."]]

invalid_sudoku = [
 [".",".","4",".",".",".","6","3","."], 
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