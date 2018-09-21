#Convert Binary, octal and Hexadecimal to Number Integer

#The tag 0b is for binary

"0b111".to_i # returns 7 and it´s same
Integer("0b111")

#or 

"1110".to_i(2) 


#The tag only 0 is for octal

"0111".to_i #return 73 and it´s same
Integer("0111")

#or

"111".to_i(8)

#The tag 0x is for hexadecimal 

"0x111".to_i #returns 291 and it´s same
Integer("0x111") #or
"111".to_i(16) 

#to_i for default is in base 10


