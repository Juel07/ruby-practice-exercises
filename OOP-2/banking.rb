# create a class
class Account

    # make the :name and :balance attributes readable but not writeable
      attr_reader :name, :balance
      def initialize(name, balance=100)

        # store the parameters in instance variables
        @name = name
        @balance = balance
      end
      
    # create 2 public methods, one to display the account balance & other to withdraw money from account
      def display_balance(pin_number)
        puts pin_number == pin ? "Balance: $#{@balance}." : pin_error
      end
      
      def withdraw(pin_number, amount)
        if pin_number == pin
          @balance -= amount # subtract amount from the balance
          puts "Withdrew #{amount}. New balance: $#{@balance}."
        else
          puts pin_error
        end
      end
      
    # create 2 private methods; public methods will rely on these
      private
      
      def pin
        @pin = 1200
      end
      
      def pin_error
        "Access denied: incorrect PIN."
      end
end

my_account = Account.new("Eric", 1_000_000)
my_account.withdraw(11, 500_000)
my_account.display_balance(1200)
my_account.withdraw(1200, 500_000)
my_account.display_balance(1200)
    