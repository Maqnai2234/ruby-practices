#How to count any of set of specified characters

s1 = "abracadabra"

a = s1.count("c")
b = s1.count("cad")

c = s1.count("^a")
d = s1.count("^cad")

e = s1.count("a-d")
e = s1.count("^a-d")