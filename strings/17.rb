#reverse and remove duplicate characters and remove characters

s1 = "Hola a todos como estan".reverse

#palidropes
if "Oruro".downcase == "Oruro".downcase.reverse
  p "Es una palabra palindrope"
end

#remove duplicate characters

s2 = "bookshelf"

s2.squeeze

#or specified character

s2.squeeze("o")

#remove characters

str3 = "Soy un animal muy grande"

deleted_string = str3.delete("u")