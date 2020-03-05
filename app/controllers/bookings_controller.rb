class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @session = Session.find(params[:session_id])
  end

  def create
    @booking = Booking.new
    @session = Session.find(params[:session_id])

    @booking.session = @session
    @booking.user = current_user

    @booking.save
    redirect_to
  end

  private

  def booking_params
  end
end
