s1 = "New World Dictionary"
s2 = "New World Symphony"
s3 = "New World Order"

#Positive Lookahead
reg = /New World(?= Dictionary| Symphony)/
m1 = reg.match(s1)
m.to_a[0]
m2 = reg.match(s2)
m.to_a[0]
m3 = req.match(s3)

#Negative Lookahead
reg2 = /New World(?! Symphony)/