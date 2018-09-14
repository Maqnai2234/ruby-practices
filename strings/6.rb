#Each bytes and char

str = "ABC"

str.each_byte {|byte| print byte, " "}

str.each_char {|char| print char, " "}

chars = str.scan(/./)
chars.each {|char| print char, " "}