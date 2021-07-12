class AnimalsController < ApplicationController
  before_action :authenticate_user!
  def index
    @search = Animal.search(params[:query])
    @animals = @search.result
  end

  def new
    @animal = Animal.new
  end

  def create
    @animal = Animal.new(animal_params)
    if @animal.save
      redirect_to animals_path
    else
      render :new
    end
  end

  def edit
    @animal = Animal.find(params[:id])
  end

  def update
    @animal = Animal.find(params[:id])
    @animal.update(animal_params)
    redirect_to animals_path
  end

  def destroy
    @animal = Animal.find(params[:id])
    @animal.destroy
    redirect_to animals_path
  end

  def show
    @animal = Animal.find(params[:id])
  end

  private
  def animal_params
    params.require(:animal).permit(:name, :image_url, multiple: true)
  end
  
end
