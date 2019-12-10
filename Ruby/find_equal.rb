# Given unsorted array of integers, check if it contains at least two equal numbers.
require 'set'
def findEqual(sequence)
    unique = Set.new
    sequence.each do |num|
        return true if unique.include?(num)
        unique.add(num)
    end
    false
end

puts(findEqual([1, 3, 2, 1]))  # Expected output: true
puts(findEqual([1, 3, 2]))  # Expected output: false
puts(findEqual([1, 4, 10, 4, 2]))  # Expected output: true
puts(findEqual([239]))  # Expected output: false
puts(findEqual([239, 239]))  # Expected output: true