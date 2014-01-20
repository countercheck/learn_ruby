class Array
  def sum
    inject(0) {|sum, n| sum + n}
  end

  def square
    map { |i| i ** 2 }
  end
  
  def square!
    map! { |i| i ** 2 }
  end
end