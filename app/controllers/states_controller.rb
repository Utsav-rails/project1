class StatesController < ApplicationController

  before_action :authenticate_user!

  def index
    @search = State.search(params[:query])
    @states = @search.result
  end

  def new
    @state = State.new
  end

  def create
    @state = State.new(state_params)
    if @state.save
      redirect_to states_path
    else
      render :new
    end
  end

  def edit
    @state = State.find(params[:id])
  end

  def update
    @state = State.find(params[:id])
    @state.update(state_params)
    redirect_to states_path
  end

  def destroy
    @state = State.find(params[:id])
    @state.destroy
    redirect_to states_path
  end

  def show
    @state = State.find(params[:id])
  end

  private
  def state_params
    params.require(:state).permit(:name, :taluka_id, :taluka_name)
  end

  # Parameters: {"authenticity_token"=>"[FILTERED]", "state"=>{"name"=>"Uttar-Pradesh "}, "commit"=>"Create State"}

end
