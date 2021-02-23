# get the user's input
puts "Enter text to search through: "
text = gets.chomp

puts "Enter word to redact: "
redact = gets.chomp

# split the text into words
words = text.split(" ")

# redact condition
words.each do |word|
    if word != redact
        print word + " "
    else
        print "REDACTED "
    end
end