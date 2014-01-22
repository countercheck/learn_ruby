require 'rspec'
require_relative 'tweet'

describe Tweet do
  it "should accept a string" do
    c = Tweet.new("")
    expect(c.text).to_not be nil
  end

  it "should return a string" do
    c = Tweet.new("deadbeef")
    expect(c.text.class).to be String 
  end

  describe "#word_count" do
    it "should return the word count of the tweet" do
      c = Tweet.new("Have fun")
      expect(c.word_count).to eq(2)
    end
  end
end

