class HomeController < ApplicationController

  skip_before_action :verify_authenticity_token

  def login

  end


  def authenticate
    pass = params['password']
   if pass != '1234'
     redirect_to '/mainframe'
   end
  end

  def mainframe

  end


end


