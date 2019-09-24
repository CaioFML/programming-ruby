require_relative "words_from_string"
require_relative "count_frequency"

raw_text = %(The problem breaks down into two parts. First, given some text as a String, return a list of words.
             that sounds like an array. Then, build a count for each distinct word. That sounds like a use for a hash
             ---we can index it with the word use the corresponding. entry to keep a count.)

word_list = words_from_string(raw_text)
counts = count_frequency(word_list)
sorted = counts.sort_by { |_word, count| count }
top_five = sorted.last(5)

p word_list
puts "-------"
p counts
puts "-------"
p sorted
puts "-------"
p top_five
puts "-------"
(0..5).each do |i|
  word = top_five[i][0]
  count = top_five[i][1]
  puts "#{word}: #{count}"
end
