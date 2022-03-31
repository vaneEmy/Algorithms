## Solved problem of codesignal: Add border

def solution(picture):
    size = len(picture[0]) + 2
    new_picture = []
    
    first_row = "*" * size
    new_picture.append(first_row)
    
    for i in range(0, len(picture)):
        row = "*" + picture[i] + "*"
        new_picture.append(row)
        
    last_row = "*" * size 
    new_picture.append(last_row)

    return new_picture

test1 = ["abc", "ded"]
test2 = ["a"]
test3 = ["aa", "**", "zz"]
test4 = ["abcde", "fghij", "klmno", "pqrst", "uvwxy"]

print(solution(test1))