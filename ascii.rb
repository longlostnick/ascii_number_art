#! /Users/nick/.rbenv/shims/ruby

class Ascii

  NUM_TO_ART = {
    "1" => "one"
  }

  def self.output_character(number)
    art = ""
    number.to_s.each_char do |c|
      word = self.num_to_art(c)
      char = AsciiArt.send word
      art += char
    end
    art
  end

  def self.num_to_art(number)
      puts number
    NUM_TO_ART[number.to_s]
  end

end
