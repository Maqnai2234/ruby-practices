require 'byebug'
require 'benchmark'

class String
  def levenshtein(other)
    return nil if self.nil?
    return nil if other.nil?
    dm = [] #Matrix distance
    max_item = [self.length,other.length].max
    dm[0] = (0..max_item + 1).collect {|i| i * 1}
    for i in 0..max_item do
      dm[i + 1] = [i + 1] + ([0] * (dm[0].count - 1))
    end
    
    for i in 1..max_item + 1 do
      for j in 1..max_item + 1 do
        if (j == i) && (other[i - 1] == self[j-1])
          dm[i][j] = dm[i-1][j-1]
        else
          dm[i][j] = [(dm[i-1][j-1]),(dm[i-1][j]),(dm[i][j-1])].min + 1
        end
      end
      # puts "STEP #{i}"
      # print_array_bi(dm)
    end
    # puts "\n Se necesitan #{dm[self.length][other.length]} cambios para que #{self} se convierta en #{other}"
  end

  def levenshtein_2(other)
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
    distance[self.size][other.size]
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
  bm.report { "a".levenshtein("sdfasdasdasdsd") }
  bm.report { "a".levenshtein_2("sdfasdasdasdsd") }
end