class CeremoniesController < ApplicationController

  def index
    @ceremonies = Ceremony.all
    end

  def show
  end

  def new
  end

  def create
  end
end

