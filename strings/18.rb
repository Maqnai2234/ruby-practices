require 'byebug'
require 'benchmark'

class String
  def levenshtein(other)
    other = other.to_s
    distance = Array.new(self.size + 1, 0)
    (0..self.size).each do |i|
      distance[i] = Array.new(other.size + 1)
      distance[i][0] = i
    end
    (0..other.size).each do |j|
      distance[0][j] = j
    end

    (1..self.size).each do |i|
      (1..other.size).each do |j|
        distance[i][j] = [distance[i - 1][j] + 1,
                          distance[i][j - 1] + 1,
                          distance[i - 1][j - 1] + ((self[i - 1] == other[j - 1]) ? 0 : 1)].min
      end
    end
    print_array_bi(distance)
    distance[self.size][other.size]
  end

  def levenshtein_2(other)
    other = other.to_s
    min = [other.length, self.length].min
    rest = (other.length - self.length).abs

    str_in = self[0..min-1]
    other = other[0..min-1]
    distance = Array.new(str_in.size + 1, 0)
    (0..str_in.size).each do |i|
      distance[i] = Array.new(other.size + 1)
      distance[i][0] = i
    end
    (0..other.size).each do |j|
      distance[0][j] = j
    end
    (1..str_in.size).each do |i|
      (1..other.size).each do |j|
        distance[i][j] = [distance[i - 1][j] + 1,
                          distance[i][j - 1] + 1,
                          distance[i - 1][j - 1] + ((str_in[i - 1] == other[j - 1]) ? 0 : 1)].min
      end
    end
    print_array_bi(distance)
    distance[str_in.size][other.size] + (rest)
  end
end

def print_array_bi(arr)
  arr.each do |f|
   f.each do |g|
    printf("%s|", g.to_s.center(6))
   end
   printf("\n")
  end

  puts "-" * ((arr.count * 6) + arr.count + 1) + "\n"
end

Benchmark.bm do |bm|
  bm.report { puts "aaaaa".levenshtein("ba") }
  bm.report { puts "a".levenshtein_2("sdfasdasdasdsd") }
end