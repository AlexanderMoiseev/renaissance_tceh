class CreateUserCars < ActiveRecord::Migration
  def change
    create_table :user_cars do |t|
      t.references :user, index: true, foreign_key: true
      t.references :car, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
