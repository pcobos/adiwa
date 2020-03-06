class SessionsController < ApplicationController
  def new
    @ceremony = Ceremony.find(params[:ceremony_id])
    @session = Session.new
  end

  def create
    @session = Session.new(session_params)
    # we need `ceremony_id` to associate session with corresponding restaurant
    @ceremony = Ceremony.find(params[:ceremony_id])
    @session.ceremony = @ceremony
    @session.save
    redirect_to ceremony_path(@ceremony)
  end

  private

  def session_params
    params.require(:session).permit(:start_at)
  end
end
