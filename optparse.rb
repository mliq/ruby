require 'ostruct'
require 'optparse'
require 'open-uri'

class MyParser
  def self.parse(args)
    options = OpenStruct.new #Unlike Structs, don't need to define their attributes when you create them
    opts = OptionParser.new do |opts|
      opts.banner = "Usage: url" #prints when instructions are wrong

      opts.on('-u', '--url URL', 'Fetches the given url') do |url|
        options.url = url
      end
    end

    begin
      opts.parse!(args)
    rescue Exception => e
      puts "Exception encountered: #{e}"
      puts opts
      exit 1 
    end

    options
  end
end

options = MyParser.parse(ARGV) # Ruby command line arguments are assigned to ARGV constant
puts options.inspect


