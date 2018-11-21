class Application
  def call(env)
    resp = Rack::Response.new

    t = Time.new
    hour = t.hour

    if hour < 12
      resp.write "Morning"
    else
      resp.write "Afternoon"
    end
  end
end
