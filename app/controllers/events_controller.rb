class EventsController < ApplicationController
  def create
    car = Car.find params[:car_id]
    user = current_user
    Event.create! user: user, car: car, message: car_params[:message]
    redirect_to car_path(car)
  end

  private 
  def car_params
    params.require(:event).permit [:message]
  end
end
