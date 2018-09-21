#Compressing strings

require 'zlib'
include Zlib

long_string = ("abcde"*71 + "defghi"*79 + "ghijkl"*113)*371

string_1 = Deflate.deflate(long_string, BEST_SPEED)
string_2 = Deflate.deflate(long_string)
string_3 = Deflate.deflate(long_string, BEST_COMPRESSION)
