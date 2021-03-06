# Number game

# declare variables to store the number of attempts, correct & wrong answers
turns = 0
correct = 0
wrong = 0

# timestamp the beginning of the game
start = Time.now

# game is repeated 5 times before it ends
while turns < 3
    turns += 1

    # generate two random numbers limited between 1 and 10
    x = Random.rand(1..10)
    y = Random.rand(1..10)

    puts "#{x} + #{y} = "

    # get the user's answer
    answer = gets.to_i

    if (answer === x + y)
        puts "Right!"
        correct += 1
    else
        puts "Wrong!"
        wrong += 1
    end

    # calculate the score in %
    score = 100 * correct/turns
end

# output the score after the loop
puts "Rights #{correct} & Wrongs #{wrong} & Score #{score}%"

# calculate the number of seconds that it takes to run the game
duration = Time.now - start

puts "Total time taken is #{duration} seconds"

# calculate the average time it takes to respond to each problem
puts "You spent #{duration/turns} seconds per problem"