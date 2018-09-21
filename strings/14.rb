#the encoding rot13

def rot13(str)
  str.tr("A-Ma-mN-Zn-z", "N-Zn-zA-Ma-m")
end
string = "Hola A todos"
puts rot13(string)
puts rot13("Ubyn N gbqbf")

puts rot13(rot13(string))