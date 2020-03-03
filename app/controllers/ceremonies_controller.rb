class CeremoniesController < ApplicationController

  def index
    @ceremonies = Ceremony.all
    end

  def show
    @ceremony = Ceremony.find(params[:id])
  end

  def new
  end

  def create
  end
end

