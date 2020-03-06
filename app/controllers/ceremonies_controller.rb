class CeremoniesController < ApplicationController

  def index
    @ceremonies = Ceremony.all

    if params[:query].present?


      sql_query = "location ILIKE :query OR name ILIKE :query"
      @ceremonies = Ceremony.geocoded.where(sql_query, query: "%#{params[:query]}%")

    else
      @ceremonies = Ceremony.geocoded
    end

    @markers = @ceremonies.map do |ceremony|
      {
        lat: ceremony.latitude,
        lng: ceremony.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { ceremony: ceremony }),
      }
    end
    # puts @markers.inspect
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
    @user = current_user
    @ceremony.user = @user
    if @ceremony.save
      redirect_to new_ceremony_session_path(@ceremony)
    else
      render :new
    end
  end

  def own_ceremonies
    #@ceremonies = current_user.ceremonies
    @ceremonies = Ceremony.where(user: current_user)
  end

  private

  def ceremony_params
    params.require(:ceremony).permit(:name, :location, :duration, :total_price, :description, :photo)
  end
end
