Island = Struct.new(:name, :location) do
    def to_s
       "<#{name}, #{location}>"
    end
    
    def travel
        puts "Going to #{location} location..."
    end
end

franquito = Island.new("Franco", "Mar del plapla")

puts franquito    
    
franquito.travel