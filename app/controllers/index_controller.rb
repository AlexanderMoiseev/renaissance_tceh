class IndexController < ApplicationController
  def home
    if user_signed_in?
      redirect_to choose_room
    end
  end

  def choose_room
    if current_user.role.name == "user"
       insurances_path
      end
  end

end
