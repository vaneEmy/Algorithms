# Little boy's mother didn't buy him a candy, so now he's sulky and moody. 
# He turns everything you say upside down! If you say that something is true, he'll say it's false, and vice versa.
# Find out what the boy will say about the statement you're about to make.

def sulkyBoy(statement)
    statement == true ? false : true
end

puts(sulkyBoy(true))
puts(sulkyBoy(false))