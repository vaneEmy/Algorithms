def isSuspiciousRespondent(ans1, ans2, ans3)
    ans1 == ans2 && ans1 == ans3 ? true : false
end


puts(isSuspiciousRespondent(false, false, false)) # Expected output true
puts(isSuspiciousRespondent(true, true, false)) # Expected output false
puts(isSuspiciousRespondent(true, false, false)) # Expected output false
puts(isSuspiciousRespondent(true, true, true)) # Expected output true
puts(isSuspiciousRespondent(false, true, false)) # Expected output fale