#! /Users/nick/.rbenv/shims/ruby

class Ascii

  NUM_TO_WORD = {
    "1" => "one"
  }

  def self.output_character(number)
    art = ""
    number.to_s.each_char do |c|
      word = self.num_to_word(c)
      char = AsciiArt.send word
      art += char
    end
    art
  end

  def self.num_to_word(number)
    NUM_TO_WORD[number.to_s]
  end

end
