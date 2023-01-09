spawn("touch me")

spawn("ls $(touch me2)")

spawn(*["touch", "me3"])

spawn(*["ls", "/tmp"])

# `ls: $(touch me4): No such file or directory`としてエラーになる
spawn(*["ls", "$(touch me4)"])

# こちらは実行されてme5が作成される
spawn(*["$(touch me5)"])

# `No such file or directory - $(touch me6)`としてエラーになり、me6は作成されない
spawn(*["$(touch me6)", "."])
