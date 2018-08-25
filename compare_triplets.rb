# Find the comparison points by comparin a[0] with b[0], a[1] with b[1] and so on.

def compareTriplets(a, b)
    if !a.empty? && !b.empty?
        new_array = []
        points_from_triplet_one, points_from_triplet_two, count = 0, 0, 0
        
        if (1..100) === a[count] && (1..100) === b[count] 
            while count < a.size
                points_from_triplet_one += 1 if a[count] > b[count]
                points_from_triplet_two += 1 if a[count] < b[count]
                count += 1
            end
        end
        new_array =  [points_from_triplet_one, points_from_triplet_two]
    end
end
alice = [5, 6, 7]
bob = [3, 6, 10]
puts "The result is: ", compareTriplets(alice, bob)