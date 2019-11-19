# Some people are standing in a row in a park. 
# There are trees between them which cannot be moved. 
# Your task is to rearrange the people by their heights in a non-descending order without moving the trees. 
# People can be very tall!

def sortByHeight(a)
    people = a.select { |person| person > 0 }.sort! 
    a.map{|pos| pos > 0 ? people.shift : -1}
end

puts(sortByHeight([-1, 150, 190, 170, -1, -1, 160, 180])) # Expected output: [-1, 150, 160, 170, -1, -1, 180, 190]
#puts(sortByHeight([-1, -1, -1, -1, -1])) # Expected output: [-1, -1, -1, -1, -1]
#puts(sortByHeight([-1])) # Expected output: [-1]
#puts(sortByHeight([4, 2, 9, 11, 2, 16])) # Expected output: [2, 2, 4, 9, 11, 16]
#puts(sortByHeight([2, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 1])) 
#    # Expected output: [1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 2]
#puts(sortByHeight([23, 54, -1, 43, 1, -1, -1, 77, -1, -1, -1, 3])) 
    # Expected output: [1, 3, -1, 23, 43, -1, -1, 54, -1, -1, -1, 77]