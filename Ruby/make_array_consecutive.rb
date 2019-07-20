def make_array_consecutive(statues)
    statues.sort!
    first_statue = statues.first
    count = 0
    
    for i in statues
       if (i - first_statue  != 0) && (i - first_statue  != 1) 
            count += (i - 1) - first_statue
        end 

        first_statue = i    
    end 
    puts count
end

statues = [6, 2, 3, 8]
#statues = [0, 3]
make_array_consecutive(statues)