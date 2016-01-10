require './lib/platinizer'
require 'minitest/autorun'
require 'minitest/pride'

class PlatinizerTest < Minitest::Test
  def setup
    @pig_latin = Platinizer.new
  end

  def test_it_platinizes_one_word_starting_with_one_consonant
    assert_equal 'anana-bay', @pig_latin.platinize("banana")
  end

  def test_it_platinizes_one_word_starting_with_multiple_consonants
    assert_equal 'ap-clay', @pig_latin.platinize("clap")
  end

  def test_it_platinizes_one_word_starting_with_one_vowel
    assert_equal 'apple-way', @pig_latin.platinize("apple")
  end

  def test_it_platinizes_one_word_starting_with_two_vowels
    assert_equal 'aardvark-way', @pig_latin.platinize("aardvark")
  end


end