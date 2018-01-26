class ActivityInstance < ApplicationRecord
  belongs_to :activity_types, optional: true
  validates :activity_id, presence:true
  validates :amount, presence:true
  validates :date, presence:true
end
