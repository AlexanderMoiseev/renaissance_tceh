class CarsController < ApplicationController
  def index
  end

  def show
  @car = Car.find params[:id]
  end

  def edit
  end

  def update
  end
end
