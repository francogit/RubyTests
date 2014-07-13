def say_hello(&block)
    puts "hello"
    yield 
    puts "i said hello"
end

say_hello do
    puts "i am inside of the say_hello block"
end

def show_numbers(number=10)
    i=0
    while i < 10
        yield i
        i += 1
        end
    end

show_numbers do |number|
    puts "the current number is #{number}"
    number = number * 2
    puts "the current number multiplication is #{number}"
end


def get_name(&block)
    print "Enter your name: "
    name = gets.chomp
    yield name
    puts "It was nice to meet you, #{name}"
end

get_name do |name|
    puts "in the block #{name}"
    name = name.upcase
    puts "your name uppercased is #{name}"
    end