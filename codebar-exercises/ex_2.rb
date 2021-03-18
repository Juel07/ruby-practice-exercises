# Temperature Unit Converter

temp1 = gets.chomp # for day 1
temp2 = gets.chomp # for day 2

class Celcius
  def initialize(temp1, temp2)
    @temp1 = temp1
    @temp2 = temp2
  end

  def convert
    @result1 = @temp1.to_i * 1.8 + 32 # convert fahrenheit to celcius
    @result2 = @temp2.to_i * 1.8 + 32
    @answer1 = @result1.round # round to the nearest number
    @answer2 = @result2.round

    puts @answer1.to_s
    puts @answer2.to_s
  end

  def to_s
    puts "Mon | #{@temp1} degrees C | #{@answer1} degrees F"
    puts "Tue | #{@temp2} degrees C | #{@answer2} degrees F"
  end
end

temp = Celcius.new(temp1, temp2)

temp.convert
temp.to_s
