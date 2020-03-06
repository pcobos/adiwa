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
    @booking.total_price = @session.ceremony.total_price

    if @booking.save
      redirect_to @session.ceremony, notice: "Booked succesfully."
    else
      render :new
    end
  end

  private

  def booking_params
  end
end
