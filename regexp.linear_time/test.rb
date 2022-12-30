puts Regexp.linear_time?("aa")

puts Regexp.linear_time?(/(a|a)*\1/)

puts Regexp.linear_time?(/^a()\1$/)