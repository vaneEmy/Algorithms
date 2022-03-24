## Solved problem of codesignal: reverse in parenthesis

def get_word(word):
    new_word = word
    index = 0
    
    while index <  len(new_word):
        if new_word[index] == '(':
            new_word = new_word[:index] + get_word(new_word[index+1:len(new_word)])
            index -= 1
            
        elif new_word[index] == ')':
            reverse = reverse_word(new_word[0:index])
            if len(new_word) > index+1:
                return reverse + new_word[index+1:]
            return reverse
        index += 1
    return new_word
            
        
def reverse_word(word):
    reverse_word = ''
    character = len(word) - 1 
    
    while character >= 0:
        reverse_word += word[character]
        character -= 1
    
    return reverse_word   

def solution(inputString):
    return get_word(inputString[0:len(inputString)])

test_1 = "foo(bar)baz" # foorabbaz
test_2 = "(bar)"    #rab
test_3 = "foo(bar(baz))blim" # foobazbarblim
test_4 = "foo(bar)baz(blim)" #foorabbazmlib

result = solution(test_4)
print(result)