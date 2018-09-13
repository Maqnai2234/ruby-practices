#Process a line at the time

str = "Hola \ncomo estan soy otra linea\nyo tambien soy otra linea nueva
Aunque tambien aqui hay otra linea pero es la ultima"

num = 1
str.each_line do |line|
  puts "Linea #{num}: #{line}"
  num += 1
end

puts "\n-----Aqui uniendo dos metodos-----\n "

str.each_line.with_index do |line, num|
  puts "Linea #{num + 1}: #{line}"
end