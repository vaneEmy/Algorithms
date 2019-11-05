#  Note: Write a solution that only iterates over the string once and uses O(1) additional memory, 
#  since this is what you would be asked to do during a real interview.

# Given a string s consisting of small English letters, 
# find and return the first instance of a non-repeating character in it. 
# If there is no such character, return '_'.

def firstNotRepeatingCharacter(s)
    characters = s.split("")
    new_characters = characters.clone
    number_of_characters = 0
    new_array = []

    characters.each do |character|
        number_of_characters = new_characters.count(character)
        if number_of_characters == 1
            return character
        else
            new_characters.delete(character)
        end
    end
    "_"
end

puts(firstNotRepeatingCharacter("abacabad")) # Expected output: 'c'
puts(firstNotRepeatingCharacter("abacabaabacaba")) # Expected output: '_'
puts(firstNotRepeatingCharacter("z"))  # Expected output: 'z'
puts(firstNotRepeatingCharacter("bcb")) # Expected output: 'c'
puts(firstNotRepeatingCharacter("bcccccccb")) # Expected output: '_'
puts(firstNotRepeatingCharacter("abcdefghijklmnopqrstuvwxyziflskecznslkjfabe")) # Expected output: 'd'