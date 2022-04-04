## Solved problem of codesignal: are similar?

def solution(a, b):
    count_swap = 0
    i = 0 

    while i < len(a):
        if a[i] in b:
            index = b.index(a[i])
            # If the value is in the same position and are equal
            if a[i] == b[i]: 
               i+=1  
            # If the value is not in the same position, check if swap one element are equal 
            elif count_swap == 0 and index != i and a[i] == b[index] and b[i] == a[index]:
                count_swap += 1
                i = index + 1
            else: 
                return False
           
    
    return True

test_1 = solution([1, 2, 3],[1, 2, 3]) # True
test_2 = solution([1, 2, 3],[2, 1, 3]) # True
test_3 = solution([1, 2, 2],[2, 1, 1]) # False
test_4 = solution([1, 1, 4],[1, 2, 3]) # False
test_5 = solution([832, 998, 148, 570, 533, 561, 894, 147, 455, 279],[832, 570, 148, 998, 533, 561, 455, 147, 894, 279]) # False

print(test_5)