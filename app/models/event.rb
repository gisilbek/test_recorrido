# frozen_string_literal: true

class Event < ApplicationRecord
  belongs_to :contract
  validates :name, presence: true
  validates :date, presence: true
  validates :personal, presence: true
  validates :contract, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true

  enum personal: { Ernesto: 1, Barbara: 2, Benjamin: 3 }
end
