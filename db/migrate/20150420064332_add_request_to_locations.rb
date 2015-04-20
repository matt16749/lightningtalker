class AddRequestToLocations < ActiveRecord::Migration
  def change
    remove_column :requests, :location_id
    add_reference :locations, :request, index: true
  end
end
