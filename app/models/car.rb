class Car < ActiveRecord::Base
  has_many :user_cars, dependent: :destroy
  has_many :users, through: :user_cars

end
