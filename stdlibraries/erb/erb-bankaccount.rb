

class BankAccount
require 'erb'
    TEMPLATE = <<-TEMPLATE
Bank Account: <%= @name %>
-----------
<% @transaction.each do |transaction| %>.
Transaction: <%= transaction %>
<% end %>
-----------
TEMPLATE
 

    def initialize(name)
        @name = name
        @transactions = []
    end

    def deposit(amount)
        @transactions.push(amount)
    end

    def withdraw(amount)
        @transactions.push(-amount)
    end


    def get_binding
        
    end
    
    def display
        ERB.new(TEMPLATE)//////.result(get_binding)//////
    end
end

account = BankAccount.new("Franco Pueyo")
account.deposit(100)
account.withdraw(2)
account.withdraw(30)
account.deposit(200)
puts account.display