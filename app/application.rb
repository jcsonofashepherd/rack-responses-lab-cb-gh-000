class Application
  def call(env)
    resp = Rack::response.new

    hour = Time.hour

    if hour < 12
      resp.write "Morning"
    else
      resp.write "Afternoon"
    end
  end
end