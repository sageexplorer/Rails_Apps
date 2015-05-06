class CarController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @cars = Car.all

  end


  def new

  end

  def add
    @car = Car.new(car_params)
    @car.save
    redirect_to '/thanks'
  end

  def thanks

  end


# Never trust parameters from the scary internet, only allow the white list through.

  private
  def car_params
    params.permit(:make, :model, :color)

  end
end

