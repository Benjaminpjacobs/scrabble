gem 'minitest'
require_relative '../lib/word_finder'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class WordFinderTest < Minitest::Test
  def test_it_returns_words
    wf = WordFinder.new
    assert_equal 235886, wf.words.count
  end

  def test_it_can_find_words_for_letters
    wf = WordFinder.new
    actual = wf.for_letters(['a', 'c', 'e']) 
    expected = ["a", "ae", "ca", "ce", "ea", "ace"]
    assert_equal expected, actual
  end

  def test_it_can_find_words_for_letters
    # skip
    wf = WordFinder.new
    actual = wf.for_letters(['r', 'e', 'x', 'a', 'p', 't', 'o']).count
    expected = 141
    assert_equal expected, actual
  end

  def test_it_can_find_words_with
    wf = WordFinder.new
    actual = wf.for_letters_with(['r', 'e', 'x', 'a', 'p', 't', 'o'], 'r').count
    expected = 85
    assert_equal expected, actual
  end
end
