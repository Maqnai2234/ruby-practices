#Searching in Strings

str = "Alexei mamani"
pos1 = str.index(?E)
pos2 = str.index("xei")
pos3 = str.index(/ni/)
pos4 = str.index(?W) #nil
pos5 = str.index(/joli/) #nil

# the method rindex is starts search from right side

pos6 = str.rindex("ani")

# the include? method

pos7 = str.include? ?A # true
pos8 = str.include? "ani" #true

# the method scan

str1 = "abracadabra"
sub1 = str1.scan(/a./)
#["ab","ac","ad","ab"]

sub1 = str1.scan(/a./) do |x|
  puts "Print: #{x}"
end