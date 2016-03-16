class AddColumnToHike < ActiveRecord::Migration
  def change
    add_column :hikes, :completed, :boolean
  end
end
