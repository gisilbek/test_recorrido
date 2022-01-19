# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Contract, type: :model do
  it { should have_many :contract }

  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:week_start_time) }
  it { should validate_presence_of(:week_end_time) }
  it { should validate_presence_of(:weekend_start_time) }
  it { should validate_presence_of(:weekend_end_time) }

#  it { should accepts_nested_attributes_for :events, allow_destroy: true}
end
