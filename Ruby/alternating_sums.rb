# Several people are standing in a row and need to be divided into two teams.
# The first person goes into team 1, the second goes into team 2, 
# the third goes into team 1 again, the fourth into team 2, and so on.
#
# You are given an array of positive integers - the weights of the people. 
# Return an array of two integers, where the first element is the total weight of team 1,
# and the second element is the total weight of team 2 after the division is complete.
#

def alternatingSums(a)
    team_one, team_two = 0, 0
    teams = []

    a.each_with_index do |num, index|
       if index.even? # Par
        team_one += num
       else # odd - impar
        team_two += num
       end
    end
    teams.push(team_one)
    teams.push(team_two)
    
    puts "#{teams}"
end

alternatingSums([50, 60, 60, 45, 70]) # Expected output [180, 105]
alternatingSums([100, 50]) # Expected output [100, 50]
alternatingSums([80]) # Expected output [80, 0]
alternatingSums([100, 50, 50, 100]) # Expected output [150, 150]
alternatingSums([100, 51, 50, 100]) # Expected output [150, 151]