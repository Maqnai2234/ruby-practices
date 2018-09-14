#Substrings

str = "Humpty Dumpty"
sub1 = str[7,4]
sub2 = str[7,99]
sub3 = str[10,-4]

sub4 = str[-7,6]

sub5 = str[4..8]
sub6 = str[-7,-1]

sub7 = str[/H....y/]

sub8 = str["umpty"]
sub8 = str["umpy"]

sub9 = str[0]
sub10 = str[1]
sub11 = str[99]

str[7,7] = "Holi"