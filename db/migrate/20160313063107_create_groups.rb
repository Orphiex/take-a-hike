class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.belongs_to :hiker, index: true
      t.belongs_to :hike, index: true
      t.string :group_name
      t.timestamps null: false
    end
  end
end
