# Find the comparison points by comparin a[0] with b[0], a[1] with b[1] and so on.

def compareTriplets(a, b)
    if a.size > 0 && b.size > 0
        array_size = a.size
        count = 0
        new_array = []
        points_from_triplet_one = 0
        points_from_triplet_two = 0
        
        while count < array_size
            if (a[count] > 1 && a[count] < 100) && (b[count] > 1 && b[count] < 100) 
                if a[count] >  b[count]
                    points_from_triplet_one += 1
                elsif a[count] < b[count]
                    points_from_triplet_two += 1
                else
                end
                count += 1
                else
                break
            end
        end
        new_array =  [points_from_triplet_one, points_from_triplet_two]
    end
end
alice = [5, 6, 7]
bob = [3, 6, 10]
puts "The result is: ", compareTriplets(alice, bob)