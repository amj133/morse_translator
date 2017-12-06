require './lib/translate'
require 'minitest/autorun'
require 'minitest/pride'

class TranslateTest < Minitest::Test


  def setup
    @translator = Translate.new
  end

  def test_it_exists
    assert_instance_of Translate, @translator
  end


  def test_eng_to_morse_for_lowercase
    assert_equal "......-...-..--- .-----.-..-..-..",
      @translator.eng_to_morse("hello world")
  end


  def test_eng_to_morse_case_insensitive
    assert_equal "......-...-..--- .-----.-..-..-..",
      @translator.eng_to_morse("Hello World")
  end


  def test_eng_to_morse_with_numbers
    assert_equal "-......-.. .-.-.. ...-- ..........--....",
      @translator.eng_to_morse("There are 3 ships")
  end

  # $ translator.eng_to_morse("Hello World")
  # => "......-...-..--- .-----.-..-..-.."
  # $ translator.eng_to_morse("There are 3 ships")
  # => "-......-.. .-.-.. ...-- ..........--...."
end
