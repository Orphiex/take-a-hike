class CreateHikesAndTrails < ActiveRecord::Migration
  def change
    create_table :hikes_trails do |t|
      t.belongs_to :hike, index: true
      t.belongs_to :trail, index: true
    end
  end
end
