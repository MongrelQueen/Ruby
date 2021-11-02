#range enumerable
#(start..end).each iterate from start to end inclusive
#(start...end).each iterate from state to end excluding

(1..5).each { |num| puts num }
puts
[1..5].each { |num| puts num }
puts
(1...5).each { |num| puts num }
puts

def fizzbuzz(max)
  arr = []
  (1...max).each do |num|
    if num % 3 == 0 && num % 5 != 0
      arr << num
    end
    if num % 3 != 0 && num % 5 == 0
      arr << num
    end
  end
  return arr
end

print fizzbuzz(30)
puts
puts
(0...4).each { puts "hi" }
puts
4.times { puts 'hi' }
puts
puts

def to_initials(name)
  ini = ""
  parts = name.split(" ")
  parts.each { |derp| ini += derp[0] }
  return ini
end

puts to_initials("Kelvin Bridges")
puts to_initials("Michaela Yamamoto")
puts to_initials("Mary La Grange")
puts
puts









def first_in_array(arr, el1, el2)
  if arr.index(el1) < arr.index(el2)
    return el1
  else
    return el2

end

#puts first_in_array(["a", "b", "c", "d"], "d", "b"); # => "b"
#puts first_in_array(["cat", "bird" ,"dog", "mouse" ], "dog", "mouse"); # => "dog"
end


def abbreviate_sentence(sent)
  words = sent.split(" ")
  words.each do |word|
    if word.length > 4

    else

    end
    end
  end


end

puts abbreviate_sentence("follow the yellow brick road") # => "fllw the yllw brck road"
puts abbreviate_sentence("what a wonderful life")        # => "what a wndrfl life"
