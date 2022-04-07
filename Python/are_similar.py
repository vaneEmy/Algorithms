## Solved problem of codesignal: are similar?

def solution(a, b):
    was_swapped = False
    swapped_numbers = None
    
    for ele_a, ele_b in zip(a,b):
        """
            si son diferentes:
                1. es que sea la primera vez -> lo agregamos a swaped_numbers
                2. es la segunda vez y los numeros coinciden -> was_swaped = true
                3. es la tercera vez o los numeros no coinciden -> return false
        """ 
        are_different = ele_a != ele_b
        swapped_are_equal = (ele_b, ele_a) == swapped_numbers
        
        if swapped_numbers is None and are_different:
            swapped_numbers = (ele_a, ele_b)
        elif (
            swapped_numbers is not None 
            and are_different
            and swapped_are_equal
            and not was_swapped
        ):
            was_swapped = True
        elif (
            swapped_numbers is not None 
            and ele_a != ele_b 
            and (not swapped_are_equal or was_swapped)
        ):
            return False
    
    return True


test_1 = solution([1, 2, 3],[1, 2, 3]) # True
test_2 = solution([1, 2, 3],[2, 1, 3]) # True
test_3 = solution([1, 2, 2],[2, 1, 1]) # False
test_4 = solution([1, 1, 4],[1, 2, 3]) # False
test_5 = solution([1, 2, 3],[1, 3, 2]) # True
test_6 = solution([832, 998, 148, 570, 533, 561, 894, 147, 455, 279],[832, 570, 148, 998, 533, 561, 455, 147, 894, 279]) # False

print(test_5)