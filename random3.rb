#Enumerable Methods
#array
# => .each
# => .each_with_index
#string
# => .each_char
# => .each_char.with_index

old_ways_months = ["Jan", "Feb", "Mar", "Apr"]
i = 0
while i < old_ways_months.length
  month = old_ways_months[i]
  puts month
  i += 1
end
puts
puts

months = ["Jan", "Feb", "Mar", "Apr"]

months.each { |month| puts month}
puts
months.each_with_index do |ele, idx|
  puts ele
  puts idx
  puts "---"
end

#string

sentence = "hello world"

sentence.each_char do |char|
  puts char
end




puts
sen = "hello world"
sen.each_char.with_index do |char, idx|
  puts char
  puts idx
  puts "----"
end
