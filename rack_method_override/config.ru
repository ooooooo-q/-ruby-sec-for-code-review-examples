class Server
  def call(env)
    puts env["REQUEST_METHOD"]
    puts env["rack.methodoverride.original_method"]
    [200, {}, []]
  end
end

use Rack::MethodOverride
run Server.new