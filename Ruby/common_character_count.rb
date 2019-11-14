# Given two strings, find the number of common characters between them.

def commonCharacterCount(s1, s2)
    arr1 = s1.split("")
    arr2 = s2.split("")
    count = 0
    
    arr1.each do |character|
        next unless arr2.include?(character)
        index = arr2.find_index(character)
        arr2.delete_at(index)
        count += 1 
    end
    puts "#{count_common_char}"
    count 
end

commonCharacterCount("aabcc", "adcaa")  # Expected output: 3
commonCharacterCount("zzzz", "zzzzzzz") # Expected output: 4
commonCharacterCount("abca", "xyzbac")  # Expected output: 3
commonCharacterCount("a", "b")          # Expected output: 0
commonCharacterCount("a", "aaa")        # Expected output: 1