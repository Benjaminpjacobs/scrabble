class Scrabble
  
  def score(word)
    if word.nil? || word.empty?
      0
    else
      ppl = tally_points(word)
      add_points(ppl)
    end
  end

  def tally_points(word)
     word.split('').map{|letter| point_values(letter)}
  end

  def add_points(points_per_letter)
    points_per_letter.inject(&:+)
  end

  def point_values(letter)
    points = {
      "A"=>1, "B"=>3, "C"=>3, "D"=>2,
      "E"=>1, "F"=>4, "G"=>2, "H"=>4,
      "I"=>1, "J"=>8, "K"=>5, "L"=>1,
      "M"=>3, "N"=>1, "O"=>1, "P"=>3,
      "Q"=>10, "R"=>1, "S"=>1, "T"=>1,
      "U"=>1, "V"=>4, "W"=>4, "X"=>8,
      "Y"=>4, "Z"=>10
    }
    points[letter.upcase]
  end

end
