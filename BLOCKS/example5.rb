array = [1, 2, 3, 4, 5]

puts array.inspect
array.each do |number|
    puts "the number is #{number}"
    number *= 2
end

puts array.inspect