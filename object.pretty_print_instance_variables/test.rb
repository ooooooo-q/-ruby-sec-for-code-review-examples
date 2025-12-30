# https://product.st.inc/entry/2025/12/25/134932 より

class LoginInfo1
  def initialize(user)
    @user = user
    @password = "secret"
  end
  
end

class LoginInfo2
  def initialize(user)
    @user = user
    @password = "secret"
  end
  
  def pretty_print_instance_variables = [:@user]

end

class LoginInfo3
  def initialize(user)
    @user = user
    @password = "secret"
  end
  
  def pretty_print_instance_variables = [:a] + [:@aa]

end

class LoginInfo4
  def initialize(user)
    @user = user
    @password = "secret"
  end
  
  def pretty_print_instance_variables = [@user] * 10

end

class LoginInfo5
  def initialize(user)
    @user = user
    @password = "secret"
  end
  
  private def pretty_print_instance_variables = [:@user]

end

pp LoginInfo1.new("LoginInfo1")
pp LoginInfo2.new("LoginInfo2")
# pp LoginInfo3.new("LoginInfo3") # => undefined local variable or method 'a' for an instance of LoginInfo3 (NameError)
pp LoginInfo4.new("LoginInfo4")
pp LoginInfo5.new("LoginInfo5")
