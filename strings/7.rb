#Formatting String

name = "alexei"
age = 28
str = sprintf("hi, %s... I see you're %d years old.", name, age)

str = sprintf("%-20s|%3d", name, age)

str = "%-20s %3d" % [name, age]

str = "I'm a String"
s1 = str.ljust(20)
s2 = str.rjust(20)
s3 = str.center(20)