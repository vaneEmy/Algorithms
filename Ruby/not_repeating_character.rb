#  Note: Write a solution that only iterates over the string once and uses O(1) additional memory, 
#  since this is what you would be asked to do during a real interview.

# Given a string s consisting of small English letters, 
# find and return the first instance of a non-repeating character in it. 
# If there is no such character, return '_'.

def firstNotRepeatingCharacter(s)
    characters = s.split("")
    number_of_characters = 0

    characters.each do |character|
        number_of_characters = characters.count(character)
        if number_of_characters == 1
            return character
        end
    end
    "_"
end


puts(firstNotRepeatingCharacter("abacabad"))
puts(firstNotRepeatingCharacter("abacabaabacaba"))
puts(firstNotRepeatingCharacter("z"))
puts(firstNotRepeatingCharacter("bcb"))
puts(firstNotRepeatingCharacter("bcccccccb"))
puts(firstNotRepeatingCharacter("abcdefghijklmnopqrstuvwxyziflskecznslkjfabe"))