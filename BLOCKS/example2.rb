def header(&block)
	puts "this is our header"
	block.call
rescue
	puts "This is where we would rescue an error"
ensure
	puts "this is our footer"
end
header do 
	puts "this is the body of the block"

raise "this is an error"
end