def reverser
  string = yield
  string = string.split(" ")
  output = []
  string.each do |word|
    output << word.reverse
  end
  output.join(" ")
end

def adder(x = 1)
  yield + x
end

def repeater(x = 1)
  x.times {yield} 
end