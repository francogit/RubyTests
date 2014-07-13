def say_hello(&block)
    puts "Hello, world"
    name = block.call
    puts "yo entered #{name} as your name"
end
say_hello {"franco"}

	
