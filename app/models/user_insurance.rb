class UserInsurance < ActiveRecord::Base
  belongs_to :user
  belongs_to :insurance
end
