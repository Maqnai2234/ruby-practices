#sub method

s1 = "spam, spam, and eggs"
s2 = s1.sub(/spam/, "bacon")


s3 = s2.sub(/(\w+), (\w+),/,'\2, \1')

s4 = "Don't forget the spam"
s5 = s4.sub(/spam/) {|m| m.reverse}

s4.sub!(/spam/) {|m| m.reverse}