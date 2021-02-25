# get user input
puts "Enter a phrase you'd like to analyze: "
text = gets.chomp

# split input text into words
words = text.split

# create a hash with default value = 0
frequencies = Hash.new(0)

# iterate through each word, increase count by 1 for every intsance of word (assume the word is a key in the hash)
words.each { |word| frequencies[word] += 1 }

# sort the hash, smallest to largest by count, .sort_by returns an array of arrays
frequencies = frequencies.sort_by { |word, count| count }

# reverse the array order so that the count is largest to smallest
frequencies.reverse!

# convert the value from num to str using .to_s before concatenating
frequencies.each { |word, count| puts word + " " + count.to_s }