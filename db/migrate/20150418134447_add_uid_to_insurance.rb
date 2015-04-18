class AddUidToInsurance < ActiveRecord::Migration
  def change
    add_column :insurances, :uin, :string
  end
end
