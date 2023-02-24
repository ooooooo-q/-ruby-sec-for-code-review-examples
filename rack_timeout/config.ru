require "rack-timeout"


class Redos
  def initialize(app, options = {})
    @app = app
  end

  def call(env)
    ("\t" * 100000 +"\ta,a\t").split(/\s*,\s*/)
    @app.call(env)
  end
end

class Server
  def call(env)
    [200, {}, []]
  end
end

# use Redos
use Rack::Timeout, service_timeout: 5
use Redos
run Server.new