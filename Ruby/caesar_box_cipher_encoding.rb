# Caesar Box is a simple transposition cipher used in the Roman Empire, 
# in which characters of the given message are broken into multiple lines 
# that form a square when stacked up and then read the square column by column.

# Given a message, encode it.

def caesarBoxCipherEncoding(i)
    sqrt = Math.sqrt(i.size)
    arr = Array.new(sqrt){ Array.new(sqrt)}
    iArr = i.split("")
    index = 0
    ms = ''
    
    for i in (0..sqrt-1)
        for j in (0..sqrt-1)
            arr[i][j] = iArr[index]
            index += 1
        end
    end
    
    arr.transpose.each_with_index { |r| r.each { |c| ms += c } }
    ms
end

puts(caesarBoxCipherEncoding("a message")) #Expecte output: "aea sgmse"
puts(caesarBoxCipherEncoding("sixteenletters16")) #Expecte output: "seerietsxnt1tle6"
