# Some people are standing in a row in a park. 
# There are trees between them which cannot be moved. 
# Your task is to rearrange the people by their heights in a non-descending order without moving the trees. 
# People can be very tall!

def sortByHeight(a)
    people = []
    peopleIndex = 0

    a.each { |element| people.push(element) if element != -1 }
    people.sort!
    
    a.each_with_index do |r, i|
        if r != -1
            a[i] = people[peopleIndex]
            peopleIndex += 1
        end
    end
    puts "a: #{a}"
    a
end

sortByHeight([-1, 150, 190, 170, -1, -1, 160, 180]) # Expected output: [-1, 150, 160, 170, -1, -1, 180, 190]
sortByHeight([-1, -1, -1, -1, -1]) # Expected output: [-1, -1, -1, -1, -1]
sortByHeight([-1]) # Expected output: [-1]
sortByHeight([4, 2, 9, 11, 2, 16]) # Expected output: [2, 2, 4, 9, 11, 16]
sortByHeight([2, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 1]) 
    # Expected output: [1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 2]
sortByHeight([23, 54, -1, 43, 1, -1, -1, 77, -1, -1, -1, 3]) 
    # Expected output: [1, 3, -1, 23, 43, -1, -1, 54, -1, -1, -1, 77]