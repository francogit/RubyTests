Struct.new("Franquito", :name, :location)

franquito = Struct::Franquito.new
franquito.name = "Franco"
franquito.location = "La Plata"

puts franquito.inspect