# create a class
class Computer
    @@users = {}

      def initialize(username, password)
      @username = username
      @password = password
      @files = {} # an empty hash to keep track of our files later

    # @@users hash to keep usernames as keys & password as the associated value
      @@users[username] = password 
      end

      def create(filename)
      time = Time.now
      @files[filename] = time
      puts "A new file was created"
      end

    # since @@users is a class var, use a class method to grab it
      def Computer.get_users
      return @@users
      end
end

# create a new instance of Computer; store it in a new variable
my_computer = Computer.new("Jen", "mstdf")
    