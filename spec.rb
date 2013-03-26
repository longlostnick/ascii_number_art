#! /Users/nick/.rbenv/shims/ruby

require 'rspec'
require_relative 'ascii'

describe "Ascii" do

  it "compiles eight lines of ascii" do
    Ascii.should_receive(:get_line).exactly(8).times.and_return("hi")
    Ascii.output_character(1).should eq("hi\nhi\nhi\nhi\nhi\nhi\nhi\nhi\n")
  end

  it "gets a line from the font based on the number" do
    Ascii.get_line(317, 0).should eq(" .d8888b.  d888  8888888888")
  end

  it "generates an entire ascii art number" do
    Ascii.output_character(285).should eq <<-MARKER
 .d8888b.  .d8888b. 888888888 
d88P  Y88bd88P  Y88b888       
       888Y88b. d88P888       
     .d88P "Y88888" 8888888b. 
 .od888P" .d8P""Y8b.     "Y88b
d88P"     888    888       888
888"      Y88b  d88PY88b  d88P
888888888  "Y8888P"  "Y8888P" 
    MARKER
  end

end

