class AddUserAndCarToInsurance < ActiveRecord::Migration
  def change
    add_reference :insurances, :user
    add_reference :insurances, :car
  end
end
