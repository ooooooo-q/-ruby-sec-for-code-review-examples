require 'pathname'

# ruby2.5以前では`read`ファイルが生成される
# ruby2.6以降では`No such file or directory`のエラー
Pathname("|touch read").read