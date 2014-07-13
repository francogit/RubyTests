class BankAccount
    attr_reader :transactions
    include Enumerable
    include Comparable

    def <=> (other_account)
            self.balance <=> other_account.balance
    end

    def initialize(name)
        @name = name
        @balance = 0
        @transactions = []
    end

    def deposit(amount)
        @transactions.push(amount)
    end

    def withdraw(amount)
        @transactions.push(-amount)
    end

    def balance
        @transactions.inject(0) { |sum, iterator| sum += iterator }
    end

    def each
        @transactions.each{|transaction| yield transaction}
    end
    
    def to_s
        "<#{self.class}:name: #{@name}, balance: #{balance}>"
    end
end

account1 = BankAccount.new('Franco')
account1.deposit(200)

account2 = BankAccount.new('Martin')
account2.deposit(100)

puts "Is account 1 bigger than account 2? = #{account1 > account2}"
    
account3 = BankAccount.new("Pueyo")
account3.deposit(400)
    
puts "Is account 1 between than account 2 and 3? = #{account1.between?(account2, account3)}"