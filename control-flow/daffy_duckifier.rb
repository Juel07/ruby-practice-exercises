# prompt user for text
puts "Enter your text"

# collect user's input
user_input = gets.chomp

# change case to lower case
user_input.downcase!

# replace "s" with "th"
if user_input.include? "s"
    user_input.gsub!(/s/, "th")
else
    puts "There is no 's your string"
end

# print modified resulting string
puts "Your new string is #{user_input}."