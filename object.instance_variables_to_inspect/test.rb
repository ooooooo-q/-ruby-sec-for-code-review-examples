# https://product.st.inc/entry/2025/12/25/134932 より

class LoginInfo
  def initialize(user)
    @user = user
    @password = "secret"
  end
  
  # 指定に余分な物があっても問題ない
  # 指定に重複があっても問題ない
  private def instance_variables_to_inspect = instance_variables - [:@password] + [:a] + [:@aa] + [@user] * 10000

end

p LoginInfo.new("xx")
pp LoginInfo.new("xx")
puts LoginInfo.new("xx")
print LoginInfo.new("xx")
