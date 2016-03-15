class AddMoreFieldsToTrails < ActiveRecord::Migration
  def change
    change_column :trails, :difficulty, :integer
    add_column :trails, :d_length, :integer
    add_column :trails, :d_time, :integer
    add_column :trails, :d_gradient, :integer
    add_column :trails, :d_surface, :integer
  end
end
