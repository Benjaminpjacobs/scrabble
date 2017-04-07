require 'pry'
class WordFinder
  def words
    File.read('/usr/share/dict/words').split("\n")
  end

  def for_letters(letters)
    words.select do |word|
      i = word.length
      letter_combos(letters, i).include?(word.split('').sort)
    end
  end

  def for_letters_with(letters, letter)
    words.select do |word|
      i = word.length
      letter_combos(letters, i).include?(word.split('').sort) && word.include?(letter)
    end
    
  end

  def letter_combos(letters, i)
   letters.sort.combination(i).to_a
  end
end
