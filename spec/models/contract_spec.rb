require 'rails_helper'

RSpec.describe Contract, type: :model do
  
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:week_start_time) }
  it { should validate_presence_of(:week_end_time) }
  it { should validate_presence_of(:weekend_start_time) }
  it { should validate_presence_of(:weekend_end_time) }


end
