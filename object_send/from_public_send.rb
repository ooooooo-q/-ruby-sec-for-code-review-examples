
# NoMethodError
# "aaa".public_send("`", "touch from_public")

"aaa".public_send(:send, "`", "touch from_public")