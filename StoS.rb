h = {"dog"=>"puppy", "cat"=>"kitty", "goat"=>"kitty"}
g = {}
h.each do |key,value|
	# puts "#{key} #{value}"
	# h.delete[key]
	key=key.gsub(/\s+/,"_").downcase.to_sym
	g[key] = value
end
puts h
puts g
