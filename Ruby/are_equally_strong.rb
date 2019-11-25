# Call two arms equally strong if the heaviest weights they each are able to lift are equal.
# Call two people equally strong if their strongest arms are equally strong (the strongest arm can be both the right and the left), 
# and so are their weakest arms.
# Given your and your friend's arms' lifting capabilities find out if you two are equally strong.

def areEquallyStrong(yourLeft, yourRight, friendsLeft, friendsRight)
    heavy = yourLeft > yourRight ? yourLeft : yourRight
    weak = yourRight < yourLeft ? yourRight : yourLeft
    friend_heavy = friendsLeft > friendsRight ? friendsLeft : friendsRight
    friend_weak = friendsRight < friendsLeft ? friendsRight : friendsLeft
    (heavy == friend_heavy) && (weak == friend_weak)
end


puts(areEquallyStrong(19, 15, 5, 20))  #Expected output: false
puts(areEquallyStrong(10, 5, 5, 10))  #Expected output: true
puts(areEquallyStrong(15, 10, 15, 9))  #Expected output: false
puts(areEquallyStrong(15, 10, 15, 10))  #Expected output: true
puts(areEquallyStrong(10, 15, 15, 10))  #Expected output: true
puts(areEquallyStrong(10, 20, 10, 20))  #Expected output: true
puts(areEquallyStrong(5, 20, 20, 5))  #Expected output: true
puts(areEquallyStrong(20, 15, 5, 20))  #Expected output: false
puts(areEquallyStrong(5, 10, 5, 10))  #Expected output: true
