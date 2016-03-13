class Hike < ActiveRecord::Base
  belongs_to :hiker

  has_and_belongs_to_many :trails

  has_many :hikers, through: :groups
end
