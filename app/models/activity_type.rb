class ActivityType < ApplicationRecord
  has_many :activity_instances
  validates :name, presence:true
  validates :goalperday, presence:true
  validates :measure, presence:true
end
