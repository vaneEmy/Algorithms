# You are standing at a magical well. 
# It has two positive integers written on it: a and b. 
# Each time you cast a magic marble into the well, it gives you a * b dollars and then both a and b increase by 1. 
# You have n magic marbles. How much money will you make?

def magicalWell(a, b, n)
    money = 0
    n.times do |x|
        money += a*b 
        a += 1
        b += 1
    end
    money
end

puts(magicalWell(1, 2, 2))  # Expected output:   8
puts(magicalWell(1, 1, 1))  # Expected output:   1
puts(magicalWell(6, 5, 3))  # Expected output: 128
puts(magicalWell(1601, 337, 0))  # Expected output: 0
puts(magicalWell(1891, 352, 0))  # Expected output: 0
puts(magicalWell(1936, 1835, 5))  # Expected output: 17800540
puts(magicalWell(957, 57, 2))  # Expected output: 110113
puts(magicalWell(687, 1337, 0))  # Expected output: 0
