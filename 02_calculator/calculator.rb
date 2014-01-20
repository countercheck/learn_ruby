def add (x, y)
  x + y
end

def subtract (x,y)
  x - y
end

def sum(x)
  x << 0
  total = 0
  x.each do |num|
    total += num
  end
  total
end