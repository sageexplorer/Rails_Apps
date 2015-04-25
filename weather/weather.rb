require 'sinatra'
require 'httparty'


get '/' do
@zipcode = params["zipcode"]
stories = HTTParty.get(url)
res= stories.parsed_response
erb :weather
end


post '/zip' do
  @zipcode = params["zipcode"]
  zip_url = "http://api.zippopotam.us/us/#{@zipcode}"
  mash_response = HTTParty.get(zip_url)
  parsed= mash_response.parsed_response
  long= parsed["places"][0]["longitude"]
  lat= parsed["places"][0]["latitude"]
  get_weather="https://api.forecast.io/forecast/6f9823c284c4c9c324ed3d13115644f5/#{lat},#{long}"
  stories = HTTParty.get(get_weather)
  @res= stories.parsed_response["currently"]["temperature"]
  @condition= stories.parsed_response["currently"]["summary"]
  if @res.to_f < 65.00
    @clothes = "pants"
  else
    @clothes = "shorts"
  end
  erb :wear
end