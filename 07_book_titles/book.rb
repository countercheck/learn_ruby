class Book
  attr_reader :title
  
  def title=(string)
    array = []
    small_words = ["and", "the", "a", "in", "of", "an"]
    string.split.each do |word|
      word = word.capitalize unless small_words.include? word
      array << word
    end
    array[0] = array[0].capitalize
    @title = array.join(" ")
  end
end