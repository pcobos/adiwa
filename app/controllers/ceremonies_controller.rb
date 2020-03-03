class CeremoniesController < ApplicationController

  def index
    @ceremonies = Ceremony.all
    end

  def show
    @ceremony = Ceremony.find(params[:id])
  end

  def new
    @ceremony = Ceremony.new
    @user = current_user
  end

  def create
    @ceremony = Ceremony.new(ceremony_params)
    @user = User.new(params[:user_id])
    @ceremony.user = @user
    if @ceremony.save
      redirect_to ceremonies_path
    else
      render :new
    end
  end

  private

  def ceremony_params
    params.require(:ceremony).permit(:name, :location, :duration, :total_price, :description)
  end
end
