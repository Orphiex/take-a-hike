class Hike < ActiveRecord::Base
  has_and_belongs_to_many :trails

  has_many :groups
  has_many :hikers, through: :groups
end
