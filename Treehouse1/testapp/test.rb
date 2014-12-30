def namer
  puts "name?"
  name=gets.chomp
  puts "#{name.length} is length"
  if name.length>25
    puts "Greater than 25"
  end
end
namer()