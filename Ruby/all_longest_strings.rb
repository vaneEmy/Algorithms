# Given an array of strings, return another array containing all of its longest strings.

def allLongestStrings(inputArray)
    longest_strings = Hash.new { |k,v| k[v] = []}
    longest_size = 0

    inputArray.each do |input|
        if longest_strings.has_key?(input.size)
            value = longest_strings[input.size]
            value.push(input)
        else
            longest_strings[input.size].push(input)
        end
    end

    longest_strings.each_key { |key| longest_size = key if key > longest_size }

    longest_strings[longest_size]
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