Rails.application.routes.draw do

  get '/' =>"dog#index"

  get '/index' => "dog#index"

  get 'new' =>"dog#new"

  post '/new' => "dog#create"


  get '/index/:id'  =>'dog#show'

end
