Rails.application.routes.draw do
  
get '/index' => "car#index"


get '/new' => "car#new"

post '/add' =>'car#add'


get 'thanks' => "car#thanks"

end
