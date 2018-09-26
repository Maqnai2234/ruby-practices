#Using Quantifiers

pattern = /ax?b/
pat2 = /a[xy]?b/

pattern =~ "ab"
pattern =~ "acb" #nil
pat2 =~ "ayb"

pattern2 = /Huzzah(!+)?/
pattern2 =~ "Huzzah"
pattern2 =~ "Huzzah!!!!!"

#Another personal example

pattern3 = /Ol(e+)(!+)?/
pattern3 =~ "Oleeeee"
pattern3 =~ "Oleee!!!"

#if you want a check a number for Country

number = "+1-51-951444993"
check_pattern = /.\d-\d{2}-\d{9}/

check_pattern =~ number
