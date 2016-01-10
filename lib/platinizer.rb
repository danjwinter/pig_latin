class Platinizer

  def platinize(word)
    word.chars.each_with_index do |letter, index|
      if vowel?(letter)
        return pigify(letter, index, word)
      end
    end
  end

  def pigify(letter, index, word)
    if index == 0
      word + "-way"
    else
      word[index..-1] + "-" + word[0..index - 1] + "ay"
    end
  end

  def vowel?(letter)
    vowels.include?(letter)
  end

  def vowels
    %w(a e i o u)
  end

  def loop_it
    puts "Are you ready for the PLATINIZER?"
    loop do
      word = gets.chomp
      if word == "exit!"
        puts "Fine, be that ay-way!"
        puts "oodbye-gay!"
        break
      else
        puts platinize(word)
        puts "#{word} just got PLATINIZED! What's next? Wanna exit! ?"
      end
    end
  end

end

if __FILE__ == $0
  pig = Platinizer.new
  pig.loop_it
end

