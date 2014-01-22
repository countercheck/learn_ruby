class Tweet
  attr_reader :text
  def initialize(text)
    @text = text
  end

  def word_count
    @text.split.length
  end
  
end