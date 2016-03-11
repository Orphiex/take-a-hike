class CreateTrails < ActiveRecord::Migration
  def change
    create_table :trails do |t|
      t.string :trail_name
      t.string :region
      t.text :descriptions

      t.string :point_1
      t.text :start_1

      t.string :point_2
      t.text :start_2

      t.float :max_height
      t.float :difficulty

      t.timestamps null: false
    end
  end
end
