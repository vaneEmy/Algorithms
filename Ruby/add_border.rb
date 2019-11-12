# Given a rectangular matrix of characters, add a border of asterisks(*) to it.

def addBorder(picture)
    border_top_bottom = '*' * (picture.first.size + 2)
    
    picture.each do |pic|
        pic.insert(0, '*')
        pic.insert(pic.size, '*')
    end
    picture.unshift(border_top_bottom)
    picture.push(border_top_bottom)
    
    picture
end

puts(addBorder(["abc", "ded"]))
puts(addBorder(["a"]))