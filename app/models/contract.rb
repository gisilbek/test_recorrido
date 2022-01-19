# frozen_string_literal: true

class Contract < ApplicationRecord
  has_many :events

  validates :name, presence: true
  validates :week_start_time, presence: true
  validates :week_end_time, presence: true
  validates :weekend_start_time, presence: true
  validates :weekend_end_time, presence: true

  #accepts_nested_attributes_for :events, allow_destroy: true
end
