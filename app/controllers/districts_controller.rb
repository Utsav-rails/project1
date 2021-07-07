class DistrictsController < ApplicationController
  def index
    @districts = District.all
  end

  def new
    @district = District.new
  end

  def create
    @district = District.new(district_params)
    if @district.save
      redirect_to districts_path
    else
      render :new
    end
  end

  def edit
    @district = District.find(params[:id])
  end

  def update
    @district = District.find(params[:id])
    @district.update(district_params)
    redirect_to districts_path
  end

  def destroy
    @district = District.find(params[:id])
    @district.destroy
    redirect_to districts_path
  end

  def show
    @district = District.find(params[:id])
  end

  private
  def district_params
    params.require(:district).permit(:name, :state_id)
  end

end
