require "tempfile"

t = Tempfile.new("aaa")
p t.path   
# => "/tmp/xxx/aaa20230129-12486-e1nihm"

t = Tempfile.new("../../aaa?#aa")
p t.path   
# => "/tmp/xxx/....aaaaa20230129-12486-p2d7h5"

t = Tempfile.new(['../', '..a/a'])
p t.path                            
#=> "/tmp/xxx/..20230129-12486-8mnuva..aa"

t = Tempfile.new(['aaa', "..\0a\\a"])
p t.path                  
#=> "/tmp/xxx/aaa20230129-12486-bk8qpv..aa"

# t = Tempfile.new([['t'], '.xml'])
# => unexpected prefix: ["t"] (ArgumentError)
