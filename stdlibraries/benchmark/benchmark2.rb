require 'benchmark'

repetition = 1000

class BankAccount
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
end

BankStruct = Struct.new('BankStruct', :name, :transactions)

Benchmark.bm(20) do |x|
    x.report "BankAccount Class" do
        repetition.times do
            account = BankAccount.new('Franco Pueyo')
            account.deposit(100)
            account.withdraw(50)
        end
    end
    
    x.report "BankAccount Struct" do
        repetition.times do
            account = BankStruct.new('Franco Pueyo', [])
            account.name = 'Franco Pueyo'
            account.transactions.push(100)
            account.transactions.push(-50)
        end
    end
end