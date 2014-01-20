def echo(x)
  x
end

def shout(x)
  x.upcase
end

def repeat(x, num = 2)
  ("#{x} " * num).chop 
end

def start_of_word(x, y)
  x.slice(0,y)
end

def first_word(x)
  x.split[0]
end

def titleize(x)
  small = ["and", "the", "a", "over"]
  x = x.split
  x[0].capitalize!
    x.each do |y| 
      y.capitalize! unless small.include? y
  end
  x.join " "
  
end