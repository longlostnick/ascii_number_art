#! /Users/nick/.rbenv/shims/ruby

class Ascii

  FONT = <<-MARKER
 d888   .d8888b.  .d8888b.     d8888 888888888  .d8888b. 8888888888 .d8888b.  .d8888b.  .d8888b. 
d8888  d88P  Y88bd88P  Y88b   d8P888 888       d88P  Y88b      d88Pd88P  Y88bd88P  Y88bd88P  Y88b
  888         888     .d88P  d8P 888 888       888            d88P Y88b. d88P888    888888    888
  888       .d88P    8888"  d8P  888 8888888b. 888d888b.     d88P   "Y88888" Y88b. d888888    888
  888   .od888P"      "Y8b.d88   888      "Y88b888P "Y88b 88888888 .d8P""Y8b. "Y888P888888    888
  888  d88P"     888    8888888888888       888888    888  d88P    888    888       888888    888
  888  888"      Y88b  d88P      888 Y88b  d88PY88b  d88P d88P     Y88b  d88PY88b  d88PY88b  d88P
8888888888888888  "Y8888P"       888  "Y8888P"  "Y8888P" d88P       "Y8888P"  "Y8888P"  "Y8888P" 
  MARKER

  def self.output_character(number)
    art = []

    8.times do |n|
      art << self.get_line(number, n)
    end

    art.join("\n") + "\n"
  end

  def self.get_line(number, line)
    number_line = ""
    font_line = FONT.split("\n")[line]

    number.to_s.each_char do |digit|
      digit = digit.to_i
      start, finish = self.get_pos(digit)
      number_line << font_line[start..finish]
    end

    number_line
  end

  def self.get_pos(digit)
    if digit == 1
      [0, 6]
    else
      start = (digit-2)*10 + 7
      finish = start + 9
      [start, finish]
    end
  end

end
