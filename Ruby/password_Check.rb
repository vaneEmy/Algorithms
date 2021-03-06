# A password is complex enough, if it meets all of the following conditions:
#
# its length is at least 5 characters;
# it contains at least one capital letter;
# it contains at least one small letter;
# it contains at least one digit.
#
# Determine whether a given password is complex enough.

def passwordCheck(inputString)
    inputString.match(/(?=.*[A-Z]+)(?=.*[a-z]+)(?=.*\d).{5,}/) ? true :  false
end

puts(passwordCheck("my.Password123")) #Expected output: true
puts(passwordCheck("my.password123")) #Expected output: false
puts(passwordCheck("aaAZ0")) #Expected output: true
puts(passwordCheck("AAAZ0")) #Expected output: false
puts(passwordCheck("fdhifeiUHDhfiue")) #Expected output: false
puts(passwordCheck("fdhifeiUHDhf1ue")) #Expected output: true
puts(passwordCheck("oO0")) #Expected output: false
puts(passwordCheck("11llI")) #Expected output: true
puts(passwordCheck("zfERIav.;{wa]@#")) #Expected output: false
puts(passwordCheck("...............")) #Expected output: false
