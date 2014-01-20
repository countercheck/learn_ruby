class Temperature
  def initialize(temperature)
    @temperature = temperature
  end

  def to_fahrenheit
    return @temperature[:f] if @temperature[:f]
    @temperature[:c] * 9 / 5 +32
  end
  
  def to_celsius
    return @temperature[:c] if @temperature[:c]
    (@temperature[:f] - 32) * 5 / 9
  end

  def self.in_celsius(temp)
    new({c: temp})
  end

  def self.in_fahrenheit(temp)
    new({f: temp})
  end

end

class Celsius < Temperature
  def initialize(temp)
    @temperature = {c: temp}
  end
end

class Fahrenheit < Temperature
  def initialize(temp)
    @temperature = {f: temp}
  end
end