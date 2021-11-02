#<< = shovel - adds one to the end of an array
#.push - push you can add lists of elements
#.pop - removes the last element of an array
#.unshift - adds element to front of array
#.shift - removes element from front of array
#.index(ele) - evaluates to the index where ele is found
#.include?(ele) - evaluates to a boolean indicating if ele is found
#.reverse - evals to a new reverse version of string or array
#.reverse! - reverses an array/string in place


def is_palindrome(word)
  return word == word.reverse
end

def longer_pal(newword)
  i = 0
  new = ""
  while i < newword.length
    char = newword[i]
    new = char + new
    i += 1
  end
  return newword == new
end

puts longer_pal("madam")
puts longer_pal("hello")
puts
puts is_palindrome("balloon")
puts is_palindrome("racecar")
puts
arr = [1, 2, 3, 4]
print arr
puts
print arr.reverse
puts
print arr
puts
puts
arr = [5, 6, 7, 8]
print arr
arr.reverse!
puts
print arr
puts
puts
arr = [13, 11, 333, 444, 1234]
print arr
puts
print arr.reverse!
puts
str = "Today I win the lottery"
puts str.reverse
