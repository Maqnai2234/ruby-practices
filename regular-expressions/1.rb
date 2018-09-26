#Using Anchors

string = "alexeiXMamaniXcoa"

/Mam/ =~ string
/^ale/ =~ string

/coa$/ =~ string

string2 = "alexei\nmamani\ncoaquira"

/mam/ =~ string2
/coa/ =~ string2
/^mam/ =~ string2

/\Amam/ =~ string2 # nil
/xei\Z/ =~ string2 #nil

str = "esto es una prueba"
str.gsub(/\b/,”|”) # “|esto| |es| |una| |prueba|”
str.gsub(/\B/,”-“) # "e-s-t-o e-s u-n-a p-r-u-e-b-a"