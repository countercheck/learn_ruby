class Dictionary
  attr_accessor :entries
  
  def initialize
    @entries = {}
  end
  
  def add(addition)
    @entries.merge!(addition) if addition.is_a?(Hash)
    @entries[addition] = nil if addition.is_a?(String)
  end

  def keywords
    @entries.keys
  end

  def include?(key)
    @entries.keys.include? key
  end

  def find(user_key)
    return {} if @entries[user_key] == nil
    temp_hash = {}
    # return { user_key => @entries[user_key]}
    @entries.each do |key, value|
      temp_hash.merge!({ key => value}) if key.include? user_key
    end
    return temp_hash
  end

end