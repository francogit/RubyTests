require 'erb'

genio = {
    name: 'franco',
    location: 'la plata'
    }

template = <<-TEMPLATE
From the desk of <%= genio[:name] %>
------------------------------------
Welcome to <%= genio[:location] %>.

we hope you enjoy your stay.
------------------------------------
<% genio.keys.each do |key| %>
    key: <%= key%>
<% end %>
TEMPLATE

erb = ERB.new(template)
puts erb.result