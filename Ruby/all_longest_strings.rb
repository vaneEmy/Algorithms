# Given an array of strings, return another array containing all of its longest strings.

def allLongestStrings(inputArray)
    strs = Hash.new { |k,v| k[v] = []}
    longest = 0

    inputArray.each { |str| strs.has_key?(str.size) ? strs[str.size].push(str) : strs[str.size].push(str) }

    strs.each_key { |key| longest = key if key > longest }

    puts "#{strs[longest]}"
    strs[longest]
end


puts(allLongestStrings(["aba", 
                    "aa", 
                    "ad", 
                    "vcd", 
                    "aba"])) # Expected Output:["aba", "vcd", "aba"] 

puts(allLongestStrings(["aa"])) # Expected Output:["aa"] 

puts(allLongestStrings(["abc", 
                    "eeee", 
                    "abcd", 
                    "dcd"])) # Expected Output: ["eeee", "abcd"] 