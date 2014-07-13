File.open("./mi_archivo.txt", "a+") do |file|
   file.puts "Que onda papu" 
end

File.open("./mi_archivo.txt", "a+") do |file|
   file.puts "Hello papu" 
end

puts IO.readlines('mi_archivo.txt')