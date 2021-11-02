#array/string slicing
#array[startIdx..endIdx] - grabs eles from startIdx to endIdx inclusive
#array[startIdx...endIdx] grabs eles from startIdx to endIdx excluding
#string.split evaluates to an array
#array.join evaluates to a string

arr = ["a", "b", "c", "d", "e"]
print arr
puts
print arr[1]
puts
print arr[1..3]
puts
print arr[1...3]
puts

str = "bootcamp"
print str[3..-1]
puts
#end of a string is -1 (p), next letter is -2(m), next is -3(a)

puts
str = "follow the yellow brick road"
words = str.split(" ")
puts words
puts str[2]
puts words[1][0]
puts

print str.split(" ")
#.split evaluates to an array
puts
arr = ["hello", "world", "I'm", "winning", "the", "lottery", "tonight"]
puts arr.join(" ")

puts
str = "I'm winning big monies"
chars = str.split("")
print chars
puts

puts
str = "follow the yellow brick road"
print str.split("o").join("X")
puts
