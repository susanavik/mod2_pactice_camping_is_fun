class CampersController < ApplicationController
  def index
    @campers = Camper.all
  end

  def new
    @camper = Camper.new
  end

  def show
    @camper = Camper.find(params[:id])

    render :show
  end

  def create
    @camper = Camper.create(camper_params)

    if @camper.valid?
      redirect_to camper_path(@camper.id)
    else
      flash[:errors] = @camper.errors.full_messages
      redirect_to new_camper_path
    end
  end

  private

  def camper_params
    params.permit(:name, :age)
  end

end
