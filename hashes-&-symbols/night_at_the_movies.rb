# create a hash to store movie titles and respective ratings
movies = {
    Shrek: 3.7,
    Titanic: 4.6,
    Parasite: 4.8
}

# prompt user for input
puts "What would you like to do?"
    puts "-- Type 'add' to add a movie."
    puts "-- Type 'update' to update a movie."
    puts "-- Type 'display' to show all movies."
    puts "-- Type 'delete' to delete a movie."

choice = gets.chomp

# case for each input option

case choice

when "add"
    puts "What movie would you like to add?"
    title = gets.chomp

    if movies[title.to_sym].nil? #check to confirm that the movie does not exist in the hash
        puts "What rating does the movie have?"
        rating = gets.chomp
        movies[title.to_sym] = rating.to_i

    else
        puts "That movies already exists! It's rating is #{rating}"

    end

when "update"
    puts "Which movie would you like to update?"
    title = gets.chomp

    if movies[title.to_sym].nil?
        puts "That movie does not exist."
        
    else
        puts "What rating does the movie have?"
        rating = gets.chomp
        movies[title.to_sym] = rating.to_i
    end

when "display"
    movies.each { |title, rating|
    puts "#{title}: #{rating}"
}

when "delete"
    puts "Which movie would you like to delete?"
    title = gets.chomp

    if movies[title.to_sym].nil?
        puts "That movie does not exist."
        
    else
        movies.delete(title.to_sym)
    end

else
    puts "Error!"
end