Rails.application.routes.draw do

  get '/' => 'home#login'



  post '/authenticate' =>'home#authenticate'


  get '/mainframe' => 'home#mainframe'




end
