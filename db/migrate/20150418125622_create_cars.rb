class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :name
      t.references :user, index: true, foreign_key: true
      t.text :description

      t.timestamps null: false
    end
  end
end
