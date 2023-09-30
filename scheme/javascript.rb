require 'uri'

uri = URI.parse('javascrpt:aaa')
puts uri
# => javascrpt:aaa

puts uri.host
# => 

uri =  URI.parse('javascrpt://example.com/path#?')
puts uri.host
# => example.com

require 'open-uri'

# uri.read
# =>  undefined method `read' for #<URI::Generic javascrpt:aaa> (NoMethodError)