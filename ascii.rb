#! /Users/nick/.rbenv/shims/ruby

class Ascii

  NUM_TO_WORD = {
    "1" => "one"
  }

  def self.output_character(number)
    art = nil
    number.to_s.each_char do |c|
      word = self.num_to_word(c)
      char = AsciiArt.send word
      art = art.nil? ? char : self.append_char(art, char)
    end
    art
  end

  def self.append_char(art, char)
    art_lines  = art.split("\n")
    char_lines = char.split("\n")
    art.each_line.with_index do |l,i|
      # apparently l is only a reference
      art_lines[i] += char_lines[i]
    end
    art_lines.join("\n") + "\n"
  end

  def self.num_to_word(number)
    NUM_TO_WORD[number.to_s]
  end

end
