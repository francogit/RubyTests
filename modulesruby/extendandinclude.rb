class Hello
    def initialize(name)
        @name = name
    end
end

module SayHello
    def say_hello
        puts "Hello #{@name}"
    end
end

hello = Hello.new('Franco')
hello.extend SayHello

hello.say_hello

module Saygoodbye
    def say_something
        puts "Something"
    end
    def say_goodbye
        puts "Bye-bye #{@name}"
    end
end

class Bye
    extend Saygoodbye
    include Saygoodbye
    def initialize(name)
        @name = name
    end
end

bye = Bye.new('Franco')
bye.say_goodbye

Bye.say_something