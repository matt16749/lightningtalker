class AddIsInstructorToUser < ActiveRecord::Migration
  def change
    add_column :users, :isinstructor, :boolean
  end
end
