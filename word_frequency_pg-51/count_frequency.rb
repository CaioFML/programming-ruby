require_relative "words_from_string"

def count_frequency(word_list)
  counts = Hash.new(0)
  word_list.each do |word|
    counts[word] += 1
  end
  counts
end
