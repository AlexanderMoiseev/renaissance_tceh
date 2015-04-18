class AddUidToCar < ActiveRecord::Migration
  def change
    add_column :cars, :uin, :string
    add_index :cars, :uin, unique: true
  end
end
