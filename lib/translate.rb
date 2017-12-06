
class Translate

  def initialize
    @morse_dict = {
    	"a" => ".-",
    	"b" => "-...",
    	"c" => "-.-.",
    	"d" => "-..",
    	"e" => ".",
    	"f" => "..-.",
    	"g" => "--.",
    	"h" => "....",
    	"i" => "..",
    	"j" => ".---",
    	"k" => "-.-",
    	"l" => ".-..",
    	"m" => "--",
    	"n" => "-.",
    	"o" => "---",
    	"p" => ".--.",
    	"q" => "--.-",
    	"r" => ".-.",
    	"s" => "...",
    	"t" => "-",
    	"u" => "..-",
    	"v" => "...-",
    	"w" => ".--",
    	"x" => "-..-",
    	"y" => "-.--",
    	"z" => "--..",
    	" " => " ",
    	"1" => ".----",
    	"2" => "..---",
    	"3" => "...--",
    	"4" => "....-",
    	"5" => ".....",
    	"6" => "-....",
    	"7" => "--...",
    	"8" => "---..",
    	"9" => "----.",
    	"0" => "-----"
      }
  end

  def eng_to_morse(phrase)
    phrase.chars
    morse_phrase = phrase.chars.map do |letter|
      @morse_dict[letter.downcase]
    end
    morse_phrase.join
  end

  def morse_to_eng(phrase)
    phrase = phrase.split(" ")
    eng_phrase = phrase.map do |morse|
      @morse_dict.key(morse)
    end
    eng_phrase.join
  end

  def from_file(file)
    text = File.read(Dir.pwd + "/lib/" + file)
    eng_to_morse(text)
  end

end
