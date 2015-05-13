class DogController < ApplicationController


  def index
    @dog = Dog.all
  end


  def new
    @dog = Dog.new
  end


  def show
    @dog = Dog.find(params[:id])
  end

  def create
    @dog = Dog.new(dog_params)
    if @dog.save
      redirect_to '/index'
    else
      render :new
    end
  end

  private
  def dog_params
    params.require(:dog).permit(:name, :breed, :color, :size, :age, :dog_url)
  end


end