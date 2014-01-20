def translate(var)
  vowels = "aeiou"
  i=0
  var.split("").each do |c|
    break if vowels.include? c
    i += 1
  end
  return var + "ay" if i == 0
  var.slice(i, var.length - i) + var.slice(0, i) + "ay"
end