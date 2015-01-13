require('sinatra')
require('sinatra/reloader')
also_reload("lib/**/*.rb")
require("./lib/locations")

get("/") do
  @locations = Location.all()
  erb(:index)
end

post("/locations") do
  place = params.fetch("place")
  location = Location.new(place)
  location.save()
  erb(:success)
end
