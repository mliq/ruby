require 'uri'
require 'open-uri'

url = URI.parse('http://teamtreehouse.com')
puts url.hostname #returns domain name
puts url.path # returns rest of URL /...
puts URI.split('http://teamtreehouse.com').inspect #gives us back a bunch of stuff in an array: scheme, user info, host, port, registry, path, and more
google = open('http://google.com').read # opened like a file, we get the HTML of a page.
puts google #print out the HTML.