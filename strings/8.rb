#Uppercase and LowerCase

s1 = "Lima, Perú"
s2 = s1.upcase
s3 = s2.downcase
s4 = s3.capitalize

s5 = "otro string, PERO ESTE ES RARO"

s6 = s5.swapcase

#Dettect lowercase characters

if string =~ /[a-z]/
  puts "Este string tiene caracteres con minuscula"
end

if string =~ /[A-Z]/
  puts "Este string tiene caracteres con Mayusculas"
end

if string =~ /[a-zA-Z]/
  puts "Este string contiene caracteres entre mayusculas y minusculas"
end

if string[0] =~ /[A-Z]/
  puts "La primera letra de este string es una mayuscula."
end