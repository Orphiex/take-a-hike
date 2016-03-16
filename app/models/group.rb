class Group < ActiveRecord::Base
  belongs_to :hike
  belongs_to :hiker
end
