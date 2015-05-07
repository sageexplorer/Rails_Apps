Rails.application.routes.draw do

  get '/' => "remind#index"

  post '/add' => "remind#add"

  get '/thanks' => "remind#thanks"


  get '/message' => 'remind#message'


  get '/today' => 'remind#today'

end
