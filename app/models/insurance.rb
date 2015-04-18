class Insurance < ActiveRecord::Base
  has_many :user_insurances, dependent: :destroy
  has_many :users, through: :user_insurances
  belongs_to :car
end
