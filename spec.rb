#! /Users/nick/.rbenv/shims/ruby

require 'rspec'
require_relative 'ascii_def'
require_relative 'ascii'

describe "ASCII ART THING" do

  describe "art" do

    it "accepts a number" do
      AsciiArt.should_receive(:send).once.with("one")
      Ascii.output_character(1)
    end

    it "returns ascii art" do
      Ascii.output_character(1).should eq <<-MARKER
 d888  
d8888  
  888  
  888  
  888  
  888  
  888  
8888888
      MARKER
    end

    it "works with double digit numbers" do
      Ascii.output_character(11).should eq <<-MARKER
 d888   d888  
d8888  d8888  
  888    888  
  888    888  
  888    888  
  888    888  
  888    888  
88888888888888
      MARKER
    end

  end

  describe "num_to_art" do

    it "converts an integer to a string" do
      Ascii.num_to_art(1).should eq("one")
    end

  end

end

