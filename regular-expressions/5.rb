str = "a123b45c678"

pattern = /(a\d+)(b\d+)(c\d+)/ 
if pattern =~ str { puts "Matches are '#$1, '#$2','#$3'" }

str.sub(pattern, '1st=\1, 2nd=\2, 3erd=\3')

str.sub(pattern) { "1st=#$1, 2nd=#$2, 3rd=#$3" }

#EACH ARRAY MATCH POSITIONS

pat = /(.+[aiu])(.+[aiu])(.+[aiu])(.+[aiu])/i

refs = pat.match("Fujiyama")

refs.to_a.each {|x| print "#{x}\n"}


## MORE EXAMPLES WITH BEGIN, END AND RANGES

str = "alpha beta gamma delta epsilon"

pat = /(b[^ ]+ )(g[^ ]+ )(d[^ ]+ )/

refs2 = path.match(str)

p1 = refs2.begin(1)
p1 = refs2.end(1)

refs2.offset(0)

before = refs2.pre_match
after = refs2.pre_match
