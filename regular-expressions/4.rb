#LookBehing with genetic Sequence

gene = 'GATTACAAACTGCCTGACATACGAA'
seqs = gene.scan(/T(\w{4})/)

# seqs is: [[“TACA”], [“GCCT”], [“ACGA”]]

text = "
<body> <h1>This is a heading</h1>
<p> This is a paragraph with some
<i>italics</i> and some <b>boldface</b>
in it…</p>
</body>
"

pattern = /(?:^|(?<=>))([^<]*)/x
puts text.gsub(pattern) {|s| s.upcase }

# Output:
# <body> <h1>THIS IS A HEADING</h1>
# <p>THIS IS A PARAGRAPH WITH SOME
# <i>ITALICS</i> AND SOME <b>BOLDFACE</b>
# IN IT…</p>
# </body>