
p "xxb\0bxbb".gsub(/x+(b+)/, 'X<<\1>>')  
# => X<<b>>\u0000bX<<bb>>"

p 'abcdefg'.gsub(/def/, "a\0a") 
# => "abca\u0000ag"

p 'abcdefg'.gsub("def", "a\0a")
# => "abca\u0000ag"

p 'abcdefg'.gsub("def", "\0a") 
# => "abc\u0000ag"

p "abc\0defg".gsub("def", "\0a")
# => "abc\u0000\u0000ag" 

