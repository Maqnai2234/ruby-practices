#the encoding rot13

def rot13(str)
  str.tr("A-Ma-mN-Zn-z", "N-Zn-zA-Ma-m")
end

puts rot13("Hola A todos")
puts rot13("Ubyn N gbqbf")