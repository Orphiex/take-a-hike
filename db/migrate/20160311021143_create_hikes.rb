class CreateHikes < ActiveRecord::Migration
  def change
    create_table :hikes do |t|
      t.string :hike_name
      t.date :date
      t.time :start_time
      t.time :end_time

      t.text :meet_instructions
      t.string :start_point
      t.string :end_point

      t.float :hike_distance
      t.time :hike_time

      t.timestamps null: false
    end
  end
end
