class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :subject
      t.text :description
      t.references :location, index: true
      t.integer :student_id
      t.integer :instructor_id

      t.timestamps null: false
    end
    add_foreign_key :requests, :locations
  end
end
