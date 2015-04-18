class CreateUserInsurances < ActiveRecord::Migration
  def change
    create_table :user_insurances do |t|
      t.references :user, index: true, foreign_key: true
      t.references :insurance, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
