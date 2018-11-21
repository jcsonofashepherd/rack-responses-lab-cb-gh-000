class Application
  def call(env)
    resp = Rack::Response.new

    t = Time.now
    resp.write "#{t}"
    hour = t.hour

    if hour < 12
      resp.write "Morning"
    else
      resp.write "Afternoon"
    end
  end
end
