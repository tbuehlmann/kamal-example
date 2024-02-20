require "sinatra/base"

class App < Sinatra::Base
  get "/" do
    "Hello World!"
  end

  get "/up" do
    ""
  end
end

run App
