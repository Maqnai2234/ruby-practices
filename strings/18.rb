class String
  def levenshtein(other)
    return nil if self.nil?
    return nil if other.nil?
    if other == self
      return 0
    else
    end
  end
end

"hola".levenshtein("gola")