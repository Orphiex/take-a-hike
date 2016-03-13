class AddFieldsToTrails < ActiveRecord::Migration
  def change
    rename_column :trails, :start_1, :pt1_info
    rename_column :trails, :start_2, :pt2_info
    rename_column :trails, :point_1, :pt1_name
    rename_column :trails, :point_2, :pt2_name
    add_column :trails, :pt1_transp, :text
    add_column :trails, :pt2_transp, :text
    add_column :trails, :pt1_photo, :string
    add_column :trails, :pt2_photo, :string
    add_column :trails, :map_link, :string
    add_column :trails, :distance, :float
    add_column :trails, :est_time, :float
  end
end
