class ChangeTimeInHikes < ActiveRecord::Migration

  def self.up
    remove_column :hikes, :hike_time
  end

end
