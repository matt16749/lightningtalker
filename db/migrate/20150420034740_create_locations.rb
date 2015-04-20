class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :locations, :users
  end
end
