# from https://dev.to/jagracey/hacking-github-s-auth-with-unicode-s-turkish-dotless-i-460n

puts 'ß'.downcase
# => 'ß'
puts 'ß'.downcase === 'SS'.downcase 
# => false

puts 'John@Gıthub.com'.downcase === 'John@Github.com'.downcase
# => false

puts 'ı'.downcase
# => ı
puts 'ı'.downcase(:ascii)
# => ı
puts 'ı'.downcase(:turkic)
# => ı
puts 'ı'.downcase(:lithuanian)
# => ı
puts 'ı'.downcase(:fold)
# => ı

puts "İ".downcase
# => i̇

puts "İ".downcase(:turkic)
# => ı̇

puts "İ".downcase(:lithuanian)
# => i̇