class BankAccount
    def initialize(name)
        @name = name
        @transactions = []
    end
    
    def deposit(amount, options={})
        options[:memo] ||= "Regular deposit."
        @transactions.push({:amount => amount, :memo => options[:memo]})
    end
end

bank_account = BankAccount.new('Franco')
bank_account.deposit(1000)
bank_account.deposit(100, {:memo => "This was a gift."})

puts bank_account.inspect