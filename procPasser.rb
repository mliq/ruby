# Try writing a class that takes a method which requires a proc or lambda as input. Save the proc or lambda internally and then call it from another method.

class ProcPasser
  def initialize(&block)
    @my_proc=block
  end


 #yield self if block_given?
  #end
  def callProc
    my_proc
  end
end

# paper = Paper.new do |p|
#   p.title "My awesome paper"
#   p.heading "This is my paper"
#   p.body "The contents of my paper"
# end

test = ProcPasser.new do
  puts "1"
  puts "2"
end

test.callProc