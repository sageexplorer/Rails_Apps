class ZenController < ApplicationController



  def quote
    @quote = HTTParty.get("https://api.github.com/zen")

  end











end