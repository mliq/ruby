require 'pismo'
require 'erb'

url = 'http://stackoverflow.com/questions/8699459/get-title-content-via-link-in-rails'
doc = Pismo::Document.new(url)

#puts doc.title

template = <<-TEMPLATE

URL: 
<%=url%> 
----------------------------------------
TITLE:
"<%=doc.title%>"
----------------------------------------
TEMPLATE
# Note that = equal sign not used for what you don't want printed.
erb = ERB.new(template)
puts erb.result