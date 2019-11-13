# Given a rectangular matrix of characters, add a border of asterisks(*) to it.

def addBorder(picture)
    border = '*' * (picture.first.size + 2)
    
    picture.each do |pic|
        pic.insert(0, '*')
        pic.insert(pic.size, '*')
    end
    picture.unshift(border)
    picture.push(border)
    
    picture
end

puts(addBorder(["abc", "ded"]))
puts(addBorder(["a"]))