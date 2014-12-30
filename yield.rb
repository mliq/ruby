def say_hello(&block)
  puts "Hello, world"
  block.call
  block.call
  puts "I said, hello!"
end

say_hello do
  puts "I'm the block"
end