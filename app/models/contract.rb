class Contract < ApplicationRecord
  validates :name, presence: true
  validates :week_start_time, presence: true
  validates :week_end_time, presence: true
  validates :weekend_start_time, presence: true
  validates :weekend_end_time, presence: true
end
