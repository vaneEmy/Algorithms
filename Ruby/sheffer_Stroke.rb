# The NAND operation (also known as a Sheffer stroke) is an operation on two logical values. 
# It produces true, if - and only if - at least one of the operands is false.
# Given two boolean values a and b, return the value of A NAND B

def shefferStroke(a, b)
    a == false || b == false ? true : false
end

puts(shefferStroke(true, true)) # Expected output: false  
puts(shefferStroke(false, true)) # Expected output: true    
puts(shefferStroke(true, false)) # Expected output: true