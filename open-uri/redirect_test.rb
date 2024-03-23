require 'open-uri'

# URI.open("http://0.0.0.0:9292")
# => 無限リダイレクトする

URI.open("http://0.0.0.0:9292", max_redirects: 2) 
# =>  Too many redirects (OpenURI::TooManyRedirects)
