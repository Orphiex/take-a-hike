class AddTimeToHikes < ActiveRecord::Migration
  def change
    add_column :hikes, :hike_time, :float
  end
end
