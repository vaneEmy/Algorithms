# Return a sorted array of all non-negative numbers less than the given n which are divisible both by 3 and 4.

def threeAndFour(n)
    (0..n).select { |num| num % 3 == 0 and num % 4 == 0 }
end

puts(threeAndFour(30)) # Expected outpu: [0, 12, 24]
puts(threeAndFour(3))  # Expected outpu: [0]
